% This function computes the necessary quantities for the fast mesh 
% perceptual distance (FMPD) evaluation.
% cf. our paper 'A fast roughness-based approach to the assessment of 3D 
% mesh visual quality', Computers & Graphics 2012
% Authors: Kai Wang, Fakhri Torkhani, and Annick Montanvert
% GIPSA-lab, AGPIG team, CNRS UMR5216, Grenoble, France
% Email: kai.wang@gipsa-lab.grenoble-inp.fr
% Note: We used in our code some functions from the toolboxes of
% Gabriel Payre (cf. http://gpeyre.github.io/numerical-tours/)
% Thanks to Gabriel for sharing his code.
% Usage: [cgauss, laplacian, mass] = compute_perception_quantities(vertices,faces)
% cgauss: Gaussian curvature
% laplacian: Laplacian matrix
% mass: mass matrix
% vertices: the vertex coordinates
% faces: a matrix of the indices of the facet component vertices

function [cgauss, laplacian, mass] = compute_perception_quantities(vertices,faces)

% number of vertices
n = size(vertices,2);
% number of facets
m = size(faces,2);

% to store the angles sum on vertices
sum_angles = zeros(n,1);
% to store the facet areas
area = zeros(m,1);
% for numerical computation stability
epsilon = 1e-10;

for i=1:3
   i1 = mod(i-1,3)+1;
   i2 = mod(i  ,3)+1;
   i3 = mod(i+1,3)+1;
   pp = vertices(:,faces(i2,:)) - vertices(:,faces(i1,:));
   qq = vertices(:,faces(i3,:)) - vertices(:,faces(i1,:));
   % normalize the vectors
   pp_length = sqrt(sum(pp.^2,1));
   qq_length = sqrt(sum(qq.^2,1));
   Ipp_zero = find(pp_length<epsilon);
   pp_length(Ipp_zero) = 1;
   Iqq_zero = find(qq_length<epsilon);
   qq_length(Iqq_zero) = 1;
   pp_nor = pp ./ repmat( pp_length, [3 1] );
   qq_nor = qq ./ repmat( qq_length, [3 1] );
   % compute angles and clamped cotans
   cos_ang = sum(pp_nor.*qq_nor,1);
   cos_ang = clamp(cos_ang,-1,1);
   ang = acos( cos_ang );
   eval(['ctan_' num2str(i) ' = cot(ang) / 2.0;']);
   % clamp the cotan value so as to avoid numerical unstability
   eval(['ctan_' num2str(i) ' = clamp(ctan_' num2str(i) ', 0.001,1000);']);
   % store the right indices for the computation of laplacian matrix
   eval(['ii_lap_' num2str(i) ' = faces(i2,:);']);
   eval(['jj_lap_' num2str(i) ' = faces(i3,:);']);
   
   % accumulate the angles on vertices
   for j=1:m
       indextemp = faces(i1,j);
       sum_angles(indextemp,1) = sum_angles(indextemp,1) + ang(1,j);
   end
   
   % compute the facet areas
   if i==1
       rr = crossinline(pp',-qq');
       rr = rr';
       area = sqrt( sum(rr.^2,1) ) / 2.0;
   end
end

% Laplacian matrix (stiffness matrix)
ii_lap = [ii_lap_1 jj_lap_1 ii_lap_2 jj_lap_2 ii_lap_3 jj_lap_3];
jj_lap = [jj_lap_1 ii_lap_1 jj_lap_2 ii_lap_2 jj_lap_3 ii_lap_3];
ss_lap = [ctan_1 ctan_1 ctan_2 ctan_2 ctan_3 ctan_3];
laplacian = sparse(ii_lap,jj_lap,ss_lap,n,n);
diag_laplacian = full( sum(laplacian,1) );
Diag_laplacian = spdiags(diag_laplacian(:),0,n,n);
laplacian = Diag_laplacian - laplacian;

% lumped mass matrix
ii_mass = [faces(1,:) faces(2,:) faces(3,:)];
jj_mass = [faces(1,:) faces(2,:) faces(3,:)];
area = area / 3.0;
ss_mass = [area area area];
mass = sparse(ii_mass,jj_mass,ss_mass,n,n);

% facet-edge adjacency matrix
ii_adja = [faces(1,:) faces(2,:) faces(3,:)];
jj_adja = [faces(2,:) faces(3,:) faces(1,:)];
ss_adja = [1:m 1:m 1:m];
adja = sparse(ii_adja,jj_adja,ss_adja,n,n);

% add missing points
I_adja = find( adja'~=0 );
I_adja = I_adja( adja(I_adja)==0 ); 
adja(I_adja) = -1;

% find the boundary
[I,J,V] = find(adja);
I = I(V==-1);
J = J(V==-1);
flag_boundary = false(n,1);
flag_boundary(I,1) = true;
flag_boundary(J,1) = true;

% set different constant values (for Gaussian curvature computation) for
% boundary vertices and non-boundary vertices
constants = repmat(2*pi,n,1);
I_boundary = find(flag_boundary==true);
constants(I_boundary) = repmat(pi,size(I_boundary));

% Gaussian curvature
cgauss = constants - sum_angles;

% inline cross product function, which is faster than the matlab routine
function z = crossinline(x,y)
% x and y are (m,3) dimensional
z = x;
z(:,1) = x(:,2).*y(:,3) - x(:,3).*y(:,2);
z(:,2) = x(:,3).*y(:,1) - x(:,1).*y(:,3);
z(:,3) = x(:,1).*y(:,2) - x(:,2).*y(:,1);

% This is the main function for the fast mesh perceptual distance (FMPD)
% computation. FMPD is a roughness-based mesh visual quality metric.
% cf. our paper 'A fast roughness-based approach to the assessment of 3D 
% mesh visual quality', Computers & Graphics 2012
% Authors: Kai Wang, Fakhri Torkhani, and Annick Montanvert
% GIPSA-lab, AGPIG team, CNRS UMR5216, Grenoble, France
% Email: kai.wang@gipsa-lab.grenoble-inp.fr
% Note: We used in our code some functions from the toolboxes of
% Gabriel Payre (cf. http://gpeyre.github.io/numerical-tours/)
% Thanks to Gabriel for sharing his code.
% Usage: distance = perceptual_distance(name_firstmesh,name_secondmesh)
% distance: Fast Mesh Perceptual Distance (FMPD, between 0 and 1)
% name_firstmesh: name of the first mesh (only support OFF format)
% name_secondmesh: name of the second mesh (only support OFF format)


%output modified
function [distance,global_roughness] = perceptual_distance(name_firstmesh,name_secondmesh)

mesh_first = strtrim(name_firstmesh);
mesh_second = strtrim(name_secondmesh);

% load the two meshes
clear options;
options.name = mesh_first;
[vertices_first,faces_first] = read_mesh(mesh_first);
clear options;
options.name = mesh_second;
[vertices_second,faces_second] = read_mesh(mesh_second);

% start counting processing time
starttime = tic;

% numbers of vertices of the two meshes
n_first = size(vertices_first,2);
n_second = size(vertices_second,2);

% compute the necessary quantites for the FMPD computation, including the
% Gaussian curvature, Laplacian matrix and mass matrix
[cgauss_first, laplacian_first, mass_first] = compute_perception_quantities(vertices_first,faces_first);
[cgauss_second, laplacian_second, mass_second] = compute_perception_quantities(vertices_second,faces_second);

% total area
surface_first = sum(spdiags(mass_first));
surface_second = sum(spdiags(mass_second));

L_first = laplacian_first;
L_second = laplacian_second;

L_first_diag = spdiags(L_first,0);
L_second_diag = spdiags(L_second,0);

cgaussabs_first = abs(cgauss_first);
cgaussabs_second = abs(cgauss_second);

% compute the roughness as the Laplacian of Gaussian curvature
cgauss_rough_first = cgaussabs_first' * L_first;
cgauss_rough_first = cgauss_rough_first' ./ L_first_diag;
cgauss_rough_second = cgaussabs_second' * L_second;
cgauss_rough_second = cgauss_rough_second' ./ L_second_diag;
cgauss_rough_first = abs(cgauss_rough_first);
cgauss_rough_second = abs(cgauss_rough_second);

% average roughness
cgauss_rough_mean_first = cgauss_rough_first' * spdiags(mass_first,0);
cgauss_rough_mean_first = cgauss_rough_mean_first / surface_first;
cgauss_rough_mean_second = cgauss_rough_second' * spdiags(mass_second,0);
cgauss_rough_mean_second = cgauss_rough_mean_second / surface_second;

% power model for modulating the roughness
minrough = 0.0005;
maxrough1 = 0.20;
maxrough2 = 5.0 * min(cgauss_rough_mean_first,cgauss_rough_mean_second);
maxrough = max(maxrough1,maxrough2);
% first we clamp the roughness
cgauss_rough_first = clamp(cgauss_rough_first,minrough,maxrough);
cgauss_rough_second = clamp(cgauss_rough_second,minrough,maxrough);
% then we modulate the roughness with the power model
a = 0.15;
epsilon = minrough;
cgauss_rough_first_final = (cgauss_rough_first).^a - (epsilon).^a;
cgauss_rough_second_final = (cgauss_rough_second).^a - (epsilon).^a;

% second modulation: further decrease the roughness that is larger than
% the average roughness by a scaling factor
threshold = min(cgauss_rough_mean_first,cgauss_rough_mean_second);
threshold = max(threshold,minrough);
turnpoint = (threshold).^a - (epsilon).^a;
b = 0.5;
for i=1:n_first
    if cgauss_rough_first_final(i,1)>turnpoint
        cgauss_rough_first_final(i,1) = (cgauss_rough_first_final(i,1)-turnpoint)*b + turnpoint;
    end
end
for i=1:n_second
    if cgauss_rough_second_final(i,1)>turnpoint
        cgauss_rough_second_final(i,1) = (cgauss_rough_second_final(i,1)-turnpoint)*b + turnpoint;
    end
end

% global roughness
sum_first = cgauss_rough_first_final' * spdiags(mass_first,0);
sum_first = sum_first / surface_first;
sum_second = cgauss_rough_second_final' * spdiags(mass_second,0);
sum_second = sum_second / surface_second;

% the scaling factor is just for bringing the distance into [0,1] interval
% MODIF
c = 1.0;
distance = c * abs(sum_first-sum_second);
if distance>1
    distance = 1;
end
global_roughness = sum_first;

% end of the processing time counting
elapsedtime = toc(starttime);
disp(strcat(['The processing time of FMPD is ' num2str(elapsedtime) ' seconds.']));

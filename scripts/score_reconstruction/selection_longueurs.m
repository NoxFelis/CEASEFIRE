function valeurs = selection_longueurs(model_path)
[mesh_v,mesh_f] = read_obj(model_path,'/');

figure('Position', [100, 100, 800, 600]);
set(gca, 'Units', 'pixels');

plot_mesh(mesh_v,mesh_f);
disp("veuillez cliquer sur deux points aux extrémités en longueur de l'arme puis appuyez sur ENTER")
[x_longueur,~] = ginput(2);

if size(x_longueur) ~= 0
    longueur = abs(x_longueur(1)-x_longueur(2));
    
    disp("veuillez cliquer sur deux points aux extrémités en longueur du canon puis appuyez sur ENTER")
    [x_canon,~] = ginput(2);
    canon = abs(x_canon(1)-x_canon(2));
    
    disp("veuillez cliquer sur deux points aux extrémités en hauteur et l'arme pui appuyez sur ENTER");
    [~,y_hauteur] = ginput(2);
    hauteur = abs(y_hauteur(1)-y_hauteur(2));

% camorbit(90,0,'data',[1 0 0]);
% disp("veuillez cliquer sur deux points aux extrémités en largeur et l'arme pui appuyez sur ENTER");
% [x_largeur,y_largeur] = getpts
% en attendant: selection automatique:
    largeur = max(mesh_v(3,:)) - min(mesh_v(3,:));
else
    longueur = 0;
    largeur = 0;
    hauteur = 0;
    canon = 0;
end

valeurs = [longueur, largeur, hauteur, canon];
end
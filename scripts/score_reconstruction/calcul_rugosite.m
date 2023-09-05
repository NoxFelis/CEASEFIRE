function [score_rugosite,distance] = calcul_rugosite(name_firstmesh)

[mesh_v,mesh_f] = read_obj(name_firstmesh,'/');
% il faut d'abord déformer le mesh pour avoir le 'secondmesh'
n = size(mesh_v,2);

gaussNoise=randn(n,3);
mesh_v = mesh_v';
mesh_vd = mesh_v + gaussNoise;
name_secondmesh = 'deformed';
writeObj(struct('faces',mesh_f','vertices',mesh_vd),name_secondmesh);

[distance,global_roughness] = perceptual_distance(name_firstmesh,strcat(name_secondmesh,'.obj'));

score_rugosite = global_roughness;
disp(score_rugosite);
end
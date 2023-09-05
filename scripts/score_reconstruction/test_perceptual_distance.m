% This is an example to show how to use the the function of the fast mesh
% perceptual distance (FMPD).
% cf. our paper 'A fast roughness-based approach to the assessment of 3D 
% mesh visual quality', Computers & Graphics 2012
% Authors: Kai Wang, Fakhri Torkhani, and Annick Montanvert
% GIPSA-lab, AGPIG team, CNRS UMR5216, Grenoble, France
% Email: kai.wang@gipsa-lab.grenoble-inp.fr
% Note: We used in our code some functions from the toolboxes of
% Gabriel Payre (cf. http://gpeyre.github.io/numerical-tours/)
% Thanks to Gabriel for sharing his code.

clear; close all;

% give the names of the two meshes to be compared
% currently only support OFF format
name_firstmesh = 'original';
name_secondmesh = 'deformed';

% evoke the FMPD function
distance = perceptual_distance(name_firstmesh,name_secondmesh)

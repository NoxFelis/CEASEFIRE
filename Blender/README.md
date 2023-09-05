# Blender
Note: ce Readme reprend les éléments du Readme principal
### Modèles 3D

Les modèles utilisés sont les suivants:
- [Pistol type Taurus](https://free3d.com/3d-model/pistol-tauros-503412.html)
- [Colt 45](https://free3d.com/3d-model/colt-45-31230.html)

Pour le modèle Taurus, il est possible que la texture ne fonctionne pas. Il est possible alors d'ajouter de la rugosité à la main.
#### Ajouter de la texture rugueuse
- Ouvrir la section 'Shader Editor' sur la texture choisie
- ajouter un noeud 'Bump' et relier la 'normal' de sortie à la 'normal' d'entrée du 'principled BSDF'
- ajouter un noeud 'Noise Texture'. Modifier le 'scale' à 1000. relier la sortie 'fac' à l'entrée 'height' de 'bump'
	- le scale peut être adapté pour l'échelle souhaitée
- ajouter un noeud 'mapping' et relier le 'vector' en sortie avec l'entrée 'vector' de 'noise texture'
- ajouter un noeud 'texture coordinate' et relier la sortie 'generated' à l'entrée 'vector' du noeud 'mapping'

Vous devriez obtenir ceci: ![texture_nodes](/divers_template/texture_nodes.png)
 
## Blender

On utilisera le plugin [ScanRig](https://www.ins2i.cnrs.fr/fr/les-decodeuses-du-numerique) sur le logiciel [Blender](https://www.blender.org) afin de faire des acquisitions des modèles en utilisant le mode **UV Sphere** et l'option **Beauty**.

La scène proposée est la suivante:
- L'arme centrée en (0,0,0)
- un plan sous l'arme avec une texture, celle utilisée est la couverture de la BD [Les décodeuses du numérique](https://www.ins2i.cnrs.fr/fr/les-decodeuses-du-numerique)
- Un cube largement plus grand (ici ~20 fois en scale) de teinte: (H:0.333,S:1,V:3.973,A:1)
- une lumière de type point et puissance 700W (nécessaire pour compenser le fait d'être à l'intérieur du cube)

La particularité de cette mise en scène est que l'on peut rendre le plan texturé invisible afin de créer les masques.

Pour pouvoir calibrer les caméras de Meshroom dans les bonnes positions par rapport à celles de Blender, il faudra récupérer la position des caméras utilisées par ScanRig. Pour cela on peut ajouter un script python. Il faudra sélectionner toutes les caméra avant de le lancer. (une copie se trouve à [position_cameras.py](/Blender/position_cameras.py) ).

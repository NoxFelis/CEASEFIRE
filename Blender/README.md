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

## Autres modèles
D'autres modèles sont évidemment disponibles sur internet, en voici une sélection gratuite:
### Pistolets
[Beretta](https://free3d.com/3d-model/beretta-pistol-459996.html)
[Glock 18C](https://free3d.com/3d-model/glock-18c-21450.html)
[Pistol Tauros](https://free3d.com/3d-model/pistol-tauros-503412.html)
[Colt 45](https://free3d.com/3d-model/colt-45-31230.html)
[Tanfoglio custom](https://www.cgtrader.com/free-3d-models/military/gun/tanfoglio-custom)
[G2 Combat Pistol](https://www.cgtrader.com/free-3d-models/military/gun/g2-combat-pistol)
[Glock 19 Semi Automatic Pistol 9mm](https://www.cgtrader.com/free-3d-models/military/gun/glock-19-semi-automatic-pistol-9mm)
[Springfield XD-MOD2 Tan](https://www.cgtrader.com/free-3d-models/military/gun/springfield-xd-mod2-tan)
[Colt 1851 Navy](https://www.cgtrader.com/free-3d-models/military/gun/colt-1851-navy-7a706f14-89dd-4bad-855f-47cb5e900cde)
[MAC 10 Submachine gun](https://www.cgtrader.com/free-3d-models/military/gun/mac-10-submachine-gun-92bb5464-ad47-4c2c-bb0c-1f185eab3801)
[Weapon pack 001](https://www.cgtrader.com/free-3d-models/military/gun/weapon-pack-001)

### Fusils
[Sniper Rifle KSR-29](https://free3d.com/3d-model/sniper-rifle-ksr-29-new-34178.html)
[AK-47](https://www.cgtrader.com/free-3d-models/military/gun/ak-47-assault-rifle-ffadbea9-ef36-43d6-80a9-a8ffba7ac21d)
[KSR-29](https://free3d.com/3d-model/ksr-29-sniper-rifle-44351.html)
[ak rifles](https://www.cgtrader.com/free-3d-models/military/gun/ak-103-42170499-df73-42d5-a23c-c67d95228e69)
[M4 assault rigle](https://www.cgtrader.com/free-3d-models/military/gun/m4-assault-rifle-0ca7e9f2-ece2-4476-acd5-f57ae732a7c7)
[SCANN Weapon Concept](https://www.cgtrader.com/free-3d-models/military/gun/scann-weapon-concept)
[SS2V5 Assault Rifle](https://www.cgtrader.com/free-3d-models/military/gun/ss2v5-assault-rifle)

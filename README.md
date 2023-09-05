# CEASEFIRE

## Base de données
### Images
Toutes les images faites sont fournies ici, mais pour des conditions optimales de test, il est recommandé d'utiliser les dossiers suivants:
- **medias/lefaucheux_4mm/fond_vert_3**
- **medias/lefaucheux_7mm/fond_vert_4**

ainsi que les vidéos suivantes:
- **medias/lefaucheux_4mm_videos/00003.MTS**
- **medias/lefaucheux_4mm_videos/00004.MTS**

Pour des essais complémentaires des photos de pokémon sont à disposition dans le dossier **éponyme**
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
## Scripts à disposition
#### Pour avoir les masques
Les masques sont récupérés à l'air du programme [chromakey](https://github.com/simogasp/chromakey)
Le fichier principal à lancer est 'processImage.cpp'

On peut suivre les étapes de build habituel et comme indiqué, le programme s'utilise de la manière suivante

	./processImage <image> [<background>]

L'image qui nous intéressera est celle qui est automatiquement nommée 'result.png'. C'est une image où le fond est transparent (au lieu de vert).

Il est préférable pour la suite de modifier le code afin de ranger l'image transparente dans un dossier à part où elle aura le même nom que l'image d'entrée.
Une fois cela fait le script [masks.sh](scripts/masks.sh) peut être utilisé pour créer les masques d'un dossier complet de photos plutôt qu'une par une. Pour son bon fonctionnement, nous demandons d'avoir un executable du programme 'processImage' dans le même dossier.
Le script s'appelle :

	./masks.sh -b <background> -p <folder>
#### Extraire des frames des vidéos
#### Récupérer les positions pour aligner
Le script pour récupérer les positions des caméras doit être intégré dans Blender. Il est mentionné plus haut [[README#Blender]]

Pour la suite, il faut d'abord finir l'étape 'StructureFromMotion'.  Dans le dossier de sortie on peut récupérer le fichier 'cameras.sfm'. 
Il est alors possible d'utiliser le script python 'knownposes.py' en entrant les arguments comme suit: 
	python3 knownposes.py \[fichier_poses.json] \[cameras.sfm] \[fichier_target.sfm]

Le fichier en sortie peut être utilisé alors dans le node 'SfmAlignment' qui se met entre les noeuds 'StructureFromMotion' et 'PrepareDenseScene' avec les paramètres suivants:
- **Input** : le 'SfmData' en sortie du noeud 'StructureFromMotion'
- **Reference** : le fichier que nous venons de créer
- **Alignment method** : 'from_camera_poseid'
- **Scale** : ✓
- **Rotation** : ✓
- **Translation** : ✓
- **SfmData File** à relier à l'entrée du 'PrepareDenseScene'
#### Estimation des critères
L'estimation des critères nécessite un fichier json en entrée de la forme suivante pour un ensemble de reconstructions [entryCriteres.json](divers_template/entryCriteres.json)

- les critères de tailles sont à 0 si l'on a pas l'information
- les autres informations sont à mettre à un string vide ("") si l'on a pas l'information qu'elle soit de référence ou de la reconstruction
- l'id pour chaque reconstruction est à définir au choix, le plus simple est de prendre le numéro du noeud 'StructureFromMotion' sur Meshroom

Une fois le fichier rempli, il peut être utilisé en entrée du script python [score_reconstruction.py](scripts/score_reconstruction/score_reconstruction.py)

Le script se lance ainsi:

	python3 score_reconstruction.py <fichier_entree> <fichier_sortie>

L'avantage de ce script est qu'il fonctionne par étape. La console précisera chaque sauvegarde (une sauvegarde par reconstruction). Il est donc possible de terminer le script et lancer la même commande, qui reprendra les calculs après la dernière étape.

En sortie vous trouverez un fichier json comme sur [sortieCriteres.json](divers_template/sortieCriteres.json)
Pour chaque reconstruction nous trouvons le même id et "model_path" qu'en entrée. Les autres critères ont soit une valeur soit un NaN (qui indique une non possibilité de calcul).
#### Ordonnement des reconstruction par score

On utilise le fichier sorti précédemment en entrée d'une fonction matlab [best_reconstruction.m](scripts/score_reconstruction/best_reconstruction.m) on obtient en sortie l'ordre de la meilleure reconstruction à la pire.

Il est possible de mettre des pauses dans le calcul pour voir les scores correspondant et autres.
## Meshroom

Les fichiers avec de données peuvent être ouvert via la version **2023** de Meshroom mais seront détaillés ci-dessous.
Pour la suite les descripteurs utilisés sont **Sift** et **Akaze**
Dans le node **PrepareDenseScene** on mettra le dossier avec les masques afin de toujours faire des reconstructions sans fond (qu'importe s'ils sont utilisés pour la detection de points d'intérêt ou pas

Les tests sur photos sont du dossier **lefaucheux_7mm/fond_vert_4**
ceux sur vidéos sont de **lefaucheux_7mm/0004.MTS**
#### Travail préliminaire
fichier : [lefaucheux_7mm.mg](Meshroom-2023/lefaucheux_7mm.mg)

| **ID** | Images | Qualité d'images | Masques | Density | Quality | Cross Matching | Guided Matching | 
|:-:|:-:|---|:-:|---|---|:-:|:-:|
| 1 | 9 | Centre et images extrêmes |   | normal | normal |   |   |
| 2 | 9 | Centre et images extrêmes |   | ultra | normal |   |   |
| 3 | 17 | C, E3, E5, N4, N6, NE2, NE4, NO2, NO4, O3, 05, S3, S6, SE3, SE5, SO3, SO5 |   | normal | normal |   |   |
| 4 | 17 | " |   | ultra | normal |   |   |
| 5 | 17 | " |   |   |   | x |   |
| 6 | 17 | " | x | normal | normal |   |   |
| 7 | 17 | " | x | ultra | normal |   |   |
| 8 | 17 | " | x | normal | normal | x |   |
| 9 | 17 | " | x | normal | normal |   | x |
| 10 | 17 | " | x | normal | normal | x | x |
| 11 | 25 | C, E1, E3, E5, N1, N4, N6, NE1, NE2, NE4, NO1, NO2, NO4, O1, O3, O5, S1, S3, S6, SE1, SE3, SE5, SO1, SO3, SO5 |   | normal | normal |   |   |
| 12 | 25 | " | x | normal | normal |   |   |
| 13 | 25 | " | x | normal | normal |   | x |
| 14 | 25 | " | x | normal | normal | x | x |
| 15 | 25 | " | x | high | normal | x | x |
| 16 | 41 | toutes les images |   | normal | normal |   |   |
| 17 | 41 | " | x | high | normal | x | x |
| 18 | 9 | C, E1, N1, NE1, NO1, O1, S1, SE1, SO1 |   | normal | normal |  |   |
| 19 | 9 | " |   | normal | normal | x | x |
| 20 | 9 | " |   | high | normal |   |   |
| 21 | 9 | " | x | normal | normal | x | x |

#### Utilisation de filtres

toute la suite se fait avec le paramétrage suivant:

| Images | Qualité d'images | Masques | Density | Quality | Cross Matching | Guided Matching | 
|:-:|:-|:-:|:--|---|:-:|:-:|
| 41 | toutes les images | x | high | normal | x | x |

Pour la suite nous allons ajouter un node **ImageProcessing** qui sera relié de sorte:
- **Input** : le SfMData en sortie du noeud **CameraInit**
- **SfmData** : relié au SfmData du noeud **FeatureExtraction**
- **Folder** : relié au paramètre **Images Folders** du noeud **PrepareDenseScene**
- **Keep Image Name** : Il est important qu'il soit coché pour que l'utilisation des masques fonctionne
- **Output File Extension** jpg

fichier : [lefaucheux_7mm_processing.mg](Meshroom-2023/lefaucheux_7mm_processing.mg)

| **ID** | Filtre | Paramètres |
|:-:|---|---|
| 12 | pas de noeud **ImageProcessing** |   |
| 2 | Sharpen | Width 5, Contrast 5, Threshold 0 |
| 3 | Bilateral | Distance 0, Sigma Coordinate Space 15, Sigma Color Space 0 |
| 4 | Clahe | Clip Limit 4, Tile Grid Size 8 |
| 5 | Noise | Method uniform, A 0, B 1, Mono x |
| 6 | NL Means Denoising (8 bits) | H 5, HColor 10, Template Window Size 7, Search Window Size 21 |
| 7 | Exposure Compensation | |
| 8 | Lens Correction | Geometry |
| 10 | Contrast | 5 |
| 11 | Median | 5 |
| 13 | Sharpen | Width 5, Contrast 1, Threshold 0 |
| 14 | Sharpen | Width 3, Contrast 5, Threshold 0 |
| 15 | Bilateral | Distance 0, Sigma Coordinate Space 5, Sigma Color Space 0 |
| 16 | Bilateral | Distane 5, Sigma Coordinate Space 0, Sigma Color Space 0 |
| 17 | Clahe | Clip Limit 4, Tile Grid Size 16 |
| 18 | Clahe | Clip Limit 4, Tile Grid Size 4 |
| 19 | Contrast | 10 |
| 20 | Contrast | 3 |
| 21 | Median | 10 |
| 22 | Median | 3 |



#### Utilisation de vidéos
toute la suite se fait avec le paramétrage suivant:

| Images | Qualité d'images | Masques | Density | Quality | Cross Matching | Guided Matching | 
|:-:|:-|:-:|:--|---|:-:|:-:|
| 41 | toutes les images | x | high | normal | x | x |

fichier : [lefaucheux_7mm_video](Meshroom-2023video/lefaucheux_7mm_video.mg)

| ID | Méthode de sélection | Images (variera selon vidéo) |
|:-:|:--|:-:|
| 1 | full | 2688 |
| 3 | KeyFrameSelection node et en sortie jpg | 37 |
| 2 | Images du dossier **fond_vert_4**, sert de référence pour faire les comparaisons| 41 |
| 4 | images clés | 112 |
| 5 | random | 50 (ici fixé) |
| 6 | random | 100 (ici fixé) |
| 7 | intervalle 1/50 | 54 |

#### Combinaison de résultats
toute la suite se fait avec le paramétrage suivant:

| Images | Qualité d'images | Masques | Density | Quality | Cross Matching | Guided Matching | 
|:-:|:-|:-:|:--|---|:-:|:-:|
| 41 | toutes les images | x | high | normal | x | x |

fichier : [lefaucheux_7mm_combi.mg](Meshroom-2023/lefaucheux_7mm_combi.mg)

De plus si l'on applique des filtre ce sera ensemble:
- **Clahe** : Clip Limit 4, Tile Grid Size 8
- **Bilateral** : Distance 0, Sigma Coordinate Space 5, Sigma Color Space 0


| ID | Images ou vidéo | Selection | images | Filtres |
|:-:|:--|:--|:-:|:--|
| 1 | Images |   | 41 |  |
| 2 | Images |   | 41 | x |
| 3 | Vidéo | Intervalle 1/50 | 54 |   |
| 4 | Vidéo | Intervalle 1/50 | 54 | x |
| 5 | Video | KeyFrameSelection | 37 |   |
| 6 | Vidéo | KeyFramSelection | 37 | x |
| 7 | Vidéo | Images clés | 112 |   |
| 8 | Vidéo | Images clés | 112 | x |

#### Avec un modèle de référence
toute la suite se fait avec le paramétrage suivant:

| Masques | Density | Quality | Cross Matching | Guided Matching | 
|:-:|:--|---|:-:|:-:|
| x | high | normal | x | x |

Les images utilisées seront celles en sortie du module **scanRig** sur Blender

fichier : [synthetised.mg](Meshroom-2023/synthetised.mg)

Pour aligner les reconstructions afin de les comparer correctement, il est nécessaire d'ajouter un node **SfmAlignment** entre les ndoes **StructureFromMotion** et **PrepareDenseScene** de paramétrage suivant: 
- **Input** SfmData en sortie du node **StructureFromMotion**
- **SfmData File** : vers l'entrée **SfmData** du node **PrepareDenseScene**
- **Alignment Method** from_cameras_poseid 
- **Scale, Rotation, Translation** ✓

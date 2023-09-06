# Meshroom

Les fichiers avec de données peuvent être ouvert via la version **2023** de Meshroom mais seront détaillés ci-dessous.
Pour la suite les descripteurs utilisés sont **Sift** et **Akaze**
Dans le node **PrepareDenseScene** on mettra le dossier avec les masques afin de toujours faire des reconstructions sans fond (qu'importe s'ils sont utilisés pour la detection de points d'intérêt ou pas

Les tests sur photos sont du dossier **lefaucheux_7mm/fond_vert_4**
ceux sur vidéos sont de **lefaucheux_7mm/0004.MTS**
## Travail préliminaire
fichier : [lefaucheux_7mm.mg](/lefaucheux_7mm.mg)

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

## Utilisation de filtres

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

fichier : [lefaucheux_7mm_processing.mg](/lefaucheux_7mm_processing.mg)

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



## Utilisation de vidéos
toute la suite se fait avec le paramétrage suivant:

| Images | Qualité d'images | Masques | Density | Quality | Cross Matching | Guided Matching | 
|:-:|:-|:-:|:--|---|:-:|:-:|
| 41 | toutes les images | x | high | normal | x | x |

fichier : [lefaucheux_7mm_video.mg](/lefaucheux_7mm_video.mg)

| ID | Méthode de sélection | Images (variera selon vidéo) |
|:-:|:--|:-:|
| 1 | full | 2688 |
| 3 | KeyFrameSelection node et en sortie jpg | 37 |
| 2 | Images du dossier **fond_vert_4**, sert de référence pour faire les comparaisons| 41 |
| 4 | images clés | 112 |
| 5 | random | 50 (ici fixé) |
| 6 | random | 100 (ici fixé) |
| 7 | intervalle 1/50 | 54 |

## Combinaison de résultats
toute la suite se fait avec le paramétrage suivant:

| Images | Qualité d'images | Masques | Density | Quality | Cross Matching | Guided Matching | 
|:-:|:-|:-:|:--|---|:-:|:-:|
| 41 | toutes les images | x | high | normal | x | x |

fichier : [lefaucheux_7mm_combi.mg](/lefaucheux_7mm_combi.mg)

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

## Avec un modèle de référence
toute la suite se fait avec le paramétrage suivant:

| Masques | Density | Quality | Cross Matching | Guided Matching | 
|:-:|:--|---|:-:|:-:|
| x | high | normal | x | x |

Les images utilisées seront celles en sortie du module **scanRig** sur Blender

fichier : [synthetised.mg](synthetised.mg)

Pour aligner les reconstructions afin de les comparer correctement, il est nécessaire d'ajouter un node **SfmAlignment** entre les ndoes **StructureFromMotion** et **PrepareDenseScene** de paramétrage suivant: 
- **Input** SfmData en sortie du node **StructureFromMotion**
- **SfmData File** : vers l'entrée **SfmData** du node **PrepareDenseScene**
- **Alignment Method** from_cameras_poseid 
- **Scale, Rotation, Translation** ✓

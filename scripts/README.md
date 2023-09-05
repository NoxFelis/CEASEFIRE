# Scripts à disposition
note: On a repris le README principal
## Pour avoir les masques
Les masques sont récupérés à l'air du programme [chromakey](https://github.com/simogasp/chromakey)
Le fichier principal à lancer est 'processImage.cpp'

On peut suivre les étapes de build habituel et comme indiqué, le programme s'utilise de la manière suivante

	./processImage <image> [<background>]

L'image qui nous intéressera est celle qui est automatiquement nommée 'result.png'. C'est une image où le fond est transparent (au lieu de vert).

Il est préférable pour la suite de modifier le code afin de ranger l'image transparente dans un dossier à part où elle aura le même nom que l'image d'entrée.
Une fois cela fait le script [masks.sh](masks.sh) peut être utilisé pour créer les masques d'un dossier complet de photos plutôt qu'une par une. Pour son bon fonctionnement, nous demandons d'avoir un executable du programme 'processImage' dans le même dossier.
Le script s'appelle :

	./masks.sh -b <background> -p <folder>
#### Extraire des frames des vidéos
L'extraction de frames se fait en utilisant le script [keyframes.sh](/scripts/keyframes.sh) 

Les arguments possibles sont les suivants comme expliqué dans le code:

```
the following arguments are:
	-i /path/to/video
	-o output folder name
	-r number of total frames with random algorithm 
	-s size of space interval between each frame
	-k key frame algorithm
```

#### Récupérer les positions pour aligner
Le script pour récupérer les positions des caméras doit être intégré dans Blender. [position_cameras.py](../Blender/position_cameras.py)

Pour la suite, il faut d'abord finir l'étape 'StructureFromMotion'.  Dans le dossier de sortie on peut récupérer le fichier 'cameras.sfm'. 
Il est alors possible d'utiliser le script python [knownposes.py](knownposes.py) en entrant les arguments comme suit: 
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
L'estimation des critères nécessite un fichier json en entrée de la forme suivante pour un ensemble de reconstructions [entryCriteres.json](../divers_template/entryCriteres.json)

- les critères de tailles sont à 0 si l'on a pas l'information
- les autres informations sont à mettre à un string vide ("") si l'on a pas l'information qu'elle soit de référence ou de la reconstruction
- l'id pour chaque reconstruction est à définir au choix, le plus simple est de prendre le numéro du noeud 'StructureFromMotion' sur Meshroom

Une fois le fichier rempli, il peut être utilisé en entrée du script python [score_reconstruction.py](score_reconstruction/score_reconstruction.py)

Le script se lance ainsi:

	python3 score_reconstruction.py <fichier_entree> <fichier_sortie>

L'avantage de ce script est qu'il fonctionne par étape. La console précisera chaque sauvegarde (une sauvegarde par reconstruction). Il est donc possible de terminer le script et lancer la même commande, qui reprendra les calculs après la dernière étape.

En sortie vous trouverez un fichier json comme sur [sortieCriteres.json](../divers_template/sortieCriteres.json)
Pour chaque reconstruction nous trouvons le même id et "model_path" qu'en entrée. Les autres critères ont soit une valeur soit un NaN (qui indique une non possibilité de calcul).

Le critère de rugosité, ainsi que tous les codes matlab concernés sont du travail de [K. Wang et. al](https://www.sciencedirect.com/science/article/pii/S0097849312001203) et peuvent être retrouvés en intégralité et sans modification [ici](https://www.gipsa-lab.grenoble-inp.fr/~kai.wang/publications_en.html).
#### Ordonnement des reconstruction par score

On utilise le fichier sorti précédemment en entrée d'une fonction matlab [best_reconstruction.m](score_reconstruction/best_reconstruction.m) on obtient en sortie l'ordre de la meilleure reconstruction à la pire.

Il est possible de mettre des pauses dans le calcul pour voir les scores correspondant et autres.

import numpy as np
import pymeshlab as ml
import sys
import json
import pywavefront as wf
import matlab.engine
import os
from PIL import Image


def mse(actual, predicted):
    actual = np.array(actual)
    predicted = np.array(predicted)
    differences = np.subtract(actual, predicted)
    squared_differences = np.square(differences)

    return float(squared_differences.mean())

def calcul_scores(pic_center,model_path,stats_path,valeurs_ref,ref=False,ref_model_path=''):
    path = os.getcwd()
    eng = matlab.engine.start_matlab()
    eng.cd(path, nargout=0)
    #print(ref)

    is_model = (model_path != "")
    is_stats = (stats_path != "")

    if is_model:
        ## setup
        model = wf.Wavefront(model_path,collect_faces=True)
        # vertices = np.array(model.vertices)
        faces = np.array(model.mesh_list[0].faces)
        # #print("model : ", model.mesh_list[0].faces)
        # print("faces size : ",faces.shape)

    if is_stats:
        ## erreur quadratique de reprojection
        with open(stats_path,"r") as stats:
            stats_data = json.load(stats)
            score_reprojection = float(stats_data["sfm"]["residual"]) 
    else:
        score_reprojection = float("nan")
    print("score reprojection ", score_reprojection)
    print(type(score_reprojection))

    if is_model:
        ## estimation de la rugosite
        score_rugosite = eng.calcul_rugosite(model_path) 
    else:
        score_rugosite = float("nan")
    print("score rugosite ", score_rugosite)
    print(type(score_rugosite))


    ## écart avec modèle de référence
    if ref and is_model:
        meshes = ml.MeshSet()
        meshes.load_new_mesh(model_path)
        meshes.load_new_mesh(ref_model_path)
        #ml.get_hausdorff_distance()
        out = meshes.apply_filter('get_hausdorff_distance',sampledmesh = 0,targetmesh = 1)
        score_ecart = float(out['RMS'])  
    else:
        score_ecart = float("nan")

    print("score_ecart : ", score_ecart)
    print(type(score_ecart))



    ## vérification de la proportion
    if is_model:
        #print("Veuillez entrer les valeurs de la fiche technique de l'arme")
        # longueur_ref = float(input("longueur de l'arme : "));
        # largeur_ref = float(input("largeur de l'arme : "))
        # hauteur_ref = float(input("hauteur de l'arme : "))
        # canon_ref = float(input("longueur du canon : "))
        longueur_ref = (valeurs_ref[0])
        largeur_ref = (valeurs_ref[1])
        hauteur_ref = (valeurs_ref[2])
        canon_ref = (valeurs_ref[3])
        
        [valeurs] = eng.selection_longueurs(model_path)
        longueur = valeurs[0]
        largeur = valeurs[1]
        hauteur = valeurs[2]
        canon = valeurs[3]

        rapports_ref = []
        rapports = []
        if longueur != 0:
            if largeur_ref != 0.0:
                rapports_ref.append(largeur_ref/longueur_ref)
                rapports.append(largeur/longueur)
            if hauteur_ref != 0.0:
                rapports_ref.append(hauteur_ref/longueur_ref)
                rapports.append(hauteur/longueur)
            if canon_ref != 0.0:
                rapports_ref.append(canon_ref/longueur_ref)
                rapports.append(canon/longueur)

            score_rapports = mse(rapports, rapports_ref)
        else:
            score_rapports = float("nan")
    else:
        score_rapports = float("nan")
    print("score rapports : ", score_rapports)
    print(type(score_rapports))
    

    ## pénalisation des élements manquants
    if is_model:
        score_manques = eng.selection_manques(pic_center, model_path)
    else:
        score_manques = float("nan")
    print("score manques : ", score_manques)
    print(type(score_manques))

    ## score de faces
    if is_model:
        score_faces = faces.shape[0]
    else:
        score_faces = float("nan")
    print("nombre de faces : ", score_faces)
    print(type(score_faces))

    return score_reprojection,score_rugosite,score_ecart, score_rapports, score_manques, score_faces

def main():
    if (len(sys.argv) < 2):
        print("not enough arguments")
        print("les arguments doivent suivrent l'ordre suivant:")
        print("[data_entrée.json] [data_sortie.json]")
        sys.exit(0)
    else: 
        fichier_input = sys.argv[1]
        fichier_output = sys.argv[2]
        with open(fichier_input,"r") as data_in:
            inside = json.load(data_in)
            data = []
            try:
                with open(fichier_output,"r") as output:
                    if (os.stat(fichier_output).st_size == 0):
                        raise FileNotFoundError 
                    
                    data = json.load(output)
            

                    print("Déjà fait :")
                    done = []
                    for e in data["scores"]:
                        identite = e["id"]
                        done.append(identite)
                        print(identite)

                """print("Démarrage de la suite")
            
                for group in inside["groups"]:
                    pic_center = group['pic_center']
                    reconstructions = group["reconstructions"]
                    model_ref = group["model_ref"]

                    valeurs_ref = []
                    valeurs_ref.append(group["longueur"])
                    valeurs_ref.append(group["largeur"])
                    valeurs_ref.append(group["hauteur"])
                    valeurs_ref.append(group["canon"])
                    
                    ref = (model_ref != "")
                    print("Référence ? ", ref)

                    for reconstruction in reconstructions:
                        identite = reconstruction["id"]
                        if identite not in done:
                            print("Analyse de la reconstruction ",identite)
                            model_path = reconstruction["model_path"]
                            stats_path = reconstruction["stats_path"]
                            score_reprojection,score_rugosite,score_ecart, score_rapports, score_manques, score_faces = calcul_scores(pic_center,model_path,stats_path,valeurs_ref,ref,model_ref)
                            out = {
                                "id" : identite,
                                "model_path" : model_path,
                                "reprojection" : score_reprojection,
                                "rugosite" : score_rugosite,
                                "ecart" : score_ecart,
                                "rapports" : score_rapports,
                                "manques" : score_manques,
                                "faces" : score_faces
                            }
                            upload["scores"].append(out)
                            with open(fichier_output,"w") as output:
                                json.dump(upload,output,indent=4)
                                print("analyse sauvegardée")"""

            except FileNotFoundError:
                print("Rien déjà fait ")
                data = {
                    "scores": []
                }
                done = []
                
        
            print("Démarrage de la suite")
            #print(data["scores"])
            for group in inside["groups"]:
                pic_center = group['pic_center']    # version masquée
                reconstructions = group["reconstructions"]
                model_ref = group["model_ref"]
                
                ref = (model_ref != "")
                print("Référence ? ", ref)

                valeurs_ref = []
                valeurs_ref.append(group["longueur"])
                valeurs_ref.append(group["largeur"])
                valeurs_ref.append(group["hauteur"])
                valeurs_ref.append(group["canon"])

                for reconstruction in reconstructions:
                    identite = reconstruction["id"]
                    if identite not in done:
                        print("Analyse de la reconstruction ",identite)
                        model_path = reconstruction["model_path"]
                        stats_path = reconstruction["stats_path"]
                        score_reprojection,score_rugosite,score_ecart, score_rapports, score_manques, score_faces = calcul_scores(pic_center,model_path,stats_path,valeurs_ref,ref,model_ref)
                        
                        out = {
                            "id" : identite,
                            "model_path" : model_path,
                            "reprojection" : score_reprojection,
                            "rugosite" : score_rugosite,
                            "ecart" : score_ecart,
                            "rapports" : score_rapports,
                            "manques" : score_manques,
                            "faces" : score_faces
                        }
                        data["scores"].append(out)
                        with open(fichier_output,"w") as output:
                            json.dump(data,output,indent=4)
                            print("analyse sauvegardée")
                    


if __name__ == "__main__":
    main()
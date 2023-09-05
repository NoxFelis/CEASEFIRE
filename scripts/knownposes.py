import sys
import json

def add_pose(data,poseId,rotation,center):
    out = {
        "poseId" : poseId,
        "pose" : {
            "transform" : {
                "rotation" : rotation,
                "center" : center
            },
            "locked" : "0"
        }
    }
    data["poses"].append(out)


def main():
    if (len(sys.argv) < 3):
        print("not enough arguments")
        print("les arguments doivent suivrent l'ordre suivant:")
        print("[fichier_poses.json] [cameras.sfm] [fichier_target.sfm]")
        sys.exit(0)
    else :
        input_poses = sys.argv[1]
        input_id = sys.argv[2]
        output_file = sys.argv[3]

        with open(output_file,"w") as output :
            
            data = {
                "version": [],
                "featuresFolders": [],
                "matchesFolders": [],
                "views": [],
                "intrinsics": [],
                "poses": []
            }
            with open(input_id,"r") as ids :
                with open(input_poses,"r") as poses:
                    poses_data = json.load(poses)
                    cameras = poses_data["Cameras"]
                    ids_data = json.load(ids)
                    views = ids_data["views"]

                    data["version"]= ids_data["version"]
                    data["featuresFolders"] = ids_data["featuresFolders"]
                    data["matchesFolders"] = ids_data["matchesFolders"]
                    data["views"] = ids_data["views"]
                    data["intrinsics"] = ids_data["intrinsics"]

                    for view in views:
                        pose_id = view["poseId"]
                        camera_name = view["metadata"]["Camera"]

                        for camera in cameras:
                            if camera["camera"] == camera_name:
                                add_pose(data,pose_id,camera["rotation"],camera["center"])
                                break;
                        """ info = ""
                        output.write(info)  """

                    json.dump(data,output,indent=4)
        
    

if __name__ == "__main__":
    main()

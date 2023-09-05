import bpy
import math
import os
import json
import mathutils
from mathutils import Matrix

script_directory = bpy.path.abspath("//")  # Get the current script directory
name = "jsons/positions_and_rotations"  + ".json" # + + str(version)
output_file = os.path.join(script_directory,name)

epsilon = 5*(10**(-6))
#print("epsilon :")
#print(epsilon)

selected_objects = bpy.context.selected_objects
cameras = []

folder = bpy.data.objects.get("Cameras")
if folder is not None:
    scale = folder.scale
    print("scale:")
    print(scale)
    
def add_camera(name,rotation,center,translation):
    camera = {
        "camera" : name,
        "rotation" : rotation,
        "center" : center,
        "translation" : translation
    }
    #print(camera)
    data["Cameras"].append(camera)

with open(output_file, "w") as file:
    data = {
        "Cameras" : cameras
    }
    for obj in selected_objects:
        
        #get the elements
        location = obj.location
        euler = obj.rotation_euler.to_matrix().transposed()
        translation = obj.matrix_world.translation
        
        #we need to scale the center though
        location = location * scale
        
        #list of rotation through rows
        rotation = []
        for row in euler:
            for element in row:
                if element < epsilon:
                    #print("true")
                    rotation.append(str(0))
                else: 
                    rotation.append(str(element))
        
        # list of center
        center = []
        for element in location:
            if element < epsilon:
                center.append(str(0))
            else: 
                center.append(str(element))
        
        # list of translation
        translation = [str(element) for element in translation]
        
        add_camera(obj.name,rotation,center,translation)
        
        # print("euler :")
        # print(euler)
        # print("rotation :")
        # print(rotation)
        # print("location :")
        # print(location)
        # 	print("translation :")
        # print(translation)

    json.dump(data,file,indent=4)


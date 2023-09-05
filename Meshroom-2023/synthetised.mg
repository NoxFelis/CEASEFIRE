{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.1.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "Meshing": "7.0",
            "SfMAlignment": "2.0",
            "PrepareDenseScene": "3.0",
            "FeatureExtraction": "1.1",
            "MeshFiltering": "3.0",
            "DepthMap": "3.0",
            "Texturing": "6.0",
            "ImageMatching": "2.0",
            "ConvertSfMFormat": "2.0",
            "DepthMapFilter": "3.0",
            "FeatureMatching": "2.0",
            "StructureFromMotion": "2.0",
            "CameraInit": "9.0"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                1790,
                -402
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "0437b41bbfb9db5db3458040617b01e2740b4646"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "{DepthMap_1.imagesFolder}",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": false,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                1390,
                -402
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "6112955aadbd116966d1d7a5e4757b2671a439ff"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_1.input}",
                "depthMapsFolder": "{DepthMapFilter_1.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "DepthMapFilter_1": {
            "nodeType": "DepthMapFilter",
            "position": [
                1190,
                -402
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 65,
                "split": 7
            },
            "uids": {
                "0": "8ed29080336c3d936466fdc63d873bacbb60681b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_1.input}",
                "depthMapsFolder": "{DepthMap_1.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                177,
                -712
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 65,
                "split": 1
            },
            "uids": {
                "0": "97303529aff4147cecdbffce558bc83247a3a466"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "SequentialAndVocabularyTree",
                "tree": "${ALICEVISION_VOCTREE}",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 40,
                "nbNeighbors": 5,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                -23,
                -712
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 65,
                "split": 2
            },
            "uids": {
                "0": "7a0a4089c38ffebb223848165d8a7e68904fc78d"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img_mask/transparent",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "ultra",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                577,
                -712
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 65,
                "split": 1
            },
            "uids": {
                "0": "86d8029521ed7dd9307684c6b980ce53150a7f3c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": "{FeatureMatching_1.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Scale",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "rigMinNbCamerasForCalibration": 20,
                "lockAllIntrinsics": false,
                "minNbCamerasToRefinePrincipalPoint": 3,
                "filterTrackForks": false,
                "computeStructureColor": true,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "PrepareDenseScene_1": {
            "nodeType": "PrepareDenseScene",
            "position": [
                790,
                -402
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 65,
                "split": 2
            },
            "uids": {
                "0": "c3d87705f28118191646e3c3cc87238e0e9ac9f7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "imagesFolders": [],
                "masksFolders": [],
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                -223,
                -712
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 65,
                "split": 1
            },
            "uids": {
                "0": "eccca5db79ab817595d176001d07623839dda2a9"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 5414545,
                        "poseId": 5414545,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_98.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_98\", \"Date\": \"2023/06/28 21:25:18\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.76\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 37748983,
                        "poseId": 37748983,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_76.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_76\", \"Date\": \"2023/06/28 21:18:07\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.13\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 100209516,
                        "poseId": 100209516,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_26.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_26\", \"Date\": \"2023/06/28 21:02:19\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.66\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 100628122,
                        "poseId": 100628122,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_6.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_6\", \"Date\": \"2023/06/28 20:55:46\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.65\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 106759576,
                        "poseId": 106759576,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_19.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_19\", \"Date\": \"2023/06/28 21:00:08\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.81\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 123534214,
                        "poseId": 123534214,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_70.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_70\", \"Date\": \"2023/06/28 21:16:17\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.40\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 134562403,
                        "poseId": 134562403,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_39.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_39\", \"Date\": \"2023/06/28 21:06:23\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.96\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 168560771,
                        "poseId": 168560771,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_55.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_55\", \"Date\": \"2023/06/28 21:11:31\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.91\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 186739607,
                        "poseId": 186739607,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_32.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_32\", \"Date\": \"2023/06/28 21:04:10\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.58\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 323656026,
                        "poseId": 323656026,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_13.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_13\", \"Date\": \"2023/06/28 20:58:16\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.92\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 343630825,
                        "poseId": 343630825,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_111.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_111\", \"Date\": \"2023/06/28 21:29:25\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.73\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 443826148,
                        "poseId": 443826148,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_53.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_53\", \"Date\": \"2023/06/28 21:10:49\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.56\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 469971854,
                        "poseId": 469971854,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_105.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_105\", \"Date\": \"2023/06/28 21:27:33\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.24\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 538180517,
                        "poseId": 538180517,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_5.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_5\", \"Date\": \"2023/06/28 20:55:26\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.89\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 539946608,
                        "poseId": 539946608,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_57.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_57\", \"Date\": \"2023/06/28 21:12:12\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.05\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 548058071,
                        "poseId": 548058071,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_85.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_85\", \"Date\": \"2023/06/28 21:21:07\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.78\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 561800570,
                        "poseId": 561800570,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_93.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_93\", \"Date\": \"2023/06/28 21:23:44\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.86\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 575889761,
                        "poseId": 575889761,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_83.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_83\", \"Date\": \"2023/06/28 21:20:24\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.84\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 594389774,
                        "poseId": 594389774,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_4.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_4\", \"Date\": \"2023/06/28 20:55:05\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.92\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 615093060,
                        "poseId": 615093060,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_27.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_27\", \"Date\": \"2023/06/28 21:02:40\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.63\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 619187874,
                        "poseId": 619187874,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_35.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_35\", \"Date\": \"2023/06/28 21:05:12\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.64\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 655547066,
                        "poseId": 655547066,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_92.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_92\", \"Date\": \"2023/06/28 21:23:23\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.38\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 710533330,
                        "poseId": 710533330,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_12.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_12\", \"Date\": \"2023/06/28 20:57:55\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.32\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 748819495,
                        "poseId": 748819495,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_77.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_77\", \"Date\": \"2023/06/28 21:18:30\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.62\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 758526607,
                        "poseId": 758526607,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_78.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_78\", \"Date\": \"2023/06/28 21:18:51\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.53\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 760623023,
                        "poseId": 760623023,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_0.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_0\", \"Date\": \"2023/06/28 20:53:49\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.88\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 792549913,
                        "poseId": 792549913,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_68.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_68\", \"Date\": \"2023/06/28 21:15:35\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.31\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 793260818,
                        "poseId": 793260818,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_62.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_62\", \"Date\": \"2023/06/28 21:13:44\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.15\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 880719849,
                        "poseId": 880719849,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_86.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_86\", \"Date\": \"2023/06/28 21:21:28\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.30\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 890282637,
                        "poseId": 890282637,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_91.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_91\", \"Date\": \"2023/06/28 21:23:02\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.28\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 928402867,
                        "poseId": 928402867,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_54.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_54\", \"Date\": \"2023/06/28 21:11:10\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.71\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 999686666,
                        "poseId": 999686666,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_1.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_1\", \"Date\": \"2023/06/28 20:54:10\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.67\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1008973280,
                        "poseId": 1008973280,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_63.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_63\", \"Date\": \"2023/06/28 21:14:05\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.99\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1024996756,
                        "poseId": 1024996756,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_34.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_34\", \"Date\": \"2023/06/28 21:04:52\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.70\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1043960700,
                        "poseId": 1043960700,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_97.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_97\", \"Date\": \"2023/06/28 21:24:55\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.15\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1132128325,
                        "poseId": 1132128325,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_79.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_79\", \"Date\": \"2023/06/28 21:19:12\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.57\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1171545168,
                        "poseId": 1171545168,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_28.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_28\", \"Date\": \"2023/06/28 21:03:00\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.58\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1224099374,
                        "poseId": 1224099374,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_20.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_20\", \"Date\": \"2023/06/28 21:00:28\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.69\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1230129054,
                        "poseId": 1230129054,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_40.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_40\", \"Date\": \"2023/06/28 21:06:44\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.06\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1246281680,
                        "poseId": 1246281680,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_104.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_104\", \"Date\": \"2023/06/28 21:27:12\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.05\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1251895130,
                        "poseId": 1251895130,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_84.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_84\", \"Date\": \"2023/06/28 21:20:45\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.27\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1260013519,
                        "poseId": 1260013519,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_90.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_90\", \"Date\": \"2023/06/28 21:22:41\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.05\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1329345147,
                        "poseId": 1329345147,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_56.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_56\", \"Date\": \"2023/06/28 21:11:51\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.19\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1331568730,
                        "poseId": 1331568730,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_48.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_48\", \"Date\": \"2023/06/28 21:09:18\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.00\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1360576398,
                        "poseId": 1360576398,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_42.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_42\", \"Date\": \"2023/06/28 21:07:25\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.90\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1365628811,
                        "poseId": 1365628811,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_112.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_112\", \"Date\": \"2023/06/28 21:29:46\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.32\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1369100660,
                        "poseId": 1369100660,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_11.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_11\", \"Date\": \"2023/06/28 20:57:34\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.35\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1412450720,
                        "poseId": 1412450720,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_25.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_25\", \"Date\": \"2023/06/28 21:01:59\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.34\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1412938638,
                        "poseId": 1412938638,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_47.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_47\", \"Date\": \"2023/06/28 21:08:58\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.91\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1431998593,
                        "poseId": 1431998593,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_46.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_46\", \"Date\": \"2023/06/28 21:08:37\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.84\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1437445468,
                        "poseId": 1437445468,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_99.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_99\", \"Date\": \"2023/06/28 21:25:39\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.36\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1490870404,
                        "poseId": 1490870404,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_18.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_18\", \"Date\": \"2023/06/28 20:59:47\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.65\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1607835970,
                        "poseId": 1607835970,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_21.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_21\", \"Date\": \"2023/06/28 21:00:48\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.43\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1694293321,
                        "poseId": 1694293321,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_49.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_49\", \"Date\": \"2023/06/28 21:09:39\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.82\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1725343073,
                        "poseId": 1725343073,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_106.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_106\", \"Date\": \"2023/06/28 21:27:54\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.89\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1748740298,
                        "poseId": 1748740298,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_7.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_7\", \"Date\": \"2023/06/28 20:56:06\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.41\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1785657908,
                        "poseId": 1785657908,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_71.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_71\", \"Date\": \"2023/06/28 21:16:39\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.39\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1786078071,
                        "poseId": 1786078071,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_41.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_41\", \"Date\": \"2023/06/28 21:07:05\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.14\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1820791854,
                        "poseId": 1820791854,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_33.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_33\", \"Date\": \"2023/06/28 21:04:31\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.81\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1822087351,
                        "poseId": 1822087351,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_64.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_64\", \"Date\": \"2023/06/28 21:14:25\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.01\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1836102040,
                        "poseId": 1836102040,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_61.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_61\", \"Date\": \"2023/06/28 21:13:23\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.97\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1845610305,
                        "poseId": 1845610305,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_107.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_107\", \"Date\": \"2023/06/28 21:28:14\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.09\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1921570780,
                        "poseId": 1921570780,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_14.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_14\", \"Date\": \"2023/06/28 20:58:36\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.16\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1921660338,
                        "poseId": 1921660338,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_100.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_100\", \"Date\": \"2023/06/28 21:25:59\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:18.43\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2114831175,
                        "poseId": 2114831175,
                        "path": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img/Camera_69.png",
                        "intrinsicId": 1976593523,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Camera\": \"Camera_69\", \"Date\": \"2023/06/28 21:15:56\", \"File\": \"/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/pistola1.blend\", \"Frame\": \"239\", \"RenderTime\": \"00:19.37\", \"ResolutionUnit\": \"inch\", \"Scene\": \"Scene\", \"Time\": \"00:00:09:23\", \"XResolution\": \"72.009\", \"YResolution\": \"72.009\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 1976593523,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 4208,
                        "height": 3120,
                        "sensorWidth": 36.0,
                        "sensorHeight": 26.692015209125472,
                        "serialNumber": "/CEASEFIRE/Blender/models/93-pistol_tauros/pistol_Tauros/models/img",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "unknown",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "locked": false
                    }
                ],
                "sensorDatabase": "${ALICEVISION_SENSOR_DB}",
                "lensCorrectionProfileInfo": "${ALICEVISION_LENS_PROFILE_INFO}",
                "lensCorrectionProfileSearchIgnoreCameraModel": true,
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1",
                    "3deanamorphic4",
                    "3deradial4",
                    "3declassicld"
                ],
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                990,
                -402
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 65,
                "split": 22
            },
            "uids": {
                "0": "e393259b6a8c0dcce18a6df59ebe1c1f12c39f8b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_1.input}",
                "imagesFolder": "{PrepareDenseScene_1.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_scale2_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                1590,
                -402
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "038ebdbdd3a721d51d557fdcbc3a8f807c815eda"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                377,
                -712
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 65,
                "split": 4
            },
            "uids": {
                "0": "987ce863e48dcd0ddf44a48226948c9263431aba"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": "{FeatureExtraction_1.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "minRequired2DMotion": -1.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": true,
                "guidedMatching": true,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "SfMAlignment_1": {
            "nodeType": "SfMAlignment",
            "position": [
                780,
                -707
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 65,
                "split": 1
            },
            "uids": {
                "0": "7569897df51f25fd791b733cbb996cc3fe7a3bbb"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "reference": "/CEASEFIRE/scripts/raw.sfm",
                "method": "from_cameras_poseid",
                "fileMatchingPattern": ".*\\/(.*?)\\.\\w{3}",
                "metadataMatchingList": [],
                "applyScale": true,
                "applyRotation": true,
                "applyTranslation": true,
                "verboseLevel": "warning"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm"
            }
        },
        "ConvertSfMFormat_1": {
            "nodeType": "ConvertSfMFormat",
            "position": [
                978,
                -559
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 65,
                "split": 1
            },
            "uids": {
                "0": "7291eba6eb72480dde1f08f1c3428c9a00eeeb08"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{SfMAlignment_1.output}",
                "fileExt": "json",
                "describerTypes": [
                    "akaze",
                    "sift"
                ],
                "imageWhiteList": [],
                "views": true,
                "intrinsics": true,
                "extrinsics": true,
                "structure": true,
                "observations": true,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.{fileExtValue}"
            }
        },
        "PrepareDenseScene_2": {
            "nodeType": "PrepareDenseScene",
            "position": [
                793,
                -211
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 65,
                "split": 2
            },
            "uids": {
                "0": "538c635145a2fd6d3d754623f12beaea284f3b85"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_1.masksFolder}"
                ],
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "DepthMap_2": {
            "nodeType": "DepthMap",
            "position": [
                993,
                -211
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 65,
                "split": 22
            },
            "uids": {
                "0": "2aa810647c023cc85191cf04931eb1da92e93d2c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_2.input}",
                "imagesFolder": "{PrepareDenseScene_2.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_scale2_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "DepthMapFilter_2": {
            "nodeType": "DepthMapFilter",
            "position": [
                1193,
                -211
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 65,
                "split": 7
            },
            "uids": {
                "0": "0d944fbd8cf6ff175d766dd39506cb9ffa13ba4b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_2.input}",
                "depthMapsFolder": "{DepthMap_2.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "Meshing_2": {
            "nodeType": "Meshing",
            "position": [
                1393,
                -211
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "80ee8ae49d209d3a0e22be22bff98436e9fcd544"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_2.input}",
                "depthMapsFolder": "{DepthMapFilter_2.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "MeshFiltering_2": {
            "nodeType": "MeshFiltering",
            "position": [
                1593,
                -211
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ec480ae89c6bd0a9c9b92d6004d5babe6e76b0e0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_2.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "Texturing_2": {
            "nodeType": "Texturing",
            "position": [
                1793,
                -211
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "9c2297086e4a6061ac2c365e3b4dfbd31cd1386a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_2.output}",
                "imagesFolder": "{DepthMap_2.imagesFolder}",
                "inputMesh": "{MeshFiltering_2.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": false,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "SfMAlignment_2": {
            "nodeType": "SfMAlignment",
            "position": [
                779,
                -886
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 65,
                "split": 1
            },
            "uids": {
                "0": "e4591af2f6ab32cbea81726757c74466d766f20a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "reference": "/CEASEFIRE/scripts/raw2.sfm",
                "method": "from_cameras_poseid",
                "fileMatchingPattern": ".*\\/(.*?)\\.\\w{3}",
                "metadataMatchingList": [],
                "applyScale": true,
                "applyRotation": true,
                "applyTranslation": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm"
            }
        },
        "PrepareDenseScene_3": {
            "nodeType": "PrepareDenseScene",
            "position": [
                978,
                -711
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 65,
                "split": 2
            },
            "uids": {
                "0": "b9b3c1838aceda9773a294dd54b33182c11ad180"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{SfMAlignment_1.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_1.masksFolder}"
                ],
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "Texturing_3": {
            "nodeType": "Texturing",
            "position": [
                1978,
                -711
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "56e87e1e8561dd65f6f2e3b307d73341a815556c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_3.output}",
                "imagesFolder": "{DepthMap_3.imagesFolder}",
                "inputMesh": "{MeshFiltering_3.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": false,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "DepthMap_3": {
            "nodeType": "DepthMap",
            "position": [
                1178,
                -711
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 65,
                "split": 22
            },
            "uids": {
                "0": "5e14fdc368b45faa18464872788a17b684b713c1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_3.input}",
                "imagesFolder": "{PrepareDenseScene_3.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_scale2_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "DepthMapFilter_3": {
            "nodeType": "DepthMapFilter",
            "position": [
                1378,
                -711
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 65,
                "split": 7
            },
            "uids": {
                "0": "14975b51bcfd6278c2c2960f17bd583c3e5d8a69"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_3.input}",
                "depthMapsFolder": "{DepthMap_3.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "Meshing_3": {
            "nodeType": "Meshing",
            "position": [
                1578,
                -711
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "3031c3549981935734dfb046c7e3e7e678b685af"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_3.input}",
                "depthMapsFolder": "{DepthMapFilter_3.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 2.0,
                        "y": 2.0,
                        "z": 2.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "MeshFiltering_3": {
            "nodeType": "MeshFiltering",
            "position": [
                1778,
                -711
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "2179bd46d772aff136345dbd2015de3288f75426"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_3.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "PrepareDenseScene_4": {
            "nodeType": "PrepareDenseScene",
            "position": [
                977,
                -890
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 65,
                "split": 2
            },
            "uids": {
                "0": "102a1f2bb53bdf580677b04f9f0e5472c4609cc0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{SfMAlignment_2.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_1.masksFolder}"
                ],
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "DepthMap_4": {
            "nodeType": "DepthMap",
            "position": [
                1177,
                -890
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 65,
                "split": 22
            },
            "uids": {
                "0": "bc004f0eba93f065622dd31912be2d56ca51b6c7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_4.input}",
                "imagesFolder": "{PrepareDenseScene_4.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_scale2_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "DepthMapFilter_4": {
            "nodeType": "DepthMapFilter",
            "position": [
                1377,
                -890
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 65,
                "split": 7
            },
            "uids": {
                "0": "ca0e56cae8dbf9ec282f2df05575269efae6aed1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_4.input}",
                "depthMapsFolder": "{DepthMap_4.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "Meshing_4": {
            "nodeType": "Meshing",
            "position": [
                1577,
                -890
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "b731d945cd137d652ba931a3044191b9dea46d0a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_4.input}",
                "depthMapsFolder": "{DepthMapFilter_4.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "MeshFiltering_4": {
            "nodeType": "MeshFiltering",
            "position": [
                1777,
                -890
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "0fc152cf703786675ce922e7c2f2bb6c6579979f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_4.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "Texturing_4": {
            "nodeType": "Texturing",
            "position": [
                1977,
                -890
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "13fcd2dea536da1882ae703e41f46d19795627f2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_4.output}",
                "imagesFolder": "{DepthMap_4.imagesFolder}",
                "inputMesh": "{MeshFiltering_4.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": false,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        }
    }
}

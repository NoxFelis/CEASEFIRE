{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.1.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "DepthMap": "3.0",
            "FeatureExtraction": "1.1",
            "Texturing": "6.0",
            "CameraInit": "9.0",
            "ImageMatching": "2.0",
            "DepthMapFilter": "3.0",
            "StructureFromMotion": "2.0",
            "Meshing": "7.0",
            "FeatureMatching": "2.0",
            "PrepareDenseScene": "3.0",
            "MeshFiltering": "3.0"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                2000,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "07a691b0d076440cb01af0aa11072f265acd79f6"
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
                1600,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "fa2879224fedcde5f2d8c76d3de4b1c263d34f90"
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
                1400,
                0
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "f68a036fbdb93da62dc6b9e3671e8c18c9ab61b4"
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
                400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "3f675428c2012244baf65bd32b51a83673d7e227"
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
                200,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "11a34a557bcaa20186fd71cc90946a06f00e3ecd"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
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
                800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "7c9f3d5bac0213fce825a01205749054308acd76"
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
                1000,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "5094fec161e7de64be53acc786c909103e3d474d"
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
                6,
                101
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "0021bbdf0f570cfa4f40d71ea20cb7fa209481e4"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 92049727,
                        "poseId": 92049727,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/C.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:31\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:31\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:31\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 119195062,
                        "poseId": 119195062,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 148986525,
                        "poseId": 148986525,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:22\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:22\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:22\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 581848302,
                        "poseId": 581848302,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N6.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:15\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:15\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:15\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 651623698,
                        "poseId": 651623698,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:28\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:28\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:28\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 695054828,
                        "poseId": 695054828,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S6.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:55\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:55\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:55\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 774581941,
                        "poseId": 774581941,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:47\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:47\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:47\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"270\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1628033317,
                        "poseId": 1628033317,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:20\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:20\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:20\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1784361545,
                        "poseId": 1784361545,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:52\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:52\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:52\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"157.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3856464553,
                        "initialFocalLength": 4.3,
                        "focalLength": 4.3,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 4896,
                        "height": 3672,
                        "sensorWidth": 6.17,
                        "sensorHeight": 4.6275,
                        "serialNumber": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4_Panasonic_DMC-TZ40",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
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
                1200,
                0
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 9,
                "split": 3
            },
            "uids": {
                "0": "2a755eef9fd0a74fbf031541da57bc0587206d0d"
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
                1800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "f31c3633aca8e127d526dd546a49e3525057697a"
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
                600,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "0b0aec079472d97ac41beee91e76cf600e7cb2fd"
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "CameraInit_2": {
            "nodeType": "CameraInit",
            "position": [
                -97,
                -1040
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "caccae2afe083e0aa3b26b7789d9c3812cecfa09"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 92049727,
                        "poseId": 92049727,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/C.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:31\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:31\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:31\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 119195062,
                        "poseId": 119195062,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 148986525,
                        "poseId": 148986525,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:22\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:22\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:22\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 233958997,
                        "poseId": 233958997,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:07\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:07\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:07\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 258598624,
                        "poseId": 258598624,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 533040998,
                        "poseId": 533040998,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:42\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:42\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:42\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 559506288,
                        "poseId": 559506288,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:38\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:38\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:38\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 581848302,
                        "poseId": 581848302,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N6.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:15\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:15\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:15\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 646023776,
                        "poseId": 646023776,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:35\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:35\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:35\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 651623698,
                        "poseId": 651623698,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:28\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:28\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:28\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 695054828,
                        "poseId": 695054828,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S6.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:55\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:55\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:55\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 746561051,
                        "poseId": 746561051,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:49\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:49\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:49\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 774581941,
                        "poseId": 774581941,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:47\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:47\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:47\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"270\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1110649183,
                        "poseId": 1110649183,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:10\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:10\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:10\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1625113014,
                        "poseId": 1625113014,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:19\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:19\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:19\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1628033317,
                        "poseId": 1628033317,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:20\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:20\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:20\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1784361545,
                        "poseId": 1784361545,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:52\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:52\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:52\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"157.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3856464553,
                        "initialFocalLength": 4.3,
                        "focalLength": 4.3,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 4896,
                        "height": 3672,
                        "sensorWidth": 6.17,
                        "sensorHeight": 4.6275,
                        "serialNumber": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4_Panasonic_DMC-TZ40",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
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
        "FeatureExtraction_2": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                160
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "85384a8e4d8f06647b899c6df2e9499fdcee315e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "",
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
        "ImageMatching_2": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                160
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "e76cea63678bf9a5c5ee95de5a9d072f8f2d0829"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_2.input}",
                "featuresFolders": [
                    "{FeatureExtraction_2.output}"
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
        "FeatureMatching_2": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                160
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "1548e8b94bb783f25854bace9fbf08c1a32c82ba"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_2.input}",
                "featuresFolders": "{ImageMatching_2.featuresFolders}",
                "imagePairsList": "{ImageMatching_2.output}",
                "describerTypes": "{FeatureExtraction_2.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "StructureFromMotion_2": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                160
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "c2475d30e3f6d8e2c0f82a0a4d8979eadc97f244"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_2.input}",
                "featuresFolders": "{FeatureMatching_2.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_2.output}"
                ],
                "describerTypes": "{FeatureMatching_2.describerTypes}",
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
        "DepthMapFilter_2": {
            "nodeType": "DepthMapFilter",
            "position": [
                1400,
                160
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "691c22079b87899b6344b5b4d7feb0e39ebecbcf"
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
                1600,
                160
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "9ea667563ef8ed1624b45ca36f1a0c1872bd22d6"
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
        "Texturing_2": {
            "nodeType": "Texturing",
            "position": [
                2000,
                160
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ee4c4e55bdf7e1c1c6f16206a97b71c171fa996a"
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
        "MeshFiltering_2": {
            "nodeType": "MeshFiltering",
            "position": [
                1800,
                160
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "8fe996768054cf77a4a84c46da8ef7d55821a724"
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
        "DepthMap_2": {
            "nodeType": "DepthMap",
            "position": [
                1200,
                160
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 9,
                "split": 3
            },
            "uids": {
                "0": "d75409379e229ed4906d285e885cb8bd9c3fc867"
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
        "PrepareDenseScene_2": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1000,
                160
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "46614fdf899ce198b159fde19ec566e4f08731e1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_2.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent"
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
                1994,
                -209
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ffdf59e19d0d4acac331069e5a1b296bfb9ca5bb"
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
        "Meshing_3": {
            "nodeType": "Meshing",
            "position": [
                1594,
                -209
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "3ada938d89b5a4ed5f0f21954b7187be36072939"
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
        "DepthMapFilter_3": {
            "nodeType": "DepthMapFilter",
            "position": [
                1394,
                -209
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 17,
                "split": 2
            },
            "uids": {
                "0": "67d98be70aad79e94642becee96c3886d311a205"
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
        "ImageMatching_3": {
            "nodeType": "ImageMatching",
            "position": [
                394,
                -209
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "29677279d3ae284819f06d937a073b2d09631b21"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_3.input}",
                "featuresFolders": [
                    "{FeatureExtraction_3.output}"
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
        "FeatureExtraction_3": {
            "nodeType": "FeatureExtraction",
            "position": [
                194,
                -209
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "ad313a416355a08040bb04c7fad8e173fb2e95c2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_2.output}",
                "masksFolder": "",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
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
        "StructureFromMotion_3": {
            "nodeType": "StructureFromMotion",
            "position": [
                794,
                -209
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "44238314b537b763e938bedb0ebbdb2f2263daa7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_3.input}",
                "featuresFolders": "{FeatureMatching_3.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_3.output}"
                ],
                "describerTypes": "{FeatureMatching_3.describerTypes}",
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
        "PrepareDenseScene_3": {
            "nodeType": "PrepareDenseScene",
            "position": [
                994,
                -209
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "449291c600a0cd284128f5885369878ce89adca4"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_3.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent"
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
        "DepthMap_3": {
            "nodeType": "DepthMap",
            "position": [
                1194,
                -209
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 17,
                "split": 6
            },
            "uids": {
                "0": "a1fa552e46bfa9f4b75cf1305451a0a4cdcde8a0"
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
        "MeshFiltering_3": {
            "nodeType": "MeshFiltering",
            "position": [
                1794,
                -209
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "e4ceeda78ee27a35387d3153c062bbb829104480"
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
        "FeatureMatching_3": {
            "nodeType": "FeatureMatching",
            "position": [
                594,
                -209
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "f19ea7cececfd863b8286134d2b1e7a74ee039b6"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_3.input}",
                "featuresFolders": "{ImageMatching_3.featuresFolders}",
                "imagePairsList": "{ImageMatching_3.output}",
                "describerTypes": "{FeatureExtraction_3.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "CameraInit_3": {
            "nodeType": "CameraInit",
            "position": [
                2304,
                -1268
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "7aa6e10473f5ff8e9e808551594cf06e0b69de55"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 92049727,
                        "poseId": 92049727,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/C.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:31\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:31\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:31\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 119195062,
                        "poseId": 119195062,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 148986525,
                        "poseId": 148986525,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:22\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:22\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:22\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 233958997,
                        "poseId": 233958997,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:07\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:07\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:07\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 258598624,
                        "poseId": 258598624,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 499444587,
                        "poseId": 499444587,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:26\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:26\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:26\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 533040998,
                        "poseId": 533040998,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:42\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:42\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:42\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 559506288,
                        "poseId": 559506288,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:38\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:38\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:38\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 578565566,
                        "poseId": 578565566,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:58\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:58\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:58\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 581848302,
                        "poseId": 581848302,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N6.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:15\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:15\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:15\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 587733156,
                        "poseId": 587733156,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 646023776,
                        "poseId": 646023776,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:35\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:35\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:35\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 651623698,
                        "poseId": 651623698,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:28\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:28\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:28\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 695054828,
                        "poseId": 695054828,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S6.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:55\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:55\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:55\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 701848834,
                        "poseId": 701848834,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:24\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:24\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:24\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 746561051,
                        "poseId": 746561051,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:49\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:49\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:49\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 774581941,
                        "poseId": 774581941,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:47\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:47\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:47\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"270\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1110649183,
                        "poseId": 1110649183,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:10\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:10\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:10\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1625113014,
                        "poseId": 1625113014,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:19\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:19\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:19\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1628033317,
                        "poseId": 1628033317,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:20\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:20\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:20\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1729241575,
                        "poseId": 1729241575,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:34\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:34\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:34\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1773912940,
                        "poseId": 1773912940,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:31\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:31\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:31\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1784361545,
                        "poseId": 1784361545,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:52\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:52\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:52\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"157.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1849344236,
                        "poseId": 1849344236,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:15\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:15\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:15\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2027143717,
                        "poseId": 2027143717,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:35\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:35\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:35\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3856464553,
                        "initialFocalLength": 4.3,
                        "focalLength": 4.3,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 4896,
                        "height": 3672,
                        "sensorWidth": 6.17,
                        "sensorHeight": 4.6275,
                        "serialNumber": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4_Panasonic_DMC-TZ40",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
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
        "FeatureExtraction_4": {
            "nodeType": "FeatureExtraction",
            "position": [
                187,
                -392
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "165951224cc631b98018a04b48f980813b71c40e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_2.output}",
                "masksFolder": "",
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
        "ImageMatching_4": {
            "nodeType": "ImageMatching",
            "position": [
                387,
                -392
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "812eda5158e18ee39060c4943ad844116441571e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_4.input}",
                "featuresFolders": [
                    "{FeatureExtraction_4.output}"
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
        "FeatureMatching_4": {
            "nodeType": "FeatureMatching",
            "position": [
                587,
                -392
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "4e10b4ca5046e6b422ecb09a735891383a3518a3"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_4.input}",
                "featuresFolders": "{ImageMatching_4.featuresFolders}",
                "imagePairsList": "{ImageMatching_4.output}",
                "describerTypes": "{FeatureExtraction_4.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "StructureFromMotion_4": {
            "nodeType": "StructureFromMotion",
            "position": [
                787,
                -392
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "eeee21d76228027bbe2d2821ef37ac20c2fd066b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_4.input}",
                "featuresFolders": "{FeatureMatching_4.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_4.output}"
                ],
                "describerTypes": "{FeatureMatching_4.describerTypes}",
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
        "DepthMapFilter_4": {
            "nodeType": "DepthMapFilter",
            "position": [
                1387,
                -392
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 17,
                "split": 2
            },
            "uids": {
                "0": "2231a21dbb889748e08e27ec92947d6e124298de"
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
                1590,
                -392
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "0d787f1a121627bfdde5cd4c4859f363ae31fb63"
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
                1787,
                -392
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d051763a0b0583d0552262ac8a812672adefc9d5"
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
                1987,
                -392
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "44fbb9f32f551773b584aee750364c1bce53d0e9"
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
        },
        "PrepareDenseScene_4": {
            "nodeType": "PrepareDenseScene",
            "position": [
                987,
                -392
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "418a028838972e3552f0dc480fc37c21121f4033"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_4.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent"
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
                1187,
                -392
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 17,
                "split": 6
            },
            "uids": {
                "0": "1bc75b7be0c15080acd4ca43bf5caef4a81a0514"
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
        "CameraInit_4": {
            "nodeType": "CameraInit",
            "position": [
                2305,
                -630
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "3f7c38848e8d426c02a7bf495debfe9d69dc6c9e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 5768224,
                        "poseId": 5768224,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:43\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:43\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:43\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 85493376,
                        "poseId": 85493376,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:55\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:55\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:55\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 92049727,
                        "poseId": 92049727,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/C.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:31\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:31\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:31\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 106304687,
                        "poseId": 106304687,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:28\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:28\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:28\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 119195062,
                        "poseId": 119195062,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 148986525,
                        "poseId": 148986525,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:22\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:22\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:22\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 159688580,
                        "poseId": 159688580,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:38\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:38\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:38\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 233958997,
                        "poseId": 233958997,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:07\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:07\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:07\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 258598624,
                        "poseId": 258598624,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 365768277,
                        "poseId": 365768277,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:06\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:06\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:06\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 432857001,
                        "poseId": 432857001,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:45\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:45\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:45\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 499444587,
                        "poseId": 499444587,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:26\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:26\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:26\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 509505575,
                        "poseId": 509505575,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:47\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:47\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:47\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 533040998,
                        "poseId": 533040998,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:42\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:42\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:42\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 559506288,
                        "poseId": 559506288,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:38\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:38\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:38\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 578565566,
                        "poseId": 578565566,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:58\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:58\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:58\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 581848302,
                        "poseId": 581848302,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N6.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:15\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:15\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:15\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 587733156,
                        "poseId": 587733156,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 646023776,
                        "poseId": 646023776,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:35\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:35\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:35\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 651623698,
                        "poseId": 651623698,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:28\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:28\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:28\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 695054828,
                        "poseId": 695054828,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S6.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:55\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:55\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:55\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 701848834,
                        "poseId": 701848834,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:24\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:24\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:24\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 710795690,
                        "poseId": 710795690,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:03\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:03\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:03\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 746561051,
                        "poseId": 746561051,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:49\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:49\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:49\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 774581941,
                        "poseId": 774581941,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:47\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:47\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:47\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"270\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 857819054,
                        "poseId": 857819054,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:23\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:23\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:23\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1110649183,
                        "poseId": 1110649183,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:10\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:10\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:10\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1178971085,
                        "poseId": 1178971085,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:14\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:14\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:14\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1277562074,
                        "poseId": 1277562074,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:43\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:43\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:43\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1625113014,
                        "poseId": 1625113014,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:19\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:19\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:19\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1628033317,
                        "poseId": 1628033317,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:20\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:20\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:20\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1692946667,
                        "poseId": 1692946667,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:06\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:06\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:06\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1704860026,
                        "poseId": 1704860026,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:15\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:15\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:15\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1729241575,
                        "poseId": 1729241575,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:34\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:34\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:34\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1773912940,
                        "poseId": 1773912940,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:31\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:31\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:31\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1784361545,
                        "poseId": 1784361545,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E5.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:52\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:52\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:52\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"157.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1849344236,
                        "poseId": 1849344236,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:15\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:15\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:15\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1888329132,
                        "poseId": 1888329132,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:30\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:30\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:30\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1992620988,
                        "poseId": 1992620988,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO4.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:55\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:55\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:55\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2027143717,
                        "poseId": 2027143717,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:35\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:35\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:35\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2059298033,
                        "poseId": 2059298033,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:38\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:38\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:38\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3856464553,
                        "initialFocalLength": 4.3,
                        "focalLength": 4.3,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 4896,
                        "height": 3672,
                        "sensorWidth": 6.17,
                        "sensorHeight": 4.6275,
                        "serialNumber": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4_Panasonic_DMC-TZ40",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
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
        "FeatureMatching_5": {
            "nodeType": "FeatureMatching",
            "position": [
                580,
                -592
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "7f0376212fe3faab37f9eec93e541d298fd9cf96"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_4.input}",
                "featuresFolders": "{ImageMatching_4.featuresFolders}",
                "imagePairsList": "{ImageMatching_4.output}",
                "describerTypes": "{FeatureExtraction_4.describerTypes}",
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
                "guidedMatching": false,
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
        "StructureFromMotion_5": {
            "nodeType": "StructureFromMotion",
            "position": [
                780,
                -592
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "9da9b7336fe8c2ef961ea65c36bbe200b656d36a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_5.input}",
                "featuresFolders": "{FeatureMatching_5.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_5.output}"
                ],
                "describerTypes": "{FeatureMatching_5.describerTypes}",
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
        "DepthMapFilter_5": {
            "nodeType": "DepthMapFilter",
            "position": [
                1380,
                -592
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 17,
                "split": 2
            },
            "uids": {
                "0": "61d7248f84189c0e186314fd1eb166035c1621f8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_5.input}",
                "depthMapsFolder": "{DepthMap_5.output}",
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
        "Meshing_5": {
            "nodeType": "Meshing",
            "position": [
                1583,
                -592
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "2f2d763bbd1a1f13ae5f09b1ab77352865d6a264"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_5.input}",
                "depthMapsFolder": "{DepthMapFilter_5.output}",
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
        "MeshFiltering_5": {
            "nodeType": "MeshFiltering",
            "position": [
                1780,
                -592
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "341811c4bbd1ee709410e0db764b5dbf27e78074"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_5.outputMesh}",
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
        "Texturing_5": {
            "nodeType": "Texturing",
            "position": [
                1980,
                -592
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "7fa4497c7c2757937ccdf5139494a7f9bf32a28f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_5.output}",
                "imagesFolder": "{DepthMap_5.imagesFolder}",
                "inputMesh": "{MeshFiltering_5.outputMesh}",
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
        "DepthMap_5": {
            "nodeType": "DepthMap",
            "position": [
                1180,
                -592
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 17,
                "split": 6
            },
            "uids": {
                "0": "9376f354c03304facdf64f36381c61c288d90333"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_5.input}",
                "imagesFolder": "{PrepareDenseScene_5.output}",
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
        "PrepareDenseScene_5": {
            "nodeType": "PrepareDenseScene",
            "position": [
                980,
                -592
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "3edeb1f351e2fb57c19288ef98d424d3c93845e5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_5.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent"
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
        "ImageMatching_5": {
            "nodeType": "ImageMatching",
            "position": [
                371,
                -807
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "571e91997725bc7fb02b31ede24d245a81e4aab8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_5.input}",
                "featuresFolders": [
                    "{FeatureExtraction_5.output}"
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
        "FeatureExtraction_5": {
            "nodeType": "FeatureExtraction",
            "position": [
                171,
                -807
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "e926c88ad2696b7941decc573161d26c7ca3fb89"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_2.output}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
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
        "Texturing_6": {
            "nodeType": "Texturing",
            "position": [
                1971,
                -807
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "7fa28da6321efd7ce7912a926ce068b15185f635"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_6.output}",
                "imagesFolder": "{DepthMap_6.imagesFolder}",
                "inputMesh": "{MeshFiltering_6.outputMesh}",
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
        "Meshing_6": {
            "nodeType": "Meshing",
            "position": [
                1571,
                -807
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "834626538d50cd3c6b783e11cca4eab864c715b1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_6.input}",
                "depthMapsFolder": "{DepthMapFilter_6.output}",
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
        "DepthMapFilter_6": {
            "nodeType": "DepthMapFilter",
            "position": [
                1371,
                -807
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 17,
                "split": 2
            },
            "uids": {
                "0": "8d41e65f82c6f9f4eda8ff4f94bd7609c0f9bea0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_6.input}",
                "depthMapsFolder": "{DepthMap_6.output}",
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
        "StructureFromMotion_6": {
            "nodeType": "StructureFromMotion",
            "position": [
                771,
                -807
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "f0c52da0009fb9660352f31f1c7c707d7a6f1420"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_6.input}",
                "featuresFolders": "{FeatureMatching_6.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_6.output}"
                ],
                "describerTypes": "{FeatureMatching_6.describerTypes}",
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
        "PrepareDenseScene_6": {
            "nodeType": "PrepareDenseScene",
            "position": [
                971,
                -807
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "d1cf80d9beaea6830e02a84d2a7f7de06fbe9c42"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_6.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_5.masksFolder}"
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
        "DepthMap_6": {
            "nodeType": "DepthMap",
            "position": [
                1171,
                -807
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 17,
                "split": 6
            },
            "uids": {
                "0": "03d8029752bba42e93411b2bd8a91036f64d6aa1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_6.input}",
                "imagesFolder": "{PrepareDenseScene_6.output}",
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
        "MeshFiltering_6": {
            "nodeType": "MeshFiltering",
            "position": [
                1771,
                -807
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "2bb981162aea701b59835a60ee8939f79629bc5f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_6.outputMesh}",
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
        "FeatureMatching_6": {
            "nodeType": "FeatureMatching",
            "position": [
                571,
                -807
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "590c6886ed225bd829c336acc306e3bb305676cc"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_5.input}",
                "featuresFolders": "{ImageMatching_5.featuresFolders}",
                "imagePairsList": "{ImageMatching_5.output}",
                "describerTypes": "{FeatureExtraction_5.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "FeatureExtraction_6": {
            "nodeType": "FeatureExtraction",
            "position": [
                180,
                -1677
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "8da9f9b6d80591bac456a570c94a3d9a8a602bab"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_2.output}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent",
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
        "ImageMatching_6": {
            "nodeType": "ImageMatching",
            "position": [
                380,
                -1677
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "3f23dc14bc1936ffdc027450c80ed52b011427c8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_6.input}",
                "featuresFolders": [
                    "{FeatureExtraction_6.output}"
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
        "CameraInit_6": {
            "nodeType": "CameraInit",
            "position": [
                2323,
                -158
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "192ec8c77dc86d8a933e2960d9a5c57f92934677"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 85493376,
                        "poseId": 85493376,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:55\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:55\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:55\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 92049727,
                        "poseId": 92049727,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/C.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:31\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:31\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:31\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 533040998,
                        "poseId": 533040998,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:42\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:42\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:42\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 559506288,
                        "poseId": 559506288,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:38\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:38\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:38\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"247.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 646023776,
                        "poseId": 646023776,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:35\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:35\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:35\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 746561051,
                        "poseId": 746561051,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:49\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:49\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:49\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1110649183,
                        "poseId": 1110649183,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE3.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:10\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:10\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:10\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1625113014,
                        "poseId": 1625113014,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:19\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:19\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:19\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2059298033,
                        "poseId": 2059298033,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E2.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:38\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:38\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:38\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"180\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3856464553,
                        "initialFocalLength": 4.3,
                        "focalLength": 4.3,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 4896,
                        "height": 3672,
                        "sensorWidth": 6.17,
                        "sensorHeight": 4.6275,
                        "serialNumber": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4_Panasonic_DMC-TZ40",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
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
        "FeatureMatching_7": {
            "nodeType": "FeatureMatching",
            "position": [
                580,
                -1677
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "c293da5d07b8e4ce1c7e13795cd9c63face7f316"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_6.input}",
                "featuresFolders": "{ImageMatching_6.featuresFolders}",
                "imagePairsList": "{ImageMatching_6.output}",
                "describerTypes": "{FeatureExtraction_6.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "StructureFromMotion_7": {
            "nodeType": "StructureFromMotion",
            "position": [
                780,
                -1677
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "b09b73ff62ea8977a1be77f6d3ae4777ad4289aa"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_7.input}",
                "featuresFolders": "{FeatureMatching_7.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_7.output}"
                ],
                "describerTypes": "{FeatureMatching_7.describerTypes}",
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
        "Meshing_7": {
            "nodeType": "Meshing",
            "position": [
                1580,
                -1677
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "3c961094068d1af36ef3a5b330c5d7ba215a65fd"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_7.input}",
                "depthMapsFolder": "{DepthMapFilter_7.output}",
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
        "MeshFiltering_7": {
            "nodeType": "MeshFiltering",
            "position": [
                1780,
                -1677
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ffe0b93ef2ce3a491b0fedb1dbc4584dc6c0edbc"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_7.outputMesh}",
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
        "Texturing_7": {
            "nodeType": "Texturing",
            "position": [
                1980,
                -1677
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "cb7e791169a3cb5e42aa4636aa57cd036013b758"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_7.output}",
                "imagesFolder": "{DepthMap_7.imagesFolder}",
                "inputMesh": "{MeshFiltering_7.outputMesh}",
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
        "DepthMapFilter_7": {
            "nodeType": "DepthMapFilter",
            "position": [
                1380,
                -1677
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 17,
                "split": 2
            },
            "uids": {
                "0": "ec00453b112bab3eb600004956c79bd4887724e7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_7.input}",
                "depthMapsFolder": "{DepthMap_7.output}",
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
        "DepthMap_7": {
            "nodeType": "DepthMap",
            "position": [
                1180,
                -1677
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 17,
                "split": 6
            },
            "uids": {
                "0": "7810b79cd3b6628f2d8c6958e9d1ddbebd4c683e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_7.input}",
                "imagesFolder": "{PrepareDenseScene_7.output}",
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
        "PrepareDenseScene_7": {
            "nodeType": "PrepareDenseScene",
            "position": [
                980,
                -1677
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "56201c6a6cbfefbd3e80eecf0ad81d47863d0411"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_7.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_6.masksFolder}"
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
        "FeatureExtraction_7": {
            "nodeType": "FeatureExtraction",
            "position": [
                2490,
                -869
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "09ce3d8dda0b8a34064654a3b411512d7beec449"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_3.output}",
                "masksFolder": "",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
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
        "ImageMatching_7": {
            "nodeType": "ImageMatching",
            "position": [
                2690,
                -869
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "5c6a87ae10b089f2642010b6a6ada39cfa7ff944"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_7.input}",
                "featuresFolders": [
                    "{FeatureExtraction_7.output}"
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
        "CameraInit_7": {
            "nodeType": "CameraInit",
            "position": [
                4699,
                -1575
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "8180e98be3ccc98fbf27e4189da4f438496363e6"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 92049727,
                        "poseId": 92049727,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/C.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:31\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:31\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:31\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 499444587,
                        "poseId": 499444587,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SO1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:26\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:26\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:26\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 578565566,
                        "poseId": 578565566,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/O1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:58\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:58\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:58\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 587733156,
                        "poseId": 587733156,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/SE1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:51:01\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:51:01\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:51:01\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 701848834,
                        "poseId": 701848834,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/S1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:50:24\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:50:24\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:50:24\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1729241575,
                        "poseId": 1729241575,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NO1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:34\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:34\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:34\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1773912940,
                        "poseId": 1773912940,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/N1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:49:31\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:49:31\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:49:31\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1849344236,
                        "poseId": 1849344236,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/NE1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:52:15\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:52:15\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:52:15\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2027143717,
                        "poseId": 2027143717,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/E1.JPG",
                        "intrinsicId": 3856464553,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"6.170000\", \"Artist\": \"\", \"DateTime\": \"2023:04:14 12:48:35\", \"Exif:ColorSpace\": \"1\", \"Exif:CompressedBitsPerPixel\": \"4\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"0\", \"Exif:DateTimeDigitized\": \"2023:04:14 12:48:35\", \"Exif:DateTimeOriginal\": \"2023:04:14 12:48:35\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0230\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"1\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.3\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:GainControl\": \"2\", \"Exif:LightSource\": \"0\", \"Exif:MaxApertureValue\": \"3.44531\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"400\", \"Exif:PixelXDimension\": \"4896\", \"Exif:PixelYDimension\": \"3672\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:SensitivityType\": \"1\", \"Exif:Sharpness\": \"0\", \"Exif:WhiteBalance\": \"1\", \"Exif:YCbCrPositioning\": \"2\", \"ExposureTime\": \"0.0166667\", \"FNumber\": \"3.3\", \"GPS:Altitude\": \"0\", \"GPS:AltitudeRef\": \"0\", \"GPS:ImgDirection\": \"202.5\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:VersionID\": \"2, 3, 0, 0\", \"Make\": \"Panasonic\", \"Model\": \"DMC-TZ40\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"Ver.1.0  \", \"XResolution\": \"180\", \"YResolution\": \"180\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3856464553,
                        "initialFocalLength": 4.3,
                        "focalLength": 4.3,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 4896,
                        "height": 3672,
                        "sensorWidth": 6.17,
                        "sensorHeight": 4.6275,
                        "serialNumber": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4_Panasonic_DMC-TZ40",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
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
        "FeatureMatching_8": {
            "nodeType": "FeatureMatching",
            "position": [
                571,
                -1006
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "25ab5bb716ab8997d41aca4754fd12e52ed3aef2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_5.input}",
                "featuresFolders": "{ImageMatching_5.featuresFolders}",
                "imagePairsList": "{ImageMatching_5.output}",
                "describerTypes": "{FeatureExtraction_5.describerTypes}",
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
                "guidedMatching": false,
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
        "StructureFromMotion_8": {
            "nodeType": "StructureFromMotion",
            "position": [
                771,
                -1006
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "af5a5d05e8738b2a39ae9f0120aab19f4bfa7e76"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_8.input}",
                "featuresFolders": "{FeatureMatching_8.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_8.output}"
                ],
                "describerTypes": "{FeatureMatching_8.describerTypes}",
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
        "Meshing_8": {
            "nodeType": "Meshing",
            "position": [
                1571,
                -1006
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "3fd6bde64abbf7dbcf68071743d3e656ca188efb"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_8.input}",
                "depthMapsFolder": "{DepthMapFilter_8.output}",
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
        "MeshFiltering_8": {
            "nodeType": "MeshFiltering",
            "position": [
                1771,
                -1006
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "a8691b5461c846228ad9c5da6f5bff58d359b59c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_8.outputMesh}",
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
        "Texturing_8": {
            "nodeType": "Texturing",
            "position": [
                1971,
                -1006
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "530352e7b7e2874fb90a33272d1ed2ac30393838"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_8.output}",
                "imagesFolder": "{DepthMap_8.imagesFolder}",
                "inputMesh": "{MeshFiltering_8.outputMesh}",
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
        "DepthMapFilter_8": {
            "nodeType": "DepthMapFilter",
            "position": [
                1371,
                -1006
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 17,
                "split": 2
            },
            "uids": {
                "0": "4f71b6cc9ea7b70fab3256646392ba2160b3871f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_8.input}",
                "depthMapsFolder": "{DepthMap_8.output}",
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
        "DepthMap_8": {
            "nodeType": "DepthMap",
            "position": [
                1171,
                -1006
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 17,
                "split": 6
            },
            "uids": {
                "0": "26374734e5ca6d8829380a31c2c0e1575f2960c6"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_8.input}",
                "imagesFolder": "{PrepareDenseScene_8.output}",
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
        "PrepareDenseScene_8": {
            "nodeType": "PrepareDenseScene",
            "position": [
                971,
                -1006
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "81204a9cec461893966783b69a0ef97cc6a17a1c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_8.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_5.masksFolder}"
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
        "FeatureExtraction_8": {
            "nodeType": "FeatureExtraction",
            "position": [
                2481,
                -1067
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "801152d98dfa971c4a92dcdc52e16a9731620fdb"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_3.output}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
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
        "ImageMatching_8": {
            "nodeType": "ImageMatching",
            "position": [
                2681,
                -1067
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "b0ada0ea989a1691c53bd045e5f04709b9df4879"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_8.input}",
                "featuresFolders": [
                    "{FeatureExtraction_8.output}"
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
        "FeatureMatching_9": {
            "nodeType": "FeatureMatching",
            "position": [
                571,
                -1205
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "2dd4b8c2754b14f371c23c9e13f0b6318c514945"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_5.input}",
                "featuresFolders": "{ImageMatching_5.featuresFolders}",
                "imagePairsList": "{ImageMatching_5.output}",
                "describerTypes": "{FeatureExtraction_5.describerTypes}",
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
                "crossMatching": false,
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
        "StructureFromMotion_9": {
            "nodeType": "StructureFromMotion",
            "position": [
                771,
                -1205
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "b6ac5f225d9e2dfdd38146e1ecb350d22ef84342"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_9.input}",
                "featuresFolders": "{FeatureMatching_9.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_9.output}"
                ],
                "describerTypes": "{FeatureMatching_9.describerTypes}",
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
        "Meshing_9": {
            "nodeType": "Meshing",
            "position": [
                1571,
                -1205
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "767e019831315ef8f98fce9780f1a3c72db7a706"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_9.input}",
                "depthMapsFolder": "{DepthMapFilter_9.output}",
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
        "MeshFiltering_9": {
            "nodeType": "MeshFiltering",
            "position": [
                1771,
                -1205
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "41f78c2244978f09cc68ec8fb3eb0f6ad583fdf6"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_9.outputMesh}",
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
        "Texturing_9": {
            "nodeType": "Texturing",
            "position": [
                1971,
                -1205
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "fa4eaeabe9ad17c2eb23637d1cd26425a36b7e92"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_9.output}",
                "imagesFolder": "{DepthMap_9.imagesFolder}",
                "inputMesh": "{MeshFiltering_9.outputMesh}",
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
        "DepthMap_9": {
            "nodeType": "DepthMap",
            "position": [
                1171,
                -1205
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 17,
                "split": 6
            },
            "uids": {
                "0": "b20650c4dfb7f9e4aaa1b306b27c35b4a3a7ab49"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_9.input}",
                "imagesFolder": "{PrepareDenseScene_9.output}",
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
        "DepthMapFilter_9": {
            "nodeType": "DepthMapFilter",
            "position": [
                1371,
                -1205
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 17,
                "split": 2
            },
            "uids": {
                "0": "bb96c42acd4c46127d348ddb96645f2385fb69e7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_9.input}",
                "depthMapsFolder": "{DepthMap_9.output}",
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
        "PrepareDenseScene_9": {
            "nodeType": "PrepareDenseScene",
            "position": [
                971,
                -1205
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "1f452a183ccd349272040c1d6dce8e4238c77938"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_9.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_5.masksFolder}"
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
        "FeatureExtraction_9": {
            "nodeType": "FeatureExtraction",
            "position": [
                2489,
                -1665
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "7c79b48f8ba6813193b0c95e56f02ee647ed498c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_3.output}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "high",
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
        "ImageMatching_9": {
            "nodeType": "ImageMatching",
            "position": [
                2689,
                -1665
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "1b5d039220e751e7f79ace38ac56d80bc2487b07"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_9.input}",
                "featuresFolders": [
                    "{FeatureExtraction_9.output}"
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
        "FeatureMatching_10": {
            "nodeType": "FeatureMatching",
            "position": [
                569,
                -1411
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "be1414d8ccf71516a12696eaade72b891e83539b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_5.input}",
                "featuresFolders": "{ImageMatching_5.featuresFolders}",
                "imagePairsList": "{ImageMatching_5.output}",
                "describerTypes": "{FeatureExtraction_5.describerTypes}",
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
        "StructureFromMotion_10": {
            "nodeType": "StructureFromMotion",
            "position": [
                769,
                -1411
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "3b5041a2d74b31e5bc6ecfc67560ee4bbdcedf2b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_10.input}",
                "featuresFolders": "{FeatureMatching_10.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_10.output}"
                ],
                "describerTypes": "{FeatureMatching_10.describerTypes}",
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
        "Meshing_10": {
            "nodeType": "Meshing",
            "position": [
                1569,
                -1411
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "dfa305b81ec0e5d5cff73aa89242394a8adf1f3f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_10.input}",
                "depthMapsFolder": "{DepthMapFilter_10.output}",
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
        "Texturing_10": {
            "nodeType": "Texturing",
            "position": [
                1969,
                -1411
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "b964e8f0b921e21cf0d2c4c807c62e7f672fb528"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_10.output}",
                "imagesFolder": "{DepthMap_10.imagesFolder}",
                "inputMesh": "{MeshFiltering_10.outputMesh}",
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
        "MeshFiltering_10": {
            "nodeType": "MeshFiltering",
            "position": [
                1769,
                -1411
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "794a5e7c528d2d399983355daf1471510af2a1e4"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_10.outputMesh}",
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
        "DepthMap_10": {
            "nodeType": "DepthMap",
            "position": [
                1169,
                -1411
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 17,
                "split": 6
            },
            "uids": {
                "0": "772423099fbb2b6905699486e932f693dbd58bd3"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_10.input}",
                "imagesFolder": "{PrepareDenseScene_10.output}",
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
        "DepthMapFilter_10": {
            "nodeType": "DepthMapFilter",
            "position": [
                1369,
                -1411
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 17,
                "split": 2
            },
            "uids": {
                "0": "caa86057fcd862a9371b4a889c36951cd2f71dc6"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_10.input}",
                "depthMapsFolder": "{DepthMap_10.output}",
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
        "PrepareDenseScene_10": {
            "nodeType": "PrepareDenseScene",
            "position": [
                969,
                -1411
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 17,
                "split": 1
            },
            "uids": {
                "0": "30a915ffc2199e78a77ba897c7b8d5b623668e74"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_10.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_5.masksFolder}"
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
        "ImageMatching_10": {
            "nodeType": "ImageMatching",
            "position": [
                2696,
                -632
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "5836ae6f6fd555b15913cff777e2c0bb0c0c03c7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_10.input}",
                "featuresFolders": [
                    "{FeatureExtraction_10.output}"
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
        "FeatureExtraction_10": {
            "nodeType": "FeatureExtraction",
            "position": [
                2496,
                -632
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "ab6a6e23d5a97d1aba2fb8060351a88a8a941210"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_4.output}",
                "masksFolder": "",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
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
        "FeatureMatching_11": {
            "nodeType": "FeatureMatching",
            "position": [
                2890,
                -869
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 25,
                "split": 2
            },
            "uids": {
                "0": "185ab173c4aae85950d70184c342b3938b7f2446"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_7.input}",
                "featuresFolders": "{ImageMatching_7.featuresFolders}",
                "imagePairsList": "{ImageMatching_7.output}",
                "describerTypes": "{FeatureExtraction_7.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "StructureFromMotion_11": {
            "nodeType": "StructureFromMotion",
            "position": [
                3090,
                -869
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "831fc1bc6176a4a716d6395d31012f4116bc0ed5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_11.input}",
                "featuresFolders": "{FeatureMatching_11.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_11.output}"
                ],
                "describerTypes": "{FeatureMatching_11.describerTypes}",
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
        "DepthMapFilter_11": {
            "nodeType": "DepthMapFilter",
            "position": [
                3690,
                -869
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 25,
                "split": 3
            },
            "uids": {
                "0": "2c501aa085e1d095d471bc78035e70a146aaaf7e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_11.input}",
                "depthMapsFolder": "{DepthMap_11.output}",
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
        "Meshing_11": {
            "nodeType": "Meshing",
            "position": [
                3890,
                -869
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "b88736c4b5f80f957fe9adb6ca993ed1edaf56c8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_11.input}",
                "depthMapsFolder": "{DepthMapFilter_11.output}",
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
        "MeshFiltering_11": {
            "nodeType": "MeshFiltering",
            "position": [
                4090,
                -869
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "2818870193d62dffbfcb46d54eacca53de9ee600"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_11.outputMesh}",
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
        "Texturing_11": {
            "nodeType": "Texturing",
            "position": [
                4290,
                -869
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "739251e4574a0fa3634ebf0fc753be5ce61f1996"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_11.output}",
                "imagesFolder": "{DepthMap_11.imagesFolder}",
                "inputMesh": "{MeshFiltering_11.outputMesh}",
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
        "PrepareDenseScene_11": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3290,
                -869
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "301b0e08d03015dbe1ae1714e1a9cffea3378454"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_11.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent"
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
        "DepthMap_11": {
            "nodeType": "DepthMap",
            "position": [
                3490,
                -869
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 25,
                "split": 9
            },
            "uids": {
                "0": "93f92cb52d13508531f2207251c6e267f2bcabea"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_11.input}",
                "imagesFolder": "{PrepareDenseScene_11.output}",
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
        "FeatureExtraction_11": {
            "nodeType": "FeatureExtraction",
            "position": [
                2492,
                -436
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "b4f7cf46b788a9968071a00839944c8bbb8cbc96"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_4.output}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "high",
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
        "ImageMatching_11": {
            "nodeType": "ImageMatching",
            "position": [
                2692,
                -435
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "da1fb1cb76158780318c5433c7930a45fa66b73e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_11.input}",
                "featuresFolders": [
                    "{FeatureExtraction_11.output}"
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
        "FeatureMatching_12": {
            "nodeType": "FeatureMatching",
            "position": [
                2881,
                -1067
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 25,
                "split": 2
            },
            "uids": {
                "0": "243d82c4279498c0aa2fd673e11b91767756ad2f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_8.input}",
                "featuresFolders": "{ImageMatching_8.featuresFolders}",
                "imagePairsList": "{ImageMatching_8.output}",
                "describerTypes": "{FeatureExtraction_8.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "StructureFromMotion_12": {
            "nodeType": "StructureFromMotion",
            "position": [
                3081,
                -1067
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "f3a4d7de3305f401eed0f54c7874ee179eb67db0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_12.input}",
                "featuresFolders": "{FeatureMatching_12.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_12.output}"
                ],
                "describerTypes": "{FeatureMatching_12.describerTypes}",
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
        "DepthMapFilter_12": {
            "nodeType": "DepthMapFilter",
            "position": [
                3681,
                -1067
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 25,
                "split": 3
            },
            "uids": {
                "0": "a48ad3815ba1fcc56be0159351c98e4faeb2c6d1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_12.input}",
                "depthMapsFolder": "{DepthMap_12.output}",
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
        "Meshing_12": {
            "nodeType": "Meshing",
            "position": [
                3881,
                -1067
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "a0261f15f4252d71701821e369def1d8811a9554"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_12.input}",
                "depthMapsFolder": "{DepthMapFilter_12.output}",
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
        "MeshFiltering_12": {
            "nodeType": "MeshFiltering",
            "position": [
                4081,
                -1067
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "5ede6b5cbbf0ae779cc38ee4b7e7a95ce31f9b09"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_12.outputMesh}",
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
        "Texturing_12": {
            "nodeType": "Texturing",
            "position": [
                4281,
                -1067
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "57a9d6c3e6928ffd6b86d914db61e96e23bd9e20"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_12.output}",
                "imagesFolder": "{DepthMap_12.imagesFolder}",
                "inputMesh": "{MeshFiltering_12.outputMesh}",
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
        "DepthMap_12": {
            "nodeType": "DepthMap",
            "position": [
                3481,
                -1067
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 25,
                "split": 9
            },
            "uids": {
                "0": "98adb212216e40e8ebc830c27350faf9e9917a47"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_12.input}",
                "imagesFolder": "{PrepareDenseScene_12.output}",
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
        "PrepareDenseScene_12": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3281,
                -1067
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "8d5b0040aa1d4d4cc5f9c71223508382f53f0e52"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_12.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_8.masksFolder}"
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
        "ImageMatching_12": {
            "nodeType": "ImageMatching",
            "position": [
                2751,
                -161
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "acec2630bab20fe85d396ed8b16dea0870bb5fe2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_12.input}",
                "featuresFolders": [
                    "{FeatureExtraction_12.output}"
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
        "FeatureExtraction_12": {
            "nodeType": "FeatureExtraction",
            "position": [
                2551,
                -161
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "a9a0276caa06028ec63642dae8919bd9277b9125"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_6.output}",
                "masksFolder": "",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
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
        "FeatureMatching_13": {
            "nodeType": "FeatureMatching",
            "position": [
                2879,
                -1260
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 25,
                "split": 2
            },
            "uids": {
                "0": "bd33d8b0b4eeabdfafba443a1adfb50ad905db8d"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_8.input}",
                "featuresFolders": "{ImageMatching_8.featuresFolders}",
                "imagePairsList": "{ImageMatching_8.output}",
                "describerTypes": "{FeatureExtraction_8.describerTypes}",
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
                "crossMatching": false,
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
        "StructureFromMotion_13": {
            "nodeType": "StructureFromMotion",
            "position": [
                3079,
                -1260
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "4d89b622607bb6aca08313626192e8f7e1ae6d96"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_13.input}",
                "featuresFolders": "{FeatureMatching_13.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_13.output}"
                ],
                "describerTypes": "{FeatureMatching_13.describerTypes}",
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
        "DepthMapFilter_13": {
            "nodeType": "DepthMapFilter",
            "position": [
                3679,
                -1260
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 25,
                "split": 3
            },
            "uids": {
                "0": "1067e3daaebce0e80091d8d6fb18de8a45a440e4"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_13.input}",
                "depthMapsFolder": "{DepthMap_13.output}",
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
        "Meshing_13": {
            "nodeType": "Meshing",
            "position": [
                3879,
                -1260
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "cd4fcc37e97c968a77f5b71544d1d8ffd85d3620"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_13.input}",
                "depthMapsFolder": "{DepthMapFilter_13.output}",
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
        "MeshFiltering_13": {
            "nodeType": "MeshFiltering",
            "position": [
                4079,
                -1260
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "1ea08045bbe2e72372c20609dfb107ef44ffa16b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_13.outputMesh}",
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
        "Texturing_13": {
            "nodeType": "Texturing",
            "position": [
                4279,
                -1260
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "24f1b252babcd9533df5beb6d70fb415699b8532"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_13.output}",
                "imagesFolder": "{DepthMap_13.imagesFolder}",
                "inputMesh": "{MeshFiltering_13.outputMesh}",
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
        "PrepareDenseScene_13": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3279,
                -1260
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "d415f60ba710a4fedf6eb29e76dbc3d3ae18d38b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_13.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_8.masksFolder}"
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
        "DepthMap_13": {
            "nodeType": "DepthMap",
            "position": [
                3479,
                -1260
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 25,
                "split": 9
            },
            "uids": {
                "0": "836bc37299d3c775be5fffab5326e042bae71c18"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_13.input}",
                "imagesFolder": "{PrepareDenseScene_13.output}",
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
        "FeatureExtraction_13": {
            "nodeType": "FeatureExtraction",
            "position": [
                2548,
                30
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "a9a0276caa06028ec63642dae8919bd9277b9125"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_6.output}",
                "masksFolder": "",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
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
        "ImageMatching_13": {
            "nodeType": "ImageMatching",
            "position": [
                2748,
                30
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "acec2630bab20fe85d396ed8b16dea0870bb5fe2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_13.input}",
                "featuresFolders": [
                    "{FeatureExtraction_13.output}"
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
        "FeatureMatching_14": {
            "nodeType": "FeatureMatching",
            "position": [
                2883,
                -1456
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 25,
                "split": 2
            },
            "uids": {
                "0": "b0723b5fbabd67539a1230570c65dd7524a2d336"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_8.input}",
                "featuresFolders": "{ImageMatching_8.featuresFolders}",
                "imagePairsList": "{ImageMatching_8.output}",
                "describerTypes": "{FeatureExtraction_8.describerTypes}",
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
        "StructureFromMotion_14": {
            "nodeType": "StructureFromMotion",
            "position": [
                3083,
                -1456
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "5669efe8c09cdb3b690136b9646762b96993c9ed"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_14.input}",
                "featuresFolders": "{FeatureMatching_14.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_14.output}"
                ],
                "describerTypes": "{FeatureMatching_14.describerTypes}",
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
        "Meshing_14": {
            "nodeType": "Meshing",
            "position": [
                3883,
                -1456
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "614bbae9ee5f4d6a728d8f5c34c833335d6611ab"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_14.input}",
                "depthMapsFolder": "{DepthMapFilter_14.output}",
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
        "MeshFiltering_14": {
            "nodeType": "MeshFiltering",
            "position": [
                4083,
                -1456
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "e3fa6cab39e6cd64fcea72f702f9c5362d6e4e0b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_14.outputMesh}",
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
        "Texturing_14": {
            "nodeType": "Texturing",
            "position": [
                4283,
                -1456
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "54464a0cae1f07ab5d427d3cd8ecf08461f71a61"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_14.output}",
                "imagesFolder": "{DepthMap_14.imagesFolder}",
                "inputMesh": "{MeshFiltering_14.outputMesh}",
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
        "DepthMap_14": {
            "nodeType": "DepthMap",
            "position": [
                3483,
                -1456
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 25,
                "split": 9
            },
            "uids": {
                "0": "da8f499ca91b20725aed136abf1fcfadcab0aa2a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_14.input}",
                "imagesFolder": "{PrepareDenseScene_14.output}",
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
        "DepthMapFilter_14": {
            "nodeType": "DepthMapFilter",
            "position": [
                3683,
                -1456
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 25,
                "split": 3
            },
            "uids": {
                "0": "832eab0663e03df10aafb40f7c5ff89a0d27a89b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_14.input}",
                "depthMapsFolder": "{DepthMap_14.output}",
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
        "PrepareDenseScene_14": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3283,
                -1456
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "012f4f75cf27c53d249f379097d52c040d6c7c8f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_14.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_8.masksFolder}"
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
        "ImageMatching_14": {
            "nodeType": "ImageMatching",
            "position": [
                5102,
                -1585
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "3c85b4b764479e7802af9aa5a79e64cc0ffb7e6e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_14.input}",
                "featuresFolders": [
                    "{FeatureExtraction_14.output}"
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
        "FeatureExtraction_14": {
            "nodeType": "FeatureExtraction",
            "position": [
                4902,
                -1585
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "bb1ce815fc9ee43be99e68914f7830ed2df607f5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_7.output}",
                "masksFolder": "",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "high",
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
        "FeatureMatching_15": {
            "nodeType": "FeatureMatching",
            "position": [
                2889,
                -1665
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 25,
                "split": 2
            },
            "uids": {
                "0": "9452151684a3affa1a91996790c5a76c2b137d38"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_9.input}",
                "featuresFolders": "{ImageMatching_9.featuresFolders}",
                "imagePairsList": "{ImageMatching_9.output}",
                "describerTypes": "{FeatureExtraction_9.describerTypes}",
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
        "StructureFromMotion_15": {
            "nodeType": "StructureFromMotion",
            "position": [
                3089,
                -1665
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "56dee979ccf4ed8375c5fcf9340703b5a44293db"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_15.input}",
                "featuresFolders": "{FeatureMatching_15.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_15.output}"
                ],
                "describerTypes": "{FeatureMatching_15.describerTypes}",
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
        "PrepareDenseScene_15": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3289,
                -1665
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "2b074edc1bf63f7c6de35110ebade1740eac85f1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_15.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_9.masksFolder}"
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
        "DepthMap_15": {
            "nodeType": "DepthMap",
            "position": [
                3489,
                -1665
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 25,
                "split": 9
            },
            "uids": {
                "0": "126a33cb8d387a868a8e4b7f665fe574df4cf928"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_15.input}",
                "imagesFolder": "{PrepareDenseScene_15.output}",
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
        "DepthMapFilter_15": {
            "nodeType": "DepthMapFilter",
            "position": [
                3689,
                -1665
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 25,
                "split": 3
            },
            "uids": {
                "0": "11f6fa8b2cd1c7f006b4a39dcd826743a5a9b50a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_15.input}",
                "depthMapsFolder": "{DepthMap_15.output}",
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
        "Meshing_15": {
            "nodeType": "Meshing",
            "position": [
                3889,
                -1665
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "adbabdc1d6e54395f4eefaf99df46f42571ea6ce"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_15.input}",
                "depthMapsFolder": "{DepthMapFilter_15.output}",
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
        "MeshFiltering_15": {
            "nodeType": "MeshFiltering",
            "position": [
                4089,
                -1665
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "3a495275f79a36779280518e928799394176ee9b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_15.outputMesh}",
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
        "Texturing_15": {
            "nodeType": "Texturing",
            "position": [
                4289,
                -1665
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "6c443025ac9ef189fac9838006db008d0cf830ff"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_15.output}",
                "imagesFolder": "{DepthMap_15.imagesFolder}",
                "inputMesh": "{MeshFiltering_15.outputMesh}",
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
        "FeatureExtraction_15": {
            "nodeType": "FeatureExtraction",
            "position": [
                4903,
                -1402
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "a86ba9244cfa3584fe1b1961f2291c147440fa1d"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_7.output}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
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
        "ImageMatching_15": {
            "nodeType": "ImageMatching",
            "position": [
                5103,
                -1402
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "4cd8ed9d623e2c3ffe1e82c7ed72aa941a5a554e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_15.input}",
                "featuresFolders": [
                    "{FeatureExtraction_15.output}"
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
        "Texturing_16": {
            "nodeType": "Texturing",
            "position": [
                4296,
                -632
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "239760c3568c5691f055fc9b2d55d7b8049f5bbe"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_16.output}",
                "imagesFolder": "{DepthMap_16.imagesFolder}",
                "inputMesh": "{MeshFiltering_16.outputMesh}",
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
        "Meshing_16": {
            "nodeType": "Meshing",
            "position": [
                3896,
                -632
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "4513a4394253f9bfbd57f5745d248784ae940e5a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_16.input}",
                "depthMapsFolder": "{DepthMapFilter_16.output}",
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
        "DepthMapFilter_16": {
            "nodeType": "DepthMapFilter",
            "position": [
                3696,
                -632
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "7824ffe5b38f9798015147dee76cd112155768e2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_16.input}",
                "depthMapsFolder": "{DepthMap_16.output}",
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
        "StructureFromMotion_16": {
            "nodeType": "StructureFromMotion",
            "position": [
                3096,
                -632
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "702187ae3d2b47962ce1120f1713217ce68a5d32"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_16.input}",
                "featuresFolders": "{FeatureMatching_16.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_16.output}"
                ],
                "describerTypes": "{FeatureMatching_16.describerTypes}",
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
        "PrepareDenseScene_16": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3296,
                -632
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "5501901e22b81ce8ed9d596bf7c92de3d1512c39"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_16.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent"
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
        "DepthMap_16": {
            "nodeType": "DepthMap",
            "position": [
                3496,
                -632
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "c9f0c05333709d760b34c164468e2321181f47ba"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_16.input}",
                "imagesFolder": "{PrepareDenseScene_16.output}",
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
        "MeshFiltering_16": {
            "nodeType": "MeshFiltering",
            "position": [
                4096,
                -632
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "33f524221118095ae4d67f4d38a344dfacc33ab3"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_16.outputMesh}",
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
        "FeatureMatching_16": {
            "nodeType": "FeatureMatching",
            "position": [
                2896,
                -632
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "bd3920a796fac91f86df9817707fccac72b32b2a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_10.input}",
                "featuresFolders": "{ImageMatching_10.featuresFolders}",
                "imagePairsList": "{ImageMatching_10.output}",
                "describerTypes": "{FeatureExtraction_10.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "FeatureMatching_17": {
            "nodeType": "FeatureMatching",
            "position": [
                2892,
                -435
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "3100f866993ba38b9fa0aee1a7d5cd32a7454bee"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_11.input}",
                "featuresFolders": "{ImageMatching_11.featuresFolders}",
                "imagePairsList": "{ImageMatching_11.output}",
                "describerTypes": "{FeatureExtraction_11.describerTypes}",
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
        "StructureFromMotion_17": {
            "nodeType": "StructureFromMotion",
            "position": [
                3092,
                -435
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "d7e9d3d993a43e3b39ec4028f291dac4b5b1dc77"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_17.input}",
                "featuresFolders": "{FeatureMatching_17.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_17.output}"
                ],
                "describerTypes": "{FeatureMatching_17.describerTypes}",
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
        "PrepareDenseScene_17": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3292,
                -435
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "47ef3a6b752d61f070661e54795c10ab5a3f0f1c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_17.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_11.masksFolder}"
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
        "DepthMap_17": {
            "nodeType": "DepthMap",
            "position": [
                3492,
                -435
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "309b97c9885e1ceed0b539efd243a0e86eef5de8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_17.input}",
                "imagesFolder": "{PrepareDenseScene_17.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 512,
                    "tileBufferHeight": 512,
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
        "DepthMapFilter_17": {
            "nodeType": "DepthMapFilter",
            "position": [
                3692,
                -435
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "754f5ee96446d444a4a983426d00a6b047dd3091"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_17.input}",
                "depthMapsFolder": "{DepthMap_17.output}",
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
        "Meshing_17": {
            "nodeType": "Meshing",
            "position": [
                3892,
                -435
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ea2ef585bfee8ace9574e8461ea307edcc9b9958"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_17.input}",
                "depthMapsFolder": "{DepthMapFilter_17.output}",
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
        "Texturing_17": {
            "nodeType": "Texturing",
            "position": [
                4292,
                -435
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "04ca62eecb402a216368704cd1fb0ebd83ef717d"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_17.output}",
                "imagesFolder": "{DepthMap_17.imagesFolder}",
                "inputMesh": "{MeshFiltering_17.outputMesh}",
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
        "MeshFiltering_17": {
            "nodeType": "MeshFiltering",
            "position": [
                4092,
                -435
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "cbdf0aa2ddb033f67492617f3abf67a0cc32fedc"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_17.outputMesh}",
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
        "Texturing_18": {
            "nodeType": "Texturing",
            "position": [
                4351,
                -161
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d297631afe048274b6a2bc34de404a97d77a93a3"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_18.output}",
                "imagesFolder": "{DepthMap_18.imagesFolder}",
                "inputMesh": "{MeshFiltering_18.outputMesh}",
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
        "Meshing_18": {
            "nodeType": "Meshing",
            "position": [
                3951,
                -161
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "cdf3dab1d4c57fdba413cbe6ee4f4598b2d5c3f8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_18.input}",
                "depthMapsFolder": "{DepthMapFilter_18.output}",
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
        "DepthMapFilter_18": {
            "nodeType": "DepthMapFilter",
            "position": [
                3751,
                -161
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "ce29380494b9c9be5a3a5c4c366ba039e7ed9d4a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_18.input}",
                "depthMapsFolder": "{DepthMap_18.output}",
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
        "StructureFromMotion_18": {
            "nodeType": "StructureFromMotion",
            "position": [
                3151,
                -161
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "38f87404c7a3fca74c010eaad86f1bc054b4d2b6"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_18.input}",
                "featuresFolders": "{FeatureMatching_18.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_18.output}"
                ],
                "describerTypes": "{FeatureMatching_18.describerTypes}",
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
        "PrepareDenseScene_18": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3351,
                -161
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "e1ee980419978d132217d2809330c6178640c183"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_18.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent"
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
        "DepthMap_18": {
            "nodeType": "DepthMap",
            "position": [
                3551,
                -161
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 9,
                "split": 3
            },
            "uids": {
                "0": "79b17f42091d19d38ea5b687e737221adffa3ec6"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_18.input}",
                "imagesFolder": "{PrepareDenseScene_18.output}",
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
        "MeshFiltering_18": {
            "nodeType": "MeshFiltering",
            "position": [
                4151,
                -161
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "eed850e73c507e2c4c8a47bb3e9b38bbbaddbca2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_18.outputMesh}",
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
        "FeatureMatching_18": {
            "nodeType": "FeatureMatching",
            "position": [
                2951,
                -161
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "fe7d9109469f8ffe8e848064dd6fefb788dae69f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_12.input}",
                "featuresFolders": "{ImageMatching_12.featuresFolders}",
                "imagePairsList": "{ImageMatching_12.output}",
                "describerTypes": "{FeatureExtraction_12.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "FeatureMatching_19": {
            "nodeType": "FeatureMatching",
            "position": [
                2948,
                30
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "0c1e102aca1cd5e59ebf0c9a72907bf495d1276b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_13.input}",
                "featuresFolders": "{ImageMatching_13.featuresFolders}",
                "imagePairsList": "{ImageMatching_13.output}",
                "describerTypes": "{FeatureExtraction_13.describerTypes}",
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
        "StructureFromMotion_19": {
            "nodeType": "StructureFromMotion",
            "position": [
                3148,
                30
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "3709267cf0746676d9537fd73e961de6cbff1d3e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_19.input}",
                "featuresFolders": "{FeatureMatching_19.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_19.output}"
                ],
                "describerTypes": "{FeatureMatching_19.describerTypes}",
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
        "Meshing_19": {
            "nodeType": "Meshing",
            "position": [
                3948,
                30
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d65843c7b432c0b1f4cd60fc36c04f740f479919"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_19.input}",
                "depthMapsFolder": "{DepthMapFilter_19.output}",
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
        "MeshFiltering_19": {
            "nodeType": "MeshFiltering",
            "position": [
                4148,
                30
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "52516a922a795ebea9b9917b8866f570776e7655"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_19.outputMesh}",
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
        "Texturing_19": {
            "nodeType": "Texturing",
            "position": [
                4348,
                30
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "bff1189d9d07111afbe3e8c8c2f7dd588921ca43"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_19.output}",
                "imagesFolder": "{DepthMap_19.imagesFolder}",
                "inputMesh": "{MeshFiltering_19.outputMesh}",
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
        "PrepareDenseScene_19": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3348,
                30
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "6798170562632117190cb9f6d3b0f2c7567a1b82"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_19.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent"
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
        "DepthMap_19": {
            "nodeType": "DepthMap",
            "position": [
                3548,
                30
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 9,
                "split": 3
            },
            "uids": {
                "0": "c187c96b76d65e6620822031209baeb55a7a6728"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_19.input}",
                "imagesFolder": "{PrepareDenseScene_19.output}",
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
        "DepthMapFilter_19": {
            "nodeType": "DepthMapFilter",
            "position": [
                3748,
                30
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "f4ec31c4e58478e5908019396c2deb60aa8f3734"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_19.input}",
                "depthMapsFolder": "{DepthMap_19.output}",
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
        "Texturing_20": {
            "nodeType": "Texturing",
            "position": [
                6702,
                -1585
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "05889669fbb51ce7e9569485487f446e19b20ff1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_20.output}",
                "imagesFolder": "{DepthMap_20.imagesFolder}",
                "inputMesh": "{MeshFiltering_20.outputMesh}",
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
        "Meshing_20": {
            "nodeType": "Meshing",
            "position": [
                6302,
                -1585
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ef13f0ba1b51f2b78f8250531ddf20353faa2d21"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_20.input}",
                "depthMapsFolder": "{DepthMapFilter_20.output}",
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
        "DepthMapFilter_20": {
            "nodeType": "DepthMapFilter",
            "position": [
                6102,
                -1585
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "e4ddeae9959054a79bd891257123dfc0a80603d8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_20.input}",
                "depthMapsFolder": "{DepthMap_20.output}",
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
        "StructureFromMotion_20": {
            "nodeType": "StructureFromMotion",
            "position": [
                5502,
                -1585
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "27e872f1cc9f9c985ed925e25f2bc03a4252dc97"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_20.input}",
                "featuresFolders": "{FeatureMatching_20.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_20.output}"
                ],
                "describerTypes": "{FeatureMatching_20.describerTypes}",
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
        "PrepareDenseScene_20": {
            "nodeType": "PrepareDenseScene",
            "position": [
                5702,
                -1585
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "e00a193a2899b2978c3804fc32b812ea81a040f0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_20.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent"
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
        "DepthMap_20": {
            "nodeType": "DepthMap",
            "position": [
                5902,
                -1585
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 9,
                "split": 3
            },
            "uids": {
                "0": "614fd37e9331d631ee905f64b67284570b844c7f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_20.input}",
                "imagesFolder": "{PrepareDenseScene_20.output}",
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
        "MeshFiltering_20": {
            "nodeType": "MeshFiltering",
            "position": [
                6502,
                -1585
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "e09e70bd84c9e19371b463cadb972ebf4e4efcd2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_20.outputMesh}",
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
        "FeatureMatching_20": {
            "nodeType": "FeatureMatching",
            "position": [
                5302,
                -1585
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "0b2d1d383607988441f2f837341c2d36d9279c4c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_14.input}",
                "featuresFolders": "{ImageMatching_14.featuresFolders}",
                "imagePairsList": "{ImageMatching_14.output}",
                "describerTypes": "{FeatureExtraction_14.describerTypes}",
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
                "crossMatching": false,
                "guidedMatching": false,
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
        "FeatureMatching_21": {
            "nodeType": "FeatureMatching",
            "position": [
                5303,
                -1402
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "2f1bc821b7e4b84009391fa102f3454cae2f0627"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_15.input}",
                "featuresFolders": "{ImageMatching_15.featuresFolders}",
                "imagePairsList": "{ImageMatching_15.output}",
                "describerTypes": "{FeatureExtraction_15.describerTypes}",
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
        "StructureFromMotion_21": {
            "nodeType": "StructureFromMotion",
            "position": [
                5503,
                -1402
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "4ebf211a5d485dac01eba5016d9a99c0ac72d179"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_21.input}",
                "featuresFolders": "{FeatureMatching_21.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_21.output}"
                ],
                "describerTypes": "{FeatureMatching_21.describerTypes}",
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
        "Meshing_21": {
            "nodeType": "Meshing",
            "position": [
                6303,
                -1402
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "3ff6cdba6bc72b156afb1f5fa0aa077abc9cc82a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_21.input}",
                "depthMapsFolder": "{DepthMapFilter_21.output}",
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
        "Texturing_21": {
            "nodeType": "Texturing",
            "position": [
                6703,
                -1402
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "c40534d0f71852dd316963f6d0e33b52cc81915f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_21.output}",
                "imagesFolder": "{DepthMap_21.imagesFolder}",
                "inputMesh": "{MeshFiltering_21.outputMesh}",
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
        "MeshFiltering_21": {
            "nodeType": "MeshFiltering",
            "position": [
                6503,
                -1402
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d6d858f9bfd97f5b9a388611c3bdce0754d1b247"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_21.outputMesh}",
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
        "DepthMap_21": {
            "nodeType": "DepthMap",
            "position": [
                5903,
                -1402
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 9,
                "split": 3
            },
            "uids": {
                "0": "e146241635ce7bd2935c092470e178fba9d0c900"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_21.input}",
                "imagesFolder": "{PrepareDenseScene_21.output}",
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
        "DepthMapFilter_21": {
            "nodeType": "DepthMapFilter",
            "position": [
                6103,
                -1402
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "277b823d1716bd26eb8b20a1134276350ef88d47"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_21.input}",
                "depthMapsFolder": "{DepthMap_21.output}",
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
        "PrepareDenseScene_21": {
            "nodeType": "PrepareDenseScene",
            "position": [
                5703,
                -1402
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 9,
                "split": 1
            },
            "uids": {
                "0": "3e0dce97923571bff9a526e84ff6df761dbbee13"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_21.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_15.masksFolder}"
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
        }
    }
}

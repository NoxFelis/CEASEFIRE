{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.1.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "DepthMap": "3.0",
            "DepthMapFilter": "3.0",
            "ImageMatching": "2.0",
            "StructureFromMotion": "2.0",
            "Texturing": "6.0",
            "Meshing": "7.0",
            "FeatureMatching": "2.0",
            "FeatureExtraction": "1.1",
            "PrepareDenseScene": "3.0",
            "CameraInit": "9.0",
            "MeshFiltering": "3.0",
            "ImageProcessing": "3.0"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                1287,
                -33
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "302716be24c38a65e6793d4868cd919f30c0548c"
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
                887,
                -33
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ceac8c933c1999875dc11d082346742c2c39c6e2"
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
                687,
                -33
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "68361e49d87a629d4442b09fb5fd2b751ba2237a"
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
                -313,
                -33
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
                -513,
                -33
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
                "input": "{CameraInit_1.output}",
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
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                87,
                -33
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
                287,
                -33
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
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                -924,
                -22
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
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                487,
                -33
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "18c9ce7f2f3f60a815aefcfd3de0fc548e1f25a7"
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
                1087,
                -33
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "b19072a3aa30157340468ee5a1bc603bf201a7d1"
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
                -113,
                -33
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
        "ImageProcessing_1": {
            "nodeType": "ImageProcessing",
            "position": [
                -708,
                148
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "409185ed4fa6b77627a3cd7f90082b48355416d5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "inputFolders": [],
                "metadataFolders": [],
                "extension": "jpg",
                "reconstructedViewsOnly": false,
                "keepImageFilename": true,
                "fixNonFinite": false,
                "exposureCompensation": false,
                "lensCorrection": {
                    "lensCorrectionEnabled": false,
                    "geometry": false,
                    "vignetting": false,
                    "chromaticAberration": false
                },
                "scaleFactor": 1.0,
                "contrast": 1.0,
                "medianFilter": 0,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 1.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": true,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 5.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": true,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 8
                },
                "noiseFilter": {
                    "noiseEnabled": false,
                    "noiseMethod": "uniform",
                    "noiseA": 0.0,
                    "noiseB": 1.0,
                    "noiseMono": true
                },
                "nlmFilter": {
                    "nlmFilterEnabled": false,
                    "nlmFilterH": 5.0,
                    "nlmFilterHColor": 10.0,
                    "nlmFilterTemplateWindowSize": 7,
                    "nlmFilterSearchWindowSize": 21
                },
                "outputFormat": "rgba",
                "outputColorSpace": "AUTO",
                "workingColorSpace": "Linear",
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "applyDcpMetadata": false,
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "useDCPColorMatrixOnly": true,
                "doWBAfterDemosaicing": false,
                "demosaicingAlgo": "AHD",
                "highlightMode": 0,
                "storageDataType": "float",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outSfMData": "{cache}/{nodeType}/{uid0}/cameraInit.sfm",
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputImages": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.jpg"
            }
        },
        "FeatureExtraction_2": {
            "nodeType": "FeatureExtraction",
            "position": [
                -515,
                153
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "65b2d4b509b71ada3df6ff36fa2f65019b3d1bea"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_1.outSfMData}",
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
        "ImageMatching_2": {
            "nodeType": "ImageMatching",
            "position": [
                -315,
                153
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "aaef0b9e03e2d22fccb18613ee6f78496bf984c7"
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
                -115,
                153
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "3c22ee3388517bb83cb3a46f3279303c5ddf38f8"
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
        "StructureFromMotion_2": {
            "nodeType": "StructureFromMotion",
            "position": [
                85,
                153
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "9d41fbccfdc24dedd8b5253eb0c9af1a1b563fa5"
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
        "Meshing_2": {
            "nodeType": "Meshing",
            "position": [
                885,
                153
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "720d9d520dce317984fe0b2db98e4ace213c41dc"
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
                1285,
                153
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "101b629e212a6adc1bae670732ea0e12a2c5614d"
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
                1085,
                153
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "84e963b4cd8e6147548d2721630bfff3453cc972"
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
        "DepthMapFilter_2": {
            "nodeType": "DepthMapFilter",
            "position": [
                685,
                153
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "0b009573a4e596ffb230cf0c4f0657c90f1559b9"
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
        "DepthMap_2": {
            "nodeType": "DepthMap",
            "position": [
                485,
                153
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "d0c050b9ef5783ec816cab3bd05c4fc700760f80"
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
                285,
                153
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "80823305e5665e8709d517d46e75f0ac8f70d61c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_2.output}",
                "imagesFolders": [
                    "{ImageProcessing_1.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_2.masksFolder}"
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
        "CameraInit_2": {
            "nodeType": "CameraInit",
            "position": [
                1625,
                -32
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 54,
                "split": 1
            },
            "uids": {
                "0": "64f5770d916759e7fefd04c4c3484ee89d654b35"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 43833349,
                        "poseId": 43833349,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/050.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 56301663,
                        "poseId": 56301663,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/038.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 60751552,
                        "poseId": 60751552,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/045.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 92547430,
                        "poseId": 92547430,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/051.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 99986034,
                        "poseId": 99986034,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/034.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 123315011,
                        "poseId": 123315011,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/054.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 233177974,
                        "poseId": 233177974,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/021.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 242242171,
                        "poseId": 242242171,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/022.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 254613672,
                        "poseId": 254613672,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/040.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 522294859,
                        "poseId": 522294859,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/053.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 527766242,
                        "poseId": 527766242,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/009.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 552417249,
                        "poseId": 552417249,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/010.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 553131795,
                        "poseId": 553131795,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/047.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 616441964,
                        "poseId": 616441964,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/002.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 625813046,
                        "poseId": 625813046,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/043.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 626256498,
                        "poseId": 626256498,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/006.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 684345618,
                        "poseId": 684345618,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/011.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 734389221,
                        "poseId": 734389221,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/039.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 771702021,
                        "poseId": 771702021,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/025.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 784191571,
                        "poseId": 784191571,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/044.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 838119965,
                        "poseId": 838119965,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/007.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 842563824,
                        "poseId": 842563824,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/036.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 849542567,
                        "poseId": 849542567,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/042.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 918581557,
                        "poseId": 918581557,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/035.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 923239964,
                        "poseId": 923239964,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/030.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 944552853,
                        "poseId": 944552853,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/029.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 959911760,
                        "poseId": 959911760,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/033.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 964301183,
                        "poseId": 964301183,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/028.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 998367733,
                        "poseId": 998367733,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/004.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1134296616,
                        "poseId": 1134296616,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/015.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1138598289,
                        "poseId": 1138598289,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/024.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1208956705,
                        "poseId": 1208956705,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/016.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1233201972,
                        "poseId": 1233201972,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/052.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1262312766,
                        "poseId": 1262312766,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/048.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1298673903,
                        "poseId": 1298673903,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/013.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1472441303,
                        "poseId": 1472441303,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/008.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1472739677,
                        "poseId": 1472739677,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/046.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1541425601,
                        "poseId": 1541425601,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/020.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1569224305,
                        "poseId": 1569224305,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/049.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1577261038,
                        "poseId": 1577261038,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/018.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1577797532,
                        "poseId": 1577797532,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/012.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1613931698,
                        "poseId": 1613931698,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/023.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1634307407,
                        "poseId": 1634307407,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/032.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1678654797,
                        "poseId": 1678654797,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/019.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1748107208,
                        "poseId": 1748107208,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/017.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1806718612,
                        "poseId": 1806718612,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/001.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1813768080,
                        "poseId": 1813768080,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/005.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1844421732,
                        "poseId": 1844421732,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/014.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1863218021,
                        "poseId": 1863218021,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/003.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1927500738,
                        "poseId": 1927500738,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/026.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1928626777,
                        "poseId": 1928626777,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/027.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1963393148,
                        "poseId": 1963393148,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/041.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1995975725,
                        "poseId": 1995975725,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/037.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2118839783,
                        "poseId": 2118839783,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/031.jpg",
                        "intrinsicId": 2511286828,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 2511286828,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter",
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
        "ImageProcessing_2": {
            "nodeType": "ImageProcessing",
            "position": [
                1817,
                122
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 54,
                "split": 1
            },
            "uids": {
                "0": "36283f332069a889b138915636c2348bfee486da"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_2.output}",
                "inputFolders": [],
                "metadataFolders": [],
                "extension": "jpg",
                "reconstructedViewsOnly": false,
                "keepImageFilename": true,
                "fixNonFinite": false,
                "exposureCompensation": false,
                "lensCorrection": {
                    "lensCorrectionEnabled": false,
                    "geometry": false,
                    "vignetting": false,
                    "chromaticAberration": false
                },
                "scaleFactor": 1.0,
                "contrast": 1.0,
                "medianFilter": 0,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 1.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": true,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 5.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": true,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 8
                },
                "noiseFilter": {
                    "noiseEnabled": false,
                    "noiseMethod": "uniform",
                    "noiseA": 0.0,
                    "noiseB": 1.0,
                    "noiseMono": true
                },
                "nlmFilter": {
                    "nlmFilterEnabled": false,
                    "nlmFilterH": 5.0,
                    "nlmFilterHColor": 10.0,
                    "nlmFilterTemplateWindowSize": 7,
                    "nlmFilterSearchWindowSize": 21
                },
                "outputFormat": "rgba",
                "outputColorSpace": "AUTO",
                "workingColorSpace": "Linear",
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "applyDcpMetadata": false,
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "useDCPColorMatrixOnly": true,
                "doWBAfterDemosaicing": false,
                "demosaicingAlgo": "AHD",
                "highlightMode": 0,
                "storageDataType": "float",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outSfMData": "{cache}/{nodeType}/{uid0}/cameraInit.sfm",
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputImages": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.jpg"
            }
        },
        "Texturing_3": {
            "nodeType": "Texturing",
            "position": [
                3813,
                -39
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d4fe54742fca5f27f319606d2b70532185862afc"
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
                3413,
                -39
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "2f7c2d8449a3537526b68dd059c3fd9d414cebab"
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
                3213,
                -39
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 54,
                "split": 6
            },
            "uids": {
                "0": "29b1b9bff277c1265fa7e2533032f742f35e0dd6"
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
                2213,
                -39
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 54,
                "split": 1
            },
            "uids": {
                "0": "aef32b5da5d42a2509b5478620b11b3ce301efc4"
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
                2013,
                -39
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 54,
                "split": 2
            },
            "uids": {
                "0": "093c8384a1f8f8dda643b1c8ecaba94e4c5eb194"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_2.output}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/transparent",
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
        "StructureFromMotion_3": {
            "nodeType": "StructureFromMotion",
            "position": [
                2613,
                -39
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 54,
                "split": 1
            },
            "uids": {
                "0": "36078b4312beda5fc7a109b0f5216a038386bebd"
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
                2813,
                -39
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 54,
                "split": 2
            },
            "uids": {
                "0": "f9429b728913f327e304c3e7e39b54373d032012"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_3.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_3.masksFolder}"
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
                3013,
                -39
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 54,
                "split": 18
            },
            "uids": {
                "0": "fe8b4b31c0753371ced6798b7fe153a28067e4f2"
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
                3613,
                -39
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "437a945c5ac068ad921755304349e0c087a24454"
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
                2413,
                -39
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 54,
                "split": 3
            },
            "uids": {
                "0": "d936ef0983add674a53432c975dd1f8ebc289928"
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
        "CameraInit_3": {
            "nodeType": "CameraInit",
            "position": [
                1629,
                306
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "afebf5cc9512904a62b9f45af2058d6c9303dde1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 3406139,
                        "poseId": 3406139,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/00668.jpg",
                        "intrinsicId": 3301859529,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1956455434\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1317213673\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 35062698,
                        "poseId": 35062698,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02086.jpg",
                        "intrinsicId": 315645990,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1867809618\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"665566138\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 172737506,
                        "poseId": 172737506,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02259.jpg",
                        "intrinsicId": 648936362,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1165887990\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"239421937\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 208032871,
                        "poseId": 208032871,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02023.jpg",
                        "intrinsicId": 728686136,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1909907861\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"728350504\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 241182076,
                        "poseId": 241182076,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/00886.jpg",
                        "intrinsicId": 3530203350,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1423523439\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"784123483\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 280510087,
                        "poseId": 280510087,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/00969.jpg",
                        "intrinsicId": 828951771,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"486593525\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"406187923\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 442540720,
                        "poseId": 442540720,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/00440.jpg",
                        "intrinsicId": 2595898893,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"987280401\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"178189960\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 527208725,
                        "poseId": 527208725,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01637.jpg",
                        "intrinsicId": 1926159389,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1010124634\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1571531257\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 580364713,
                        "poseId": 580364713,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02192.jpg",
                        "intrinsicId": 194483938,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"476281090\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1103980592\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 642806286,
                        "poseId": 642806286,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01554.jpg",
                        "intrinsicId": 699193428,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"385022247\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1017726798\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 643164704,
                        "poseId": 643164704,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02430.jpg",
                        "intrinsicId": 2480649677,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"14147218\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1251463553\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 729177584,
                        "poseId": 729177584,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02399.jpg",
                        "intrinsicId": 3982989401,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"348590594\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"492228786\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 766668722,
                        "poseId": 766668722,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02584.jpg",
                        "intrinsicId": 4108720165,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1988139219\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1800777599\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 779951469,
                        "poseId": 779951469,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02147.jpg",
                        "intrinsicId": 1832247528,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1193129336\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"2120968891\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 822112706,
                        "poseId": 822112706,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01957.jpg",
                        "intrinsicId": 4250862893,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1004353973\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"565491458\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 940236624,
                        "poseId": 940236624,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01121.jpg",
                        "intrinsicId": 24745597,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"933086743\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1433404804\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 977504408,
                        "poseId": 977504408,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01680.jpg",
                        "intrinsicId": 3721894478,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"544487088\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1048603536\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 987862019,
                        "poseId": 987862019,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01320.jpg",
                        "intrinsicId": 4040136820,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"2000204789\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"2062385308\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1042828423,
                        "poseId": 1042828423,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/00546.jpg",
                        "intrinsicId": 4273372329,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"874730987\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1989913146\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1063595976,
                        "poseId": 1063595976,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02378.jpg",
                        "intrinsicId": 2608140902,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"742710987\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"508859204\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1080696577,
                        "poseId": 1080696577,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01802.jpg",
                        "intrinsicId": 2803670929,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"2054698214\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1434217121\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1132395512,
                        "poseId": 1132395512,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01268.jpg",
                        "intrinsicId": 3773176506,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1525667528\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1075415824\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1158826714,
                        "poseId": 1158826714,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01153.jpg",
                        "intrinsicId": 2926874172,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"541135554\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1760288461\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1194160816,
                        "poseId": 1194160816,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/00155.jpg",
                        "intrinsicId": 1379452627,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1508632978\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1287381418\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1209391747,
                        "poseId": 1209391747,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01424.jpg",
                        "intrinsicId": 1350536447,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"564918424\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"879970866\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1221618950,
                        "poseId": 1221618950,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/00802.jpg",
                        "intrinsicId": 4031672498,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"676603661\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1930554085\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1225516878,
                        "poseId": 1225516878,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02647.jpg",
                        "intrinsicId": 2838226060,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1797080190\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"2081497262\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1245974243,
                        "poseId": 1245974243,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02325.jpg",
                        "intrinsicId": 4167478393,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"810826489\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1591134875\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1257183981,
                        "poseId": 1257183981,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01756.jpg",
                        "intrinsicId": 1309463740,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"299012199\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"527676454\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1382232023,
                        "poseId": 1382232023,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01201.jpg",
                        "intrinsicId": 3057926551,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"445472184\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1359199048\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1468983062,
                        "poseId": 1468983062,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/00350.jpg",
                        "intrinsicId": 755526097,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1284658783\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"535439643\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1580349164,
                        "poseId": 1580349164,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01056.jpg",
                        "intrinsicId": 2654586663,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1681483080\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1330666772\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1695113590,
                        "poseId": 1695113590,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02507.jpg",
                        "intrinsicId": 1536731095,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"519074000\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"2407567\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1705223188,
                        "poseId": 1705223188,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01720.jpg",
                        "intrinsicId": 3870724641,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"1648145637\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1910955634\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1825309513,
                        "poseId": 1825309513,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/02679.jpg",
                        "intrinsicId": 1829795977,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"2028529249\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1654178632\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1883455863,
                        "poseId": 1883455863,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/00749.jpg",
                        "intrinsicId": 2658831841,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"44299191\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"253348510\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2073788319,
                        "poseId": 2073788319,
                        "path": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/01876.jpg",
                        "intrinsicId": 1085911839,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:BodySerialNumber\": \"596299985\", \"Exif:ExifVersion\": \"0230\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:ImageUniqueID\": \"1215003497\", \"Orientation\": \"1\", \"jpeg:subsampling\": \"4:4:4\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 24745597,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "933086743",
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
                    },
                    {
                        "intrinsicId": 194483938,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "476281090",
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
                    },
                    {
                        "intrinsicId": 315645990,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1867809618",
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
                    },
                    {
                        "intrinsicId": 648936362,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1165887990",
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
                    },
                    {
                        "intrinsicId": 699193428,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "385022247",
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
                    },
                    {
                        "intrinsicId": 728686136,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1909907861",
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
                    },
                    {
                        "intrinsicId": 755526097,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1284658783",
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
                    },
                    {
                        "intrinsicId": 828951771,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "486593525",
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
                    },
                    {
                        "intrinsicId": 1085911839,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "596299985",
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
                    },
                    {
                        "intrinsicId": 1309463740,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "299012199",
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
                    },
                    {
                        "intrinsicId": 1350536447,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "564918424",
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
                    },
                    {
                        "intrinsicId": 1379452627,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1508632978",
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
                    },
                    {
                        "intrinsicId": 1536731095,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "519074000",
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
                    },
                    {
                        "intrinsicId": 1829795977,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "2028529249",
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
                    },
                    {
                        "intrinsicId": 1832247528,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1193129336",
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
                    },
                    {
                        "intrinsicId": 1926159389,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1010124634",
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
                    },
                    {
                        "intrinsicId": 2480649677,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "14147218",
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
                    },
                    {
                        "intrinsicId": 2595898893,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "987280401",
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
                    },
                    {
                        "intrinsicId": 2608140902,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "742710987",
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
                    },
                    {
                        "intrinsicId": 2654586663,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1681483080",
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
                    },
                    {
                        "intrinsicId": 2658831841,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "44299191",
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
                    },
                    {
                        "intrinsicId": 2803670929,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "2054698214",
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
                    },
                    {
                        "intrinsicId": 2838226060,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1797080190",
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
                    },
                    {
                        "intrinsicId": 2926874172,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "541135554",
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
                    },
                    {
                        "intrinsicId": 3057926551,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "445472184",
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
                    },
                    {
                        "intrinsicId": 3301859529,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1956455434",
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
                    },
                    {
                        "intrinsicId": 3530203350,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1423523439",
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
                    },
                    {
                        "intrinsicId": 3721894478,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "544487088",
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
                    },
                    {
                        "intrinsicId": 3773176506,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1525667528",
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
                    },
                    {
                        "intrinsicId": 3870724641,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1648145637",
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
                    },
                    {
                        "intrinsicId": 3982989401,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "348590594",
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
                    },
                    {
                        "intrinsicId": 4031672498,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "676603661",
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
                    },
                    {
                        "intrinsicId": 4040136820,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "2000204789",
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
                    },
                    {
                        "intrinsicId": 4108720165,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1988139219",
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
                    },
                    {
                        "intrinsicId": 4167478393,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "810826489",
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
                    },
                    {
                        "intrinsicId": 4250862893,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "1004353973",
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
                    },
                    {
                        "intrinsicId": 4273372329,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "874730987",
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
        "ImageProcessing_3": {
            "nodeType": "ImageProcessing",
            "position": [
                1821,
                460
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "2a72c91c30dbb3e76f56a1c58d1884e417bc47d6"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_3.output}",
                "inputFolders": [],
                "metadataFolders": [],
                "extension": "jpg",
                "reconstructedViewsOnly": false,
                "keepImageFilename": true,
                "fixNonFinite": false,
                "exposureCompensation": false,
                "lensCorrection": {
                    "lensCorrectionEnabled": false,
                    "geometry": false,
                    "vignetting": false,
                    "chromaticAberration": false
                },
                "scaleFactor": 1.0,
                "contrast": 1.0,
                "medianFilter": 0,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 1.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": true,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 5.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": true,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 8
                },
                "noiseFilter": {
                    "noiseEnabled": false,
                    "noiseMethod": "uniform",
                    "noiseA": 0.0,
                    "noiseB": 1.0,
                    "noiseMono": true
                },
                "nlmFilter": {
                    "nlmFilterEnabled": false,
                    "nlmFilterH": 5.0,
                    "nlmFilterHColor": 10.0,
                    "nlmFilterTemplateWindowSize": 7,
                    "nlmFilterSearchWindowSize": 21
                },
                "outputFormat": "rgba",
                "outputColorSpace": "AUTO",
                "workingColorSpace": "Linear",
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "applyDcpMetadata": false,
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "useDCPColorMatrixOnly": true,
                "doWBAfterDemosaicing": false,
                "demosaicingAlgo": "AHD",
                "highlightMode": 0,
                "storageDataType": "float",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outSfMData": "{cache}/{nodeType}/{uid0}/cameraInit.sfm",
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputImages": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.jpg"
            }
        },
        "FeatureExtraction_4": {
            "nodeType": "FeatureExtraction",
            "position": [
                2013,
                121
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 54,
                "split": 2
            },
            "uids": {
                "0": "642d38ab2624931dc298e5e03d5404c415061e78"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_2.outSfMData}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/videos/inter/transparent",
                "describerTypes": [
                    "akaze",
                    "sift"
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
        "ImageMatching_4": {
            "nodeType": "ImageMatching",
            "position": [
                2213,
                121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 54,
                "split": 1
            },
            "uids": {
                "0": "7471b0043dda410d2fb9c19f6fb3fd7fce1be93c"
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
                2413,
                121
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 54,
                "split": 3
            },
            "uids": {
                "0": "677b5820d444041ab8420a1216641a2b76f28112"
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
        "StructureFromMotion_4": {
            "nodeType": "StructureFromMotion",
            "position": [
                2613,
                121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 54,
                "split": 1
            },
            "uids": {
                "0": "07af9dfdec87a533ca35b4b16131acff1900ac1a"
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
        "Meshing_4": {
            "nodeType": "Meshing",
            "position": [
                3413,
                121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "b0b8e4d18965dd70fb97f3bd915848973b8488e3"
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
        "Texturing_4": {
            "nodeType": "Texturing",
            "position": [
                3813,
                121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "b471d7fb0424d5c507d1a22b3c9bdd62dc5b3be9"
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
        "MeshFiltering_4": {
            "nodeType": "MeshFiltering",
            "position": [
                3613,
                121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d3067a3f3b716f0831ba9389ac26503a688e1269"
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
        "PrepareDenseScene_4": {
            "nodeType": "PrepareDenseScene",
            "position": [
                2813,
                121
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 54,
                "split": 2
            },
            "uids": {
                "0": "d2750bdd90f713ac5a1aa29e6b1d579a4444bf27"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_4.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_4.masksFolder}"
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
                3013,
                121
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 54,
                "split": 18
            },
            "uids": {
                "0": "e2b0ab9feeff7c7a6c78389bcf397999cfca6203"
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
                3213,
                121
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 54,
                "split": 6
            },
            "uids": {
                "0": "247eedf98362e0e98bbc27669e38eacb09c9ae94"
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
        "CameraInit_4": {
            "nodeType": "CameraInit",
            "position": [
                1629,
                668
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 112,
                "split": 1
            },
            "uids": {
                "0": "040d8d70d5e6548fb0817476f2d5e5d38596355a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 59052026,
                        "poseId": 59052026,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/021.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 74625942,
                        "poseId": 74625942,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/055.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 107923192,
                        "poseId": 107923192,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/038.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 120994806,
                        "poseId": 120994806,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/074.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 180117861,
                        "poseId": 180117861,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/067.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 213190254,
                        "poseId": 213190254,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/010.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 223840789,
                        "poseId": 223840789,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/069.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 236285466,
                        "poseId": 236285466,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/035.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 275807157,
                        "poseId": 275807157,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/106.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 282090265,
                        "poseId": 282090265,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/072.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 325889596,
                        "poseId": 325889596,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/025.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 370537553,
                        "poseId": 370537553,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/019.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 379465851,
                        "poseId": 379465851,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/107.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 389531497,
                        "poseId": 389531497,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/082.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 395533232,
                        "poseId": 395533232,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/079.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 396610893,
                        "poseId": 396610893,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/071.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 405370498,
                        "poseId": 405370498,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/053.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 405542039,
                        "poseId": 405542039,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/097.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 452802272,
                        "poseId": 452802272,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/004.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 461978351,
                        "poseId": 461978351,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/009.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 467748709,
                        "poseId": 467748709,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/108.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 482359339,
                        "poseId": 482359339,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/098.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 515377180,
                        "poseId": 515377180,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/020.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 533964663,
                        "poseId": 533964663,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/041.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 565668222,
                        "poseId": 565668222,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/054.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 567141467,
                        "poseId": 567141467,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/111.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 621154436,
                        "poseId": 621154436,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/095.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 623330842,
                        "poseId": 623330842,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/012.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 635755530,
                        "poseId": 635755530,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/058.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 660644496,
                        "poseId": 660644496,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/007.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 671830166,
                        "poseId": 671830166,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/013.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 691328060,
                        "poseId": 691328060,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/112.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 704334823,
                        "poseId": 704334823,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/001.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 732911503,
                        "poseId": 732911503,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/042.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 754149428,
                        "poseId": 754149428,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/080.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 757866970,
                        "poseId": 757866970,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/056.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 764184708,
                        "poseId": 764184708,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/017.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 794224433,
                        "poseId": 794224433,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/092.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 813285954,
                        "poseId": 813285954,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/104.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 850574046,
                        "poseId": 850574046,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/065.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 851051474,
                        "poseId": 851051474,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/078.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 882950610,
                        "poseId": 882950610,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/064.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 893829037,
                        "poseId": 893829037,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/023.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 909146096,
                        "poseId": 909146096,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/105.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 933531514,
                        "poseId": 933531514,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/059.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 966355931,
                        "poseId": 966355931,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/094.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 979065159,
                        "poseId": 979065159,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/014.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 987812367,
                        "poseId": 987812367,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/022.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 994883708,
                        "poseId": 994883708,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/024.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1009043682,
                        "poseId": 1009043682,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/050.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1018155633,
                        "poseId": 1018155633,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/044.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1035181412,
                        "poseId": 1035181412,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/003.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1044194899,
                        "poseId": 1044194899,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/030.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1048647803,
                        "poseId": 1048647803,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/091.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1068893530,
                        "poseId": 1068893530,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/093.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1089391355,
                        "poseId": 1089391355,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/099.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1108095149,
                        "poseId": 1108095149,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/031.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1120036546,
                        "poseId": 1120036546,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/008.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1134977471,
                        "poseId": 1134977471,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/029.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1188935866,
                        "poseId": 1188935866,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/070.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1235825936,
                        "poseId": 1235825936,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/084.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1264243052,
                        "poseId": 1264243052,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/037.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1266662979,
                        "poseId": 1266662979,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/048.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1276193262,
                        "poseId": 1276193262,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/005.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1281375671,
                        "poseId": 1281375671,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/089.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1289587655,
                        "poseId": 1289587655,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/109.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1304357505,
                        "poseId": 1304357505,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/062.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1326889158,
                        "poseId": 1326889158,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/049.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1332396684,
                        "poseId": 1332396684,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/028.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1381417532,
                        "poseId": 1381417532,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/039.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1403051876,
                        "poseId": 1403051876,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/032.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1425523223,
                        "poseId": 1425523223,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/066.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1455235196,
                        "poseId": 1455235196,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/075.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1493187155,
                        "poseId": 1493187155,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/068.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1550300134,
                        "poseId": 1550300134,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/051.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1554513621,
                        "poseId": 1554513621,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/006.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1572457252,
                        "poseId": 1572457252,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/043.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1583110298,
                        "poseId": 1583110298,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/046.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1609229775,
                        "poseId": 1609229775,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/034.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1652949430,
                        "poseId": 1652949430,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/060.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1672776230,
                        "poseId": 1672776230,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/063.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1727368201,
                        "poseId": 1727368201,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/002.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1751587027,
                        "poseId": 1751587027,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/077.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1755339897,
                        "poseId": 1755339897,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/087.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1761629692,
                        "poseId": 1761629692,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/033.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1775116202,
                        "poseId": 1775116202,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/015.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1779031639,
                        "poseId": 1779031639,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/100.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1783779979,
                        "poseId": 1783779979,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/047.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1796147650,
                        "poseId": 1796147650,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/045.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1821652911,
                        "poseId": 1821652911,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/103.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1838639100,
                        "poseId": 1838639100,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/096.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1839024870,
                        "poseId": 1839024870,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/083.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1842134707,
                        "poseId": 1842134707,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/085.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1851592613,
                        "poseId": 1851592613,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/011.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1862777603,
                        "poseId": 1862777603,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/076.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1866686533,
                        "poseId": 1866686533,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/090.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1882311985,
                        "poseId": 1882311985,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/057.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1903099223,
                        "poseId": 1903099223,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/102.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1920360706,
                        "poseId": 1920360706,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/040.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1940864070,
                        "poseId": 1940864070,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/086.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1942226956,
                        "poseId": 1942226956,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/073.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1949433223,
                        "poseId": 1949433223,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/026.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1957445139,
                        "poseId": 1957445139,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/052.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1963449008,
                        "poseId": 1963449008,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/018.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1975241087,
                        "poseId": 1975241087,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/110.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1987540166,
                        "poseId": 1987540166,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/088.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2016838607,
                        "poseId": 2016838607,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/101.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2023510572,
                        "poseId": 2023510572,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/027.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2045736744,
                        "poseId": 2045736744,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/081.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2063059045,
                        "poseId": 2063059045,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/016.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2065832261,
                        "poseId": 2065832261,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/036.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2087916953,
                        "poseId": 2087916953,
                        "path": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/061.jpg",
                        "intrinsicId": 2694962859,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.134.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 2694962859,
                        "initialFocalLength": -1.0,
                        "focalLength": 43.45584412271571,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1280,
                        "height": 720,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "/CEASEFIRE/media/lefaucheux_7mm/videos/key",
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
        "ImageProcessing_4": {
            "nodeType": "ImageProcessing",
            "position": [
                1821,
                822
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 112,
                "split": 1
            },
            "uids": {
                "0": "42f403b63457dd689eeeff5897d7cfbf2f48eaf0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_4.output}",
                "inputFolders": [],
                "metadataFolders": [],
                "extension": "jpg",
                "reconstructedViewsOnly": false,
                "keepImageFilename": true,
                "fixNonFinite": false,
                "exposureCompensation": false,
                "lensCorrection": {
                    "lensCorrectionEnabled": false,
                    "geometry": false,
                    "vignetting": false,
                    "chromaticAberration": false
                },
                "scaleFactor": 1.0,
                "contrast": 1.0,
                "medianFilter": 0,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 1.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": true,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 5.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": true,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 8
                },
                "noiseFilter": {
                    "noiseEnabled": false,
                    "noiseMethod": "uniform",
                    "noiseA": 0.0,
                    "noiseB": 1.0,
                    "noiseMono": true
                },
                "nlmFilter": {
                    "nlmFilterEnabled": false,
                    "nlmFilterH": 5.0,
                    "nlmFilterHColor": 10.0,
                    "nlmFilterTemplateWindowSize": 7,
                    "nlmFilterSearchWindowSize": 21
                },
                "outputFormat": "rgba",
                "outputColorSpace": "AUTO",
                "workingColorSpace": "Linear",
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "applyDcpMetadata": false,
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "useDCPColorMatrixOnly": true,
                "doWBAfterDemosaicing": false,
                "demosaicingAlgo": "AHD",
                "highlightMode": 0,
                "storageDataType": "float",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outSfMData": "{cache}/{nodeType}/{uid0}/cameraInit.sfm",
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputImages": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.jpg"
            }
        },
        "DepthMapFilter_5": {
            "nodeType": "DepthMapFilter",
            "position": [
                3217,
                299
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 37,
                "split": 4
            },
            "uids": {
                "0": "43145f60f1aca84fed89d1f2c51c7a1e44ba20a4"
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
        "DepthMap_5": {
            "nodeType": "DepthMap",
            "position": [
                3017,
                299
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 37,
                "split": 13
            },
            "uids": {
                "0": "63a70a60c0c5e89ba1fe09171a3939ce745a5596"
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
        "FeatureExtraction_5": {
            "nodeType": "FeatureExtraction",
            "position": [
                2017,
                299
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "b9ba6f5ce189c01d16f00e03e7f620978089e59e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_3.output}",
                "masksFolder": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/transparent",
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
        "FeatureMatching_5": {
            "nodeType": "FeatureMatching",
            "position": [
                2417,
                299
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 37,
                "split": 2
            },
            "uids": {
                "0": "0fa006a40c32fb60bfbaaa102711f0e669bf1441"
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
        "ImageMatching_5": {
            "nodeType": "ImageMatching",
            "position": [
                2217,
                299
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "b84aa83eb406ece05601272603af1379d60c8c2a"
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
        "MeshFiltering_5": {
            "nodeType": "MeshFiltering",
            "position": [
                3617,
                299
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d54d3f1fb1723c21239b095ff4fa9f03138685e8"
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
        "Meshing_5": {
            "nodeType": "Meshing",
            "position": [
                3417,
                299
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "2699eb812a9da04d126577677cb10140a115398b"
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
        "PrepareDenseScene_5": {
            "nodeType": "PrepareDenseScene",
            "position": [
                2817,
                299
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "266291b841646775b910605f472cd5a40acab8af"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_5.output}",
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
        "StructureFromMotion_5": {
            "nodeType": "StructureFromMotion",
            "position": [
                2617,
                299
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "2555dbc85b54d93d5aa3bf22ef5787695f0cd67f"
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
        "Texturing_5": {
            "nodeType": "Texturing",
            "position": [
                3817,
                299
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "6286f393d1c66e76dec2645eff8eb0af07efb8ce"
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
        "DepthMapFilter_6": {
            "nodeType": "DepthMapFilter",
            "position": [
                3217,
                459
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 37,
                "split": 4
            },
            "uids": {
                "0": "a43dd6fcff18dc0403ec7809bd3d1e0885067e2d"
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
        "DepthMap_6": {
            "nodeType": "DepthMap",
            "position": [
                3017,
                459
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 37,
                "split": 13
            },
            "uids": {
                "0": "337df7b604a847ba10546f1e54856a84061c8417"
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
        "FeatureExtraction_6": {
            "nodeType": "FeatureExtraction",
            "position": [
                2017,
                459
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "35a2cdcfc59967c3c464a3243658df28f8a90782"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_3.outSfMData}",
                "masksFolder": "/CEASEFIRE/Meshroom-2023video/MeshroomCache/KeyframeSelection/03fae2de39285c0a46bdc0262fdc60b342749aa9/transparent",
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
        "FeatureMatching_6": {
            "nodeType": "FeatureMatching",
            "position": [
                2417,
                459
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 37,
                "split": 2
            },
            "uids": {
                "0": "74642761beeecd3695d8d300c3a2f8720d398ffc"
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
        "ImageMatching_6": {
            "nodeType": "ImageMatching",
            "position": [
                2217,
                459
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "723f276b0cd3d6547a7e65141bf223b3082a1984"
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
        "MeshFiltering_6": {
            "nodeType": "MeshFiltering",
            "position": [
                3617,
                459
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "4fcd7d39d21a91dbdb44e81b64429b3deb7ffe43"
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
        "Meshing_6": {
            "nodeType": "Meshing",
            "position": [
                3417,
                459
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "3f49757c16b3d6c2c93f292b666540410b59b940"
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
        "PrepareDenseScene_6": {
            "nodeType": "PrepareDenseScene",
            "position": [
                2817,
                459
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "430e1ceff16b906a405bb13cb6e3d54688e770b5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_6.output}",
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
        "StructureFromMotion_6": {
            "nodeType": "StructureFromMotion",
            "position": [
                2617,
                459
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 37,
                "split": 1
            },
            "uids": {
                "0": "c6d4a830250d8a365bf5c49b66f743401c7f924d"
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
        "Texturing_6": {
            "nodeType": "Texturing",
            "position": [
                3817,
                459
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "87c800272d6924869404159af989dc7f43b7f349"
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
        "DepthMapFilter_7": {
            "nodeType": "DepthMapFilter",
            "position": [
                3217,
                661
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 112,
                "split": 12
            },
            "uids": {
                "0": "5b65a0202f9ce2529a1bbf1c5469040b7ecc445d"
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
                3017,
                661
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 112,
                "split": 38
            },
            "uids": {
                "0": "19fd58e2c85907753c44391fc00be2246cdd4986"
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
        "FeatureExtraction_7": {
            "nodeType": "FeatureExtraction",
            "position": [
                2017,
                661
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 112,
                "split": 3
            },
            "uids": {
                "0": "b6ca362e050c6af63896f62c2bc3aadc400a3c57"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_4.output}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/transparent",
                "describerTypes": [
                    "akaze",
                    "sift"
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
        "FeatureMatching_7": {
            "nodeType": "FeatureMatching",
            "position": [
                2417,
                661
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 112,
                "split": 6
            },
            "uids": {
                "0": "9b2b0cc7d857cc6900f80954151677ddce03da47"
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
        "ImageMatching_7": {
            "nodeType": "ImageMatching",
            "position": [
                2217,
                661
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 112,
                "split": 1
            },
            "uids": {
                "0": "dd20f5e34efdc67bbe6753224bf519baad56f6b1"
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
        "MeshFiltering_7": {
            "nodeType": "MeshFiltering",
            "position": [
                3617,
                661
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d76216248e20729e9c3a5925d2d826bd3e99dd0a"
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
        "Meshing_7": {
            "nodeType": "Meshing",
            "position": [
                3417,
                661
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ae337145376d09f4955ca4fe02c097f0ce14abfc"
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
        "PrepareDenseScene_7": {
            "nodeType": "PrepareDenseScene",
            "position": [
                2817,
                661
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 112,
                "split": 3
            },
            "uids": {
                "0": "810069427cf8fe55bb5706ac8a02b4f35fae0e93"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_7.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_7.masksFolder}"
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
        "StructureFromMotion_7": {
            "nodeType": "StructureFromMotion",
            "position": [
                2617,
                661
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 112,
                "split": 1
            },
            "uids": {
                "0": "2371feb11a71f05c40f539380e25a6b5ac48e0cb"
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
        "Texturing_7": {
            "nodeType": "Texturing",
            "position": [
                3817,
                661
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "820bdf17585fccc7b8afe83b11f4a8e03bb2f12e"
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
        "DepthMapFilter_8": {
            "nodeType": "DepthMapFilter",
            "position": [
                3217,
                821
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 112,
                "split": 12
            },
            "uids": {
                "0": "cddd7a2808da76d0cf527c08b14e442ce856448b"
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
                3017,
                821
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 112,
                "split": 38
            },
            "uids": {
                "0": "0eecf877baa4409909cd311ba24f172e1daf837e"
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
        "FeatureExtraction_8": {
            "nodeType": "FeatureExtraction",
            "position": [
                2017,
                821
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 112,
                "split": 3
            },
            "uids": {
                "0": "86735571166d514c7a10f7fb5b5c3d87637ebb85"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_4.outSfMData}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/videos/key/transparent",
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
        "FeatureMatching_8": {
            "nodeType": "FeatureMatching",
            "position": [
                2417,
                821
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 112,
                "split": 6
            },
            "uids": {
                "0": "92ca1a260a18a0b0aaca2883060658b53aa3dd4e"
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
        "ImageMatching_8": {
            "nodeType": "ImageMatching",
            "position": [
                2217,
                821
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 112,
                "split": 1
            },
            "uids": {
                "0": "92b7c2406aa2d990d268a04fa9c5e4ad8de57862"
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
        "MeshFiltering_8": {
            "nodeType": "MeshFiltering",
            "position": [
                3617,
                821
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "96d92132ed473c4133e293f729806a2abcfa4cc5"
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
        "Meshing_8": {
            "nodeType": "Meshing",
            "position": [
                3417,
                821
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "0a7e21c1241ff3d67d16c3cb468cad611f2430d9"
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
        "PrepareDenseScene_8": {
            "nodeType": "PrepareDenseScene",
            "position": [
                2817,
                821
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 112,
                "split": 3
            },
            "uids": {
                "0": "9577ad9fb0ccbc87aa7470b6ecfbc6b73a8ae8f7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_8.output}",
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
        "StructureFromMotion_8": {
            "nodeType": "StructureFromMotion",
            "position": [
                2617,
                821
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 112,
                "split": 1
            },
            "uids": {
                "0": "63a195d776338124ab2686d9a98665b3e7c0d503"
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
        "Texturing_8": {
            "nodeType": "Texturing",
            "position": [
                3817,
                821
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "013fba2203bddcfb4c527377e5ab2e72f5678934"
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
        }
    }
}

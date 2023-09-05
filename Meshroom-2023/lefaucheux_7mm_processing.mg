{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.1.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "Meshing": "7.0",
            "FeatureMatching": "2.0",
            "PrepareDenseScene": "3.0",
            "CameraInit": "9.0",
            "MeshFiltering": "3.0",
            "ImageMatching": "2.0",
            "ImageProcessing": "3.0",
            "DepthMap": "3.0",
            "Texturing": "6.0",
            "FeatureExtraction": "1.1",
            "DepthMapFilter": "3.0",
            "StructureFromMotion": "2.0"
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
                "0": "ab6753d85d97282984676f8d03a2aea3180171d5"
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
                "0": "d7a73ffe3b06e67d8e05141dc420d201b2091ced"
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
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "2c0db6aa6df190ee9a191f49bbafe5689f42d6b0"
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
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "351f6cfbc18fb74c182e0fa24c7e9cb28d706f49"
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
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "840096b9e003b7ab9aed5fc1877ed0db2ad0280c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_1.outSfMData}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent",
                "describerTypes": [
                    "sift",
                    "akaze"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "high",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": false,
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
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "ea868e75af75f4c75802ee8902afd55a267c8706"
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
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "357fdc438f46e3e145e5985ff6eab420e0c459aa"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "imagesFolders": [
                    "{ImageProcessing_1.output}"
                ],
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
                -220,
                4
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
                1200,
                0
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "c11814fb8d7f29bd6e7cf96cdd8d9abefdd87870"
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
                "0": "a0bf5a589e16353f9d78d865fb598a566219f155"
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
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "dccd9f10c8e16576aabd3d69892addae9e5a6401"
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
                -7,
                1
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "8231d0318e424480f716fd264addf5da68e374b8"
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
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
                "comment": "C'est pas un filtre neutre, il se passe quand m\u00eame qqch",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outSfMData": "{cache}/{nodeType}/{uid0}/cameraInit.sfm",
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputImages": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.jpg"
            }
        },
        "ImageProcessing_2": {
            "nodeType": "ImageProcessing",
            "position": [
                -8,
                184
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "f1ad9ed5e46d1c4c5819214d87cc813d8b691b24"
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
                    "sharpenFilterEnabled": true,
                    "width": 5,
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "ImageMatching_2": {
            "nodeType": "ImageMatching",
            "position": [
                399,
                183
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "24efde4d8b077ae31da93732a7066122725eb49c"
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
                599,
                183
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "3a2cb726d172f81de103f9ad717a1d4b5c0bc21a"
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
                799,
                183
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "74eae730358032f5b9e7d4aa7a66884768bbbfdb"
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
                1599,
                183
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "906738c482c9fc77e7f736c156cdc08289bf116c"
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
                1999,
                183
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "a53691c77ab5655342fa39925b1ad5f76d7fda2d"
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
                1799,
                183
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "6e663868f01be94a7364d64768e9b1ca80461db2"
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
                1399,
                183
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "715594479ad6dbe506f84ee2ba403ce262055421"
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
        "PrepareDenseScene_2": {
            "nodeType": "PrepareDenseScene",
            "position": [
                999,
                183
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "035e20d9509fe0c1cb78081ec47b3e137d5bf35c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_2.output}",
                "imagesFolders": [
                    "{ImageProcessing_2.output}"
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
        "DepthMap_2": {
            "nodeType": "DepthMap",
            "position": [
                1199,
                183
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "c64d373d527fd5c7db10944a54fc1228f76eafc5"
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
        "FeatureExtraction_2": {
            "nodeType": "FeatureExtraction",
            "position": [
                199,
                183
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "7aff67a818fb4aa9941b8f91cb95b7654e64ab3f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_2.outSfMData}",
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
        "ImageProcessing_3": {
            "nodeType": "ImageProcessing",
            "position": [
                -6,
                369
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "f22fc1903a285474cddf16722c4bf064b3f776cc"
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
                    "bilateralFilterSigmaSpace": 15.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "PrepareDenseScene_3": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1001,
                368
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "1ca160be723cd0c2f79f95e663a951cb843b89ee"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_3.output}",
                "imagesFolders": [
                    "{ImageProcessing_3.output}"
                ],
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
                1201,
                368
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "efeb98820074dd9852824e1b1780c11e8d48ae54"
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
                1401,
                368
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "45bd620af5070e3ba6f9d71e7f132d0c5a0fb36b"
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
                1601,
                368
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "f1339492361cf97c479ac507b428dbdb7ec2e641"
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
        "MeshFiltering_3": {
            "nodeType": "MeshFiltering",
            "position": [
                1801,
                368
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "4b2ca4ba840bb3576fb0c0eeebd2f67d0318fb4a"
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
        "Texturing_3": {
            "nodeType": "Texturing",
            "position": [
                2001,
                368
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "f6dda687eda449d00caf9f6a322581ef20e85613"
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
        "FeatureExtraction_3": {
            "nodeType": "FeatureExtraction",
            "position": [
                201,
                368
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "13a478ade1a27e1b2a5d3da2be66f20784221f2a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_3.outSfMData}",
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
        "ImageMatching_3": {
            "nodeType": "ImageMatching",
            "position": [
                401,
                368
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "31c19e4ae155dde9332b0af20dbc9b30dc6f4b9f"
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
        "FeatureMatching_3": {
            "nodeType": "FeatureMatching",
            "position": [
                601,
                368
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "f0d83358422090c1518eacda63858d5a96ec0c54"
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
        "StructureFromMotion_3": {
            "nodeType": "StructureFromMotion",
            "position": [
                801,
                368
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "ae094a8d728b9829968e2f7bc487449196f94c54"
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
        "ImageProcessing_4": {
            "nodeType": "ImageProcessing",
            "position": [
                -7,
                548
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "5d925c4822de9a62670ce3e15e4f6a3e2e53ce07"
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
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
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
        "StructureFromMotion_4": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                547
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "212b19e5f79e41acb1a60755d8a91597cb01f5ce"
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
        "PrepareDenseScene_4": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1000,
                547
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "a31448e3e35eb2cc4a25a196001a04ccdf037114"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_4.output}",
                "imagesFolders": [
                    "{ImageProcessing_4.output}"
                ],
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
                1200,
                547
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "7e1fbbc46667c2cb742a82b509c00a55c262d34a"
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
                1400,
                547
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "7dbbb034dabc900f0e260e9d09898ccdb6584cb7"
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
                1600,
                547
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "03d8316cec88514b0fe24145e76dfd9f7f5b5a16"
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
                1800,
                547
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "080673f023a3a117684a25acbba89916cbef294f"
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
                2000,
                547
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "31c2592e8dbf4105f4e9ec71369f7201428bd4ab"
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
        "FeatureExtraction_4": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                547
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "84737f370f32d51a77357bf900215f55d34231d3"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_4.outSfMData}",
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
        "ImageMatching_4": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                547
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "06e96e4c099a143c4082485da0d7b504af0d010e"
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
                600,
                547
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "ad9d74fe99b4ca89591dedda94bf5d06466411e4"
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
        "ImageProcessing_5": {
            "nodeType": "ImageProcessing",
            "position": [
                -7,
                735
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "31a21351a8f276643502c8ad7ba35bacb522e9f6"
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
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 8
                },
                "noiseFilter": {
                    "noiseEnabled": true,
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
        "StructureFromMotion_5": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                734
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "4549c2810ef4052bd1a3638e69daf80c1c81c092"
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
                1400,
                734
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "3b91a7f16df1b295d5328c4871dcefbecd62da94"
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
                1600,
                734
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "0cf81d2073cd21cea2f66e9342fc9298d6142890"
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
        "Texturing_5": {
            "nodeType": "Texturing",
            "position": [
                2000,
                736
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "470931d9292cfd2eb0575e5d71e437a0a22f59ae"
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
        "MeshFiltering_5": {
            "nodeType": "MeshFiltering",
            "position": [
                1800,
                734
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "888bddb454368883ea78bfefe8d1428a0f3d0934"
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
        "DepthMap_5": {
            "nodeType": "DepthMap",
            "position": [
                1200,
                734
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "a8cef9305abc3ba06bea5e554146a0cb52c5da5a"
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
                1000,
                734
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "8fd36f8b44b28f9240b5d6c45bb1da57142156c7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_5.output}",
                "imagesFolders": [
                    "{ImageProcessing_5.output}"
                ],
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
        "FeatureMatching_5": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                734
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "e2a5c3dc87eda37685bd37223fe34cbe96149b55"
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
                400,
                734
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "42fb4cd3b7fc00ced0416e4813aec8ce5711c21b"
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
                200,
                734
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "7d2748640e3582a68d4d21386340e9c7531e84a3"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_5.outSfMData}",
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
        "ImageProcessing_6": {
            "nodeType": "ImageProcessing",
            "position": [
                -7,
                922
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "5091851b3fc916b07befe6a2fedb5f793a948d7e"
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
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
                    "nlmFilterEnabled": true,
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
        "FeatureExtraction_6": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                921
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "beb0ccf671d2c999aaa7c9e2bc26777901b36cc8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_6.outSfMData}",
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
        "ImageMatching_6": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                921
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "f6b690822a049dffb419b107a27b631b18fec9ba"
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
        "FeatureMatching_6": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                921
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "5eb156230857536c3f12223b548a21198214c6b9"
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
        "StructureFromMotion_6": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                921
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "f27cfdf9d92446fc6feb852faf4a2c4def52bb12"
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
        "Meshing_6": {
            "nodeType": "Meshing",
            "position": [
                1600,
                921
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "e40680c759c8465399606810e184bfa0b4401b78"
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
        "Texturing_6": {
            "nodeType": "Texturing",
            "position": [
                2000,
                921
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "b99bdf652a4e1fc5d597b2c227625639d749d7e6"
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
        "MeshFiltering_6": {
            "nodeType": "MeshFiltering",
            "position": [
                1800,
                921
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "94a3b6e9cada7644205d782bbf20232f08610b34"
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
        "DepthMapFilter_6": {
            "nodeType": "DepthMapFilter",
            "position": [
                1400,
                921
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "5d13331a51c337fb85c86a2ed51b627c629013f8"
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
        "PrepareDenseScene_6": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1000,
                921
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "6ad871cfc3beec8b2c0412077f45b30384548299"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_6.output}",
                "imagesFolders": [
                    "{ImageProcessing_6.output}"
                ],
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
        "DepthMap_6": {
            "nodeType": "DepthMap",
            "position": [
                1200,
                921
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "3aebaf0b1a84fa2246b870c217df870d5e73a03d"
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
        "ImageProcessing_7": {
            "nodeType": "ImageProcessing",
            "position": [
                -7,
                1110
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "b99577f8d02c030a7cdc7bceee3b519a9545a473"
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
                "exposureCompensation": true,
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
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "PrepareDenseScene_7": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1000,
                1109
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "a81444e0e16c611339dd46a50cbd83c9313defc0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_7.output}",
                "imagesFolders": [
                    "{ImageProcessing_7.output}"
                ],
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
        "DepthMap_7": {
            "nodeType": "DepthMap",
            "position": [
                1200,
                1109
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "53d19e2e1ffc882936bf65846ff228ca0b651720"
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
        "DepthMapFilter_7": {
            "nodeType": "DepthMapFilter",
            "position": [
                1400,
                1109
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "c53ce0c81a167159bed1417a33e067244c3f214c"
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
        "Meshing_7": {
            "nodeType": "Meshing",
            "position": [
                1600,
                1109
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "f7858f8794e52d29a7bf10e08078077baf4e2c6c"
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
                1800,
                1109
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "69da1a9120fafe521eac2d0eba958d1ca97f237e"
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
                2000,
                1109
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "533383d5f1afd18ab837d70f5055d0bd9a97a84d"
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
        "FeatureMatching_7": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                1109
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "718cd931bb9cbe46906a1c124d264969181991d6"
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
        "StructureFromMotion_7": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                1109
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "83896722d9a1bb26833cf6ce75940a3af98dd1d3"
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
        "ImageMatching_7": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                1109
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "e78b4296d92c3fc16278b911a0bc644ada3fb0e3"
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
        "FeatureExtraction_7": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                1109
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "dc9978f53c9ca0cc60cceae35f5038d5807d88da"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_7.outSfMData}",
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
        "ImageProcessing_8": {
            "nodeType": "ImageProcessing",
            "position": [
                -11,
                1295
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "c1f738feef37041c48e6b0cd8b321b6b6b080f4f"
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
                    "lensCorrectionEnabled": true,
                    "geometry": true,
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
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "PrepareDenseScene_8": {
            "nodeType": "PrepareDenseScene",
            "position": [
                996,
                1294
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "63787f1fe9743970434e0a2732983b3852c79aef"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_8.output}",
                "imagesFolders": [
                    "{ImageProcessing_8.output}"
                ],
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
        "DepthMap_8": {
            "nodeType": "DepthMap",
            "position": [
                1196,
                1294
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "d3aeefb43f00080346cbe687eaa2503a3fc7abad"
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
        "DepthMapFilter_8": {
            "nodeType": "DepthMapFilter",
            "position": [
                1396,
                1294
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "450a37775a36328ec2cb5aa138f098d6d6038e02"
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
        "Meshing_8": {
            "nodeType": "Meshing",
            "position": [
                1596,
                1294
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "4037bd277da596086b2269fde8c1ea8b6833715a"
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
                1796,
                1294
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "cb8067fecd809a24e511105afecf70910be091fa"
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
                1996,
                1294
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "6e199c40469363c4316774d87e7c3b3e26af9772"
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
        "ImageMatching_8": {
            "nodeType": "ImageMatching",
            "position": [
                396,
                1294
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "6e6eb2e69efad579852243c227c2f729edbff8fa"
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
        "FeatureMatching_8": {
            "nodeType": "FeatureMatching",
            "position": [
                596,
                1294
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "b246081739e730771419d66331db65c95fb36c69"
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
        "StructureFromMotion_8": {
            "nodeType": "StructureFromMotion",
            "position": [
                796,
                1294
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "f942603284e9aecda4fd1a77774974cdb2ef4856"
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
        "FeatureExtraction_8": {
            "nodeType": "FeatureExtraction",
            "position": [
                196,
                1294
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "7a146dfab3850232ad62f9a11bda50a71b4b5e02"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_8.outSfMData}",
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
        "StructureFromMotion_9": {
            "nodeType": "StructureFromMotion",
            "position": [
                793,
                -185
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "bed7a7b7e6cee8b335f44dfa99ff8b9c26b1042b"
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
                1593,
                -185
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "4d22ba1c7d9255ec7cad2c08b014b53715d501ed"
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
                1793,
                -185
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "a9d06bb29d8114ac85e603d2acd5738fdc39f615"
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
                1993,
                -185
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "2b14ceff09936350ba031cd240b6c699cfbdee3d"
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
        "DepthMapFilter_9": {
            "nodeType": "DepthMapFilter",
            "position": [
                1393,
                -185
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "95f6dfb11048332c9f0b6d908336a6f87814feba"
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
                993,
                -185
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "fb2d57671bbd5d738fe7966c5e1bf2cf60aef932"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_9.output}",
                "imagesFolders": [
                    ""
                ],
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
        "DepthMap_9": {
            "nodeType": "DepthMap",
            "position": [
                1193,
                -185
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "96f98535aebcdff40fd8d875cacc63417c8f9339"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_9.input}",
                "imagesFolder": "{PrepareDenseScene_9.output}",
                "downscale": 4,
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
        "ImageMatching_9": {
            "nodeType": "ImageMatching",
            "position": [
                393,
                -185
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "0864de354800b95e5151aeb27618705ef92ede70"
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
        "FeatureMatching_9": {
            "nodeType": "FeatureMatching",
            "position": [
                593,
                -185
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "0b7ee7d1e222f495344458057a7ef82d6caef79f"
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
        "FeatureExtraction_9": {
            "nodeType": "FeatureExtraction",
            "position": [
                193,
                -185
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "7d006c27705475d0d77296331296232fab7096e0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "/CEASEFIRE/media/lefaucheux_7mm/fond_vert_4/transparent",
                "describerTypes": [
                    "akaze_ocv",
                    "sift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "high",
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
        "ImageProcessing_9": {
            "nodeType": "ImageProcessing",
            "position": [
                2343,
                -374
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "7da5ffd1e0b1eaa3187ea69a1186811673446b90"
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
                    "sharpenFilterEnabled": true,
                    "width": 5,
                    "contrast": 1.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "ImageProcessing_10": {
            "nodeType": "ImageProcessing",
            "position": [
                -15,
                1491
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "bd65295dd728412c6b20f7fb6e3248df07073341"
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
                    "geometry": true,
                    "vignetting": false,
                    "chromaticAberration": false
                },
                "scaleFactor": 1.0,
                "contrast": 5.0,
                "medianFilter": 0,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 1.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "StructureFromMotion_10": {
            "nodeType": "StructureFromMotion",
            "position": [
                792,
                1490
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "61d4da4745fe24f3eccfd84df2e5bc217a22f34f"
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
        "DepthMapFilter_10": {
            "nodeType": "DepthMapFilter",
            "position": [
                1392,
                1490
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "a7783ff269543873280ace4cdbd7ea0a0a66b425"
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
        "Meshing_10": {
            "nodeType": "Meshing",
            "position": [
                1592,
                1490
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ac99d358d46389843b85d7adf04ca1cfc9721090"
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
                1992,
                1490
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "43ba072ade605edbe5007717d542231e7973d211"
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
                1792,
                1490
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "562ff566dba7e39ba8a9da93e163ff5ad5f295cb"
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
                1192,
                1490
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "2c3e62763bf569deea6e33d7becfbe7bf7358efe"
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
        "PrepareDenseScene_10": {
            "nodeType": "PrepareDenseScene",
            "position": [
                992,
                1490
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "658edc4c20dc1182c00ff513bc7fb2f8af826a7e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_10.output}",
                "imagesFolders": [
                    "{ImageProcessing_10.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_10.masksFolder}"
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
                392,
                1490
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "68eb997026de1486497461023b3822f773687246"
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
        "FeatureMatching_10": {
            "nodeType": "FeatureMatching",
            "position": [
                592,
                1490
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "0a93730672d742fa7b8751099a59a36c8925cf48"
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
        "FeatureExtraction_10": {
            "nodeType": "FeatureExtraction",
            "position": [
                196,
                1490
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "60edfeb8b0301966434fab6adbc08fafa789f973"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_10.outSfMData}",
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
        "ImageProcessing_11": {
            "nodeType": "ImageProcessing",
            "position": [
                -28,
                1688
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "79a6d0f5981f4dca29f3fe9a57e0435e907bc972"
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
                    "geometry": true,
                    "vignetting": false,
                    "chromaticAberration": false
                },
                "scaleFactor": 1.0,
                "contrast": 1.0,
                "medianFilter": 5,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 1.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "FeatureExtraction_11": {
            "nodeType": "FeatureExtraction",
            "position": [
                179,
                1687
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "ad35aa28523cfaff3fb07e144e01f76466d54757"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_11.outSfMData}",
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
                379,
                1687
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "a7281b00fd59a774f2449bb31462a84dd4d455f3"
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
        "FeatureMatching_11": {
            "nodeType": "FeatureMatching",
            "position": [
                579,
                1687
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "19b2318693abc027b1305c5782b48d57a1248eab"
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
        "StructureFromMotion_11": {
            "nodeType": "StructureFromMotion",
            "position": [
                779,
                1687
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "aaa12d11fa848c7ba98406dea3ba157e3ab9228c"
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
                1379,
                1687
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "277c55dd8c3f9e823ed75eab2e63acf1c98c19e5"
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
                1579,
                1687
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "c2f8c01c2785cbb072fc774313123f4df5dc2fdc"
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
        "Texturing_11": {
            "nodeType": "Texturing",
            "position": [
                1971,
                1693
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "89f46da1f1b36609756df5d5f95a457db75fb91a"
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
        "MeshFiltering_11": {
            "nodeType": "MeshFiltering",
            "position": [
                1779,
                1687
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "7f2e6e55b5fb35af79c242185df2fb1427c7de21"
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
        "DepthMap_11": {
            "nodeType": "DepthMap",
            "position": [
                1179,
                1687
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "06298380b7bd2f59b2e3e0c46999cdfa11f538c2"
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
        "PrepareDenseScene_11": {
            "nodeType": "PrepareDenseScene",
            "position": [
                979,
                1687
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "1ebe0c82b1de4bf11bf82d1c39a99ecaea2cd6f7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_11.output}",
                "imagesFolders": [
                    "{ImageProcessing_11.output}"
                ],
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
        "Texturing_12": {
            "nodeType": "Texturing",
            "position": [
                1991,
                -397
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
        "Meshing_12": {
            "nodeType": "Meshing",
            "position": [
                1591,
                -397
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
        "DepthMapFilter_12": {
            "nodeType": "DepthMapFilter",
            "position": [
                1391,
                -397
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
        "ImageMatching_12": {
            "nodeType": "ImageMatching",
            "position": [
                391,
                -397
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
        "StructureFromMotion_12": {
            "nodeType": "StructureFromMotion",
            "position": [
                791,
                -397
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
        "PrepareDenseScene_12": {
            "nodeType": "PrepareDenseScene",
            "position": [
                991,
                -397
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
                "input": "{StructureFromMotion_12.output}",
                "imagesFolders": [],
                "masksFolders": [
                    "{FeatureExtraction_13.masksFolder}"
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
        "DepthMap_12": {
            "nodeType": "DepthMap",
            "position": [
                1191,
                -397
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
        "MeshFiltering_12": {
            "nodeType": "MeshFiltering",
            "position": [
                1791,
                -397
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
        "FeatureMatching_12": {
            "nodeType": "FeatureMatching",
            "position": [
                591,
                -397
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
                "input": "{ImageMatching_12.input}",
                "featuresFolders": "{ImageMatching_12.featuresFolders}",
                "imagePairsList": "{ImageMatching_12.output}",
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
        "FeatureExtraction_12": {
            "nodeType": "FeatureExtraction",
            "position": [
                2546,
                -377
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "1e8b1fdaabb4de3365f9c421e9782bf5c1755a87"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_9.outSfMData}",
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
        "ImageProcessing_12": {
            "nodeType": "ImageProcessing",
            "position": [
                2341,
                -188
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "be81c66f6ed9176a04583e996a22f42f2cd92292"
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
                    "sharpenFilterEnabled": true,
                    "width": 3,
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "FeatureExtraction_13": {
            "nodeType": "FeatureExtraction",
            "position": [
                191,
                -397
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
        "Texturing_13": {
            "nodeType": "Texturing",
            "position": [
                4346,
                -377
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "445cbe40489218b4c5d711887e5473021d7c6ae0"
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
        "Meshing_13": {
            "nodeType": "Meshing",
            "position": [
                3946,
                -377
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d4c5cc1085eee39601f229d9be9be84b6473e263"
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
        "DepthMapFilter_13": {
            "nodeType": "DepthMapFilter",
            "position": [
                3746,
                -377
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "3c7aebcb0e9e88c52387f944300f0011847858f4"
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
        "ImageMatching_13": {
            "nodeType": "ImageMatching",
            "position": [
                2746,
                -377
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "2dace251362f5550c7f30e7fb5daf41d7aae2b97"
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
        "StructureFromMotion_13": {
            "nodeType": "StructureFromMotion",
            "position": [
                3146,
                -377
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "daa1118788623cd97cda6a9d5a9a6a97baa32ad7"
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
        "PrepareDenseScene_13": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3346,
                -377
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "5f38ff12e8b703f6bf7963c2266c318b73d3920b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_13.output}",
                "imagesFolders": [
                    "{ImageProcessing_9.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_12.masksFolder}"
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
                3546,
                -377
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "6694992cf09d78d07c297811417428c6bc2fc5b1"
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
        "MeshFiltering_13": {
            "nodeType": "MeshFiltering",
            "position": [
                4146,
                -377
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "8568264de0f82d1037c4d1a13133b7b3c26564d6"
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
        "FeatureMatching_13": {
            "nodeType": "FeatureMatching",
            "position": [
                2946,
                -377
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "343ed595b6b226765f7a8ff563d7e2fe8a29fc3c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_13.input}",
                "featuresFolders": "{ImageMatching_13.featuresFolders}",
                "imagePairsList": "{ImageMatching_13.output}",
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
        "ImageProcessing_13": {
            "nodeType": "ImageProcessing",
            "position": [
                2346,
                -5
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "8cc78da0f406d46861791ebe0fa4cf6f140e1e11"
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
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": true,
                    "bilateralFilterDistance": 0,
                    "bilateralFilterSigmaSpace": 5.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "ImageMatching_14": {
            "nodeType": "ImageMatching",
            "position": [
                2744,
                -191
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "8447e05b67ffbf3202079f09247cbb03130d7cf0"
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
        "FeatureMatching_14": {
            "nodeType": "FeatureMatching",
            "position": [
                2944,
                -191
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "937b9b811786a77e51a0d9308a0981b9b5b13e17"
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
                3144,
                -191
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "1d7152e365d26e574617206b94b3c3c7b745ec3d"
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
        "DepthMapFilter_14": {
            "nodeType": "DepthMapFilter",
            "position": [
                3744,
                -191
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "fe96e070c9e633bd8e629d341deb599b6cee48e8"
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
        "Meshing_14": {
            "nodeType": "Meshing",
            "position": [
                3944,
                -191
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "77f86bd1d066598a97643870f6861c355ee738be"
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
                4144,
                -191
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ce6af8c18feaad7a0ff9ed33ea518782988441c3"
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
                4344,
                -191
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "dee7ad23541ef4a75b2de621fafeab1976fcddd3"
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
                3544,
                -191
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "063a95da2a86603d09fa44c65cf27e3499bb082a"
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
        "PrepareDenseScene_14": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3344,
                -191
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "54186d16083828ae3a0a95fdd29a67d50de6176e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_14.output}",
                "imagesFolders": [
                    "{ImageProcessing_12.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_14.masksFolder}"
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
        "FeatureExtraction_14": {
            "nodeType": "FeatureExtraction",
            "position": [
                2544,
                -191
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "28eb26826b27e9a6146a15019e751c8e768341b5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_12.outSfMData}",
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
        "ImageProcessing_14": {
            "nodeType": "ImageProcessing",
            "position": [
                2346,
                179
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "67d395592b4b633fa54e66fc50d00fe46d41f818"
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
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": true,
                    "bilateralFilterDistance": 5,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
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
        "ImageMatching_15": {
            "nodeType": "ImageMatching",
            "position": [
                2749,
                -8
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "c6579cfe9dd7e25021313f656fd9cf2cbd1acc99"
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
        "FeatureMatching_15": {
            "nodeType": "FeatureMatching",
            "position": [
                2949,
                -8
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "47ef101866ba7b7e1023ed246fc72abd34fafa87"
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
        "StructureFromMotion_15": {
            "nodeType": "StructureFromMotion",
            "position": [
                3149,
                -8
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "6676e27d08211ff991fc04ef88b7056429cd0745"
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
                3349,
                -8
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "9909a5eb23e8eae70049252f54443d61edde333f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_15.output}",
                "imagesFolders": [
                    "{ImageProcessing_13.output}"
                ],
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
        },
        "DepthMap_15": {
            "nodeType": "DepthMap",
            "position": [
                3549,
                -8
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "a59c819a3d7dd4e0b26d9b25397d63230ccbf591"
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
                3749,
                -8
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "e8ae063a5f0bdedead73ca6961fdaa8339840cb6"
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
                3949,
                -8
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "399936ba4fff11170cd22b4e1f8c19ed33422cea"
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
                4149,
                -8
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "3ccc04c0bbfa8a04b56c15bc513bd2eaab058531"
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
                4349,
                -8
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "dd0f78c430d34ebffc7ebe8d591160c52d679889"
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
                2549,
                -8
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "91cc7d85e18b4e21cd68e69b1b2af6e9ebd6f1de"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_13.outSfMData}",
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
        "ImageProcessing_15": {
            "nodeType": "ImageProcessing",
            "position": [
                2346,
                378
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "4e7b765be15a3f5c4eb92437fc810a8b93fb0be5"
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
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 5,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": true,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 16
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
        "ImageMatching_16": {
            "nodeType": "ImageMatching",
            "position": [
                2749,
                176
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "67cd943c2a0033d5d87732d8bc15c12e14ecce11"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_16.input}",
                "featuresFolders": [
                    "{FeatureExtraction_16.output}"
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
        "FeatureMatching_16": {
            "nodeType": "FeatureMatching",
            "position": [
                2949,
                176
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "fc68f53d2fbdbb8553e26799e104af8b1afe223d"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_16.input}",
                "featuresFolders": "{ImageMatching_16.featuresFolders}",
                "imagePairsList": "{ImageMatching_16.output}",
                "describerTypes": "{FeatureExtraction_16.describerTypes}",
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
        "StructureFromMotion_16": {
            "nodeType": "StructureFromMotion",
            "position": [
                3149,
                176
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "8699ed67c8c5868f388d4aa4f9e4405534ae2544"
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
        "DepthMap_16": {
            "nodeType": "DepthMap",
            "position": [
                3549,
                176
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "9dffa6e73e6b75995c8bbfe09bddbaa5ca3eca33"
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
        "DepthMapFilter_16": {
            "nodeType": "DepthMapFilter",
            "position": [
                3749,
                176
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "dc267905b6353aafb4c985e0957a082f3ea8f7a5"
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
        "Meshing_16": {
            "nodeType": "Meshing",
            "position": [
                3949,
                176
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "af11df105177490aa3be48f8b2431054047318be"
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
        "Texturing_16": {
            "nodeType": "Texturing",
            "position": [
                4349,
                176
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ea3c9f87bd26d6f7ba78afd6263fac6d0663ec57"
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
        "MeshFiltering_16": {
            "nodeType": "MeshFiltering",
            "position": [
                4149,
                176
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "1b5d0c674d246fd017bdf87a2dcead4ffa7844e2"
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
        "PrepareDenseScene_16": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3349,
                176
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "3f5a1bf40f4182490f638f075ba17a3b60f9ff72"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_16.output}",
                "imagesFolders": [
                    "{ImageProcessing_14.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_16.masksFolder}"
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
        "FeatureExtraction_16": {
            "nodeType": "FeatureExtraction",
            "position": [
                2549,
                176
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "4b6c996b70a642725130c7491e0d2ab8330860be"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_14.outSfMData}",
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
        "ImageProcessing_16": {
            "nodeType": "ImageProcessing",
            "position": [
                2348,
                568
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "a61585525fcf27d227821ddfeac6060c535cc35a"
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
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 5,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": true,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 4
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
        "StructureFromMotion_17": {
            "nodeType": "StructureFromMotion",
            "position": [
                3149,
                375
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "5a39b70256bb32306b847ce05f4ceee69cf5d2b4"
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
        "Meshing_17": {
            "nodeType": "Meshing",
            "position": [
                3949,
                375
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "13eecc384ddbdea850f3c244fbccdfe52f35ca56"
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
                4349,
                375
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "950eb44ce89da45308c7d419b418085bd127e2ea"
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
                4149,
                375
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "53e18209ff8fb01c97a9c03c1a02c29a2e8dd593"
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
        "PrepareDenseScene_17": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3349,
                375
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "f15d2c927a5c623510c8ec87148b54f4fa216cf9"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_17.output}",
                "imagesFolders": [
                    "{ImageProcessing_15.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_17.masksFolder}"
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
                3549,
                375
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "8b66e7858787dc47897716624539ac7c50fa0704"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_17.input}",
                "imagesFolder": "{PrepareDenseScene_17.output}",
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
        "DepthMapFilter_17": {
            "nodeType": "DepthMapFilter",
            "position": [
                3749,
                375
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "26a253c337f3803a1f0881ff45cd32a14c92971e"
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
        "FeatureMatching_17": {
            "nodeType": "FeatureMatching",
            "position": [
                2949,
                375
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "13e368c18b5a219fa2627375dd3670c6a5174b24"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_17.input}",
                "featuresFolders": "{ImageMatching_17.featuresFolders}",
                "imagePairsList": "{ImageMatching_17.output}",
                "describerTypes": "{FeatureExtraction_17.describerTypes}",
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
        "ImageMatching_17": {
            "nodeType": "ImageMatching",
            "position": [
                2749,
                375
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "2b4bfd7a85ccd2dfc9e3ebc87a01c750b259bb24"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_17.input}",
                "featuresFolders": [
                    "{FeatureExtraction_17.output}"
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
        "FeatureExtraction_17": {
            "nodeType": "FeatureExtraction",
            "position": [
                2549,
                375
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "6a17d377eff0af3a5b06b9e3dd37745a1a69f921"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_15.outSfMData}",
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
        "ImageProcessing_17": {
            "nodeType": "ImageProcessing",
            "position": [
                2348,
                755
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "f04a74733dac369c30dd37e5367a5d7ab3608dad"
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
                "contrast": 10.0,
                "medianFilter": 0,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 5,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 4
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
        "ImageMatching_18": {
            "nodeType": "ImageMatching",
            "position": [
                2751,
                565
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "23cc4aa71b1267d2e37b613d3c34a80cd108ebe5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_18.input}",
                "featuresFolders": [
                    "{FeatureExtraction_18.output}"
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
        "FeatureMatching_18": {
            "nodeType": "FeatureMatching",
            "position": [
                2951,
                565
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "db4e91ed893334bf72f51d6e93df1d347d2e758b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_18.input}",
                "featuresFolders": "{ImageMatching_18.featuresFolders}",
                "imagePairsList": "{ImageMatching_18.output}",
                "describerTypes": "{FeatureExtraction_18.describerTypes}",
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
        "StructureFromMotion_18": {
            "nodeType": "StructureFromMotion",
            "position": [
                3151,
                565
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "320ccf5361fb8091666c80064cb13e472f7ef3af"
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
        "Meshing_18": {
            "nodeType": "Meshing",
            "position": [
                3951,
                565
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "a2424e0183c4b19afe82c0780c427880f5a60a26"
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
        "MeshFiltering_18": {
            "nodeType": "MeshFiltering",
            "position": [
                4151,
                565
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "b6b32bc177aa80297109074b1ad660355dba260b"
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
        "Texturing_18": {
            "nodeType": "Texturing",
            "position": [
                4351,
                565
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "3bc97328f0b4076ed7501f9cb16ff72a8b9f6ff5"
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
        "DepthMapFilter_18": {
            "nodeType": "DepthMapFilter",
            "position": [
                3751,
                565
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "24bf41265f0f8844dd43493751f033620c96e074"
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
        "PrepareDenseScene_18": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3351,
                565
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "65b226d2efbb48a392cb4e1a8f51868c7175718b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_18.output}",
                "imagesFolders": [
                    "{ImageProcessing_16.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_18.masksFolder}"
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
                565
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "443ab730bd5f4193664edbebcf903456b79dd6ba"
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
        "FeatureExtraction_18": {
            "nodeType": "FeatureExtraction",
            "position": [
                2551,
                569
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "59bb21b259889833437555ee1e17422bf9c40146"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_16.outSfMData}",
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
        "ImageProcessing_18": {
            "nodeType": "ImageProcessing",
            "position": [
                2351,
                938
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "fe588b4ba3282847ceb960285aae47b6048f9368"
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
                "contrast": 3.0,
                "medianFilter": 0,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 5,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 4
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
        "StructureFromMotion_19": {
            "nodeType": "StructureFromMotion",
            "position": [
                3151,
                752
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "1e538312a647bd823aae1cabb644566495f41904"
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
        "DepthMap_19": {
            "nodeType": "DepthMap",
            "position": [
                3551,
                752
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "760beef99e57cd10b3cfa931e111607f1c646ce4"
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
                3751,
                752
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "6842c84f043b68ab6ff09c5de4a19f51b68ae5c5"
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
        "Meshing_19": {
            "nodeType": "Meshing",
            "position": [
                3951,
                752
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "38d0e1ea3bc23467259803dc105e59f0528882ac"
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
                4151,
                752
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "56e05fa97d2664135682d6ca03f9d814e3494b7c"
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
                4351,
                752
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "7488096dac11f5a263570818854cb253294daa31"
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
                3351,
                752
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "963269ab27270ddc5bb58bd3ea5073f264eb39dc"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_19.output}",
                "imagesFolders": [
                    "{ImageProcessing_17.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_19.masksFolder}"
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
        "FeatureMatching_19": {
            "nodeType": "FeatureMatching",
            "position": [
                2951,
                752
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "8212a97f7d6908e19b8f97b3df40044c40a476d2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_19.input}",
                "featuresFolders": "{ImageMatching_19.featuresFolders}",
                "imagePairsList": "{ImageMatching_19.output}",
                "describerTypes": "{FeatureExtraction_19.describerTypes}",
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
        "ImageMatching_19": {
            "nodeType": "ImageMatching",
            "position": [
                2751,
                752
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "3d684ee139f28e183797571fac09f5486931aac3"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_19.input}",
                "featuresFolders": [
                    "{FeatureExtraction_19.output}"
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
        "FeatureExtraction_19": {
            "nodeType": "FeatureExtraction",
            "position": [
                2551,
                752
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "b96294c3485e173ec42dd013306defbe685bb903"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_17.outSfMData}",
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
        "ImageProcessing_19": {
            "nodeType": "ImageProcessing",
            "position": [
                2343,
                1124
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "660d5dd47658c20afb5b514266cb5673c44e9fb3"
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
                "medianFilter": 10,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 5,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 4
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
        "PrepareDenseScene_20": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3354,
                935
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "bda738aad8c387f6ca8b5c9c088fd2b588421cc1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_20.output}",
                "imagesFolders": [
                    "{ImageProcessing_18.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_20.masksFolder}"
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
                3554,
                935
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "6bcff7a07d51d573d54f9e467fd31977d568e232"
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
        "DepthMapFilter_20": {
            "nodeType": "DepthMapFilter",
            "position": [
                3754,
                935
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "5747274f805eb55f090ffe19a9f8f3a5c2feb742"
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
        "Meshing_20": {
            "nodeType": "Meshing",
            "position": [
                3954,
                935
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ebe26a2b1f7c8ad9b5e4e0f9ee2d63f1e7d58179"
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
        "MeshFiltering_20": {
            "nodeType": "MeshFiltering",
            "position": [
                4154,
                935
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "61d54a93ceab3a22c691b9c214184866fc7f0f22"
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
        "Texturing_20": {
            "nodeType": "Texturing",
            "position": [
                4354,
                935
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "8ce2965e2af0292b58e3f7385b107424e2cbd414"
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
        "StructureFromMotion_20": {
            "nodeType": "StructureFromMotion",
            "position": [
                3154,
                935
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "0057d1dc31549e57a0e5174464c370f1f27aef0d"
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
        "FeatureMatching_20": {
            "nodeType": "FeatureMatching",
            "position": [
                2954,
                935
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "9f5552ac9e894c4038322cb6ef26f148ac80296b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_20.input}",
                "featuresFolders": "{ImageMatching_20.featuresFolders}",
                "imagePairsList": "{ImageMatching_20.output}",
                "describerTypes": "{FeatureExtraction_20.describerTypes}",
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
        "FeatureExtraction_20": {
            "nodeType": "FeatureExtraction",
            "position": [
                2554,
                935
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "e3e39b7d61c078c5c6a35fe5d993a3be04906070"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_18.outSfMData}",
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
        "ImageMatching_20": {
            "nodeType": "ImageMatching",
            "position": [
                2754,
                935
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "6cae2143890466139e0ddabe338c57af32a1c1af"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_20.input}",
                "featuresFolders": [
                    "{FeatureExtraction_20.output}"
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
        "ImageProcessing_20": {
            "nodeType": "ImageProcessing",
            "position": [
                2343,
                1301
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "d9b5dc28401e8796a0a6521d2472c12441d85e60"
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
                "medianFilter": 3,
                "fillHoles": false,
                "sharpenFilter": {
                    "sharpenFilterEnabled": false,
                    "width": 3,
                    "contrast": 5.0,
                    "threshold": 0.0
                },
                "bilateralFilter": {
                    "bilateralFilterEnabled": false,
                    "bilateralFilterDistance": 5,
                    "bilateralFilterSigmaSpace": 0.0,
                    "bilateralFilterSigmaColor": 0.0
                },
                "claheFilter": {
                    "claheEnabled": false,
                    "claheClipLimit": 4.0,
                    "claheTileGridSize": 4
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
        "StructureFromMotion_21": {
            "nodeType": "StructureFromMotion",
            "position": [
                3146,
                1121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "dd7a2337a96c7f14b0760a7dd1aa5070403b5d0d"
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
        "DepthMap_21": {
            "nodeType": "DepthMap",
            "position": [
                3546,
                1121
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "34311be714eb31958e480824e1fde39afd2f24dd"
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
                3746,
                1121
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "98b0e65cba2e6c1d6cf918f6ae0bc4fd4c292ed3"
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
        "Meshing_21": {
            "nodeType": "Meshing",
            "position": [
                3946,
                1121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ae066654430cbab6410049cfcaff55bfb1a615d8"
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
        "MeshFiltering_21": {
            "nodeType": "MeshFiltering",
            "position": [
                4146,
                1121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "362e1576cbe73d55c90ea0a33f830799e8cc5360"
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
        "Texturing_21": {
            "nodeType": "Texturing",
            "position": [
                4346,
                1121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "deb829ec1ca794a7d2b4fc93568ca4528c16833b"
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
        "PrepareDenseScene_21": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3346,
                1121
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "4b5122117bb7181bc52189c8fe1bd916ec10f6bd"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_21.output}",
                "imagesFolders": [
                    "{ImageProcessing_19.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_21.masksFolder}"
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
        "FeatureExtraction_21": {
            "nodeType": "FeatureExtraction",
            "position": [
                2546,
                1121
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "0df9f3dcfbf22dc8ea0a39ecb6e8666e1adb01db"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_19.outSfMData}",
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
        "ImageMatching_21": {
            "nodeType": "ImageMatching",
            "position": [
                2746,
                1121
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "fc335d89731f8151fae3515b2026a7dd419c8ceb"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_21.input}",
                "featuresFolders": [
                    "{FeatureExtraction_21.output}"
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
        "FeatureMatching_21": {
            "nodeType": "FeatureMatching",
            "position": [
                2946,
                1121
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "2dfaabe0ba62a1f6b6c5588f6253f0752de152ad"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_21.input}",
                "featuresFolders": "{ImageMatching_21.featuresFolders}",
                "imagePairsList": "{ImageMatching_21.output}",
                "describerTypes": "{FeatureExtraction_21.describerTypes}",
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
        "StructureFromMotion_22": {
            "nodeType": "StructureFromMotion",
            "position": [
                3146,
                1298
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "73c94f5509a0c7d4aac4af3d2bb9cb49aed1ae1b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_22.input}",
                "featuresFolders": "{FeatureMatching_22.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_22.output}"
                ],
                "describerTypes": "{FeatureMatching_22.describerTypes}",
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
        "DepthMap_22": {
            "nodeType": "DepthMap",
            "position": [
                3546,
                1298
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 41,
                "split": 14
            },
            "uids": {
                "0": "701dcc5433f6c8ded8890315097be227371138d8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_22.input}",
                "imagesFolder": "{PrepareDenseScene_22.output}",
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
        "DepthMapFilter_22": {
            "nodeType": "DepthMapFilter",
            "position": [
                3746,
                1298
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 41,
                "split": 5
            },
            "uids": {
                "0": "f7b5c08514346bcf0b619c3c9d7ede1b9b38bdda"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_22.input}",
                "depthMapsFolder": "{DepthMap_22.output}",
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
        "Meshing_22": {
            "nodeType": "Meshing",
            "position": [
                3946,
                1298
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "005d25ad570160e7516f1181699ef16150a35613"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_22.input}",
                "depthMapsFolder": "{DepthMapFilter_22.output}",
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
        "Texturing_22": {
            "nodeType": "Texturing",
            "position": [
                4346,
                1298
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "928014df5deff3fff5044ce2ff33c54f6512f280"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_22.output}",
                "imagesFolder": "{DepthMap_22.imagesFolder}",
                "inputMesh": "{MeshFiltering_22.outputMesh}",
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
        "MeshFiltering_22": {
            "nodeType": "MeshFiltering",
            "position": [
                4146,
                1298
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "1db090a27ea68c32dea800987bedce3301b4c8a4"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_22.outputMesh}",
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
        "PrepareDenseScene_22": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3346,
                1298
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "fc987ab5657c56f1ec38b9b68bbfd79024a21f91"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_22.output}",
                "imagesFolders": [
                    "{ImageProcessing_20.output}"
                ],
                "masksFolders": [
                    "{FeatureExtraction_22.masksFolder}"
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
        "FeatureMatching_22": {
            "nodeType": "FeatureMatching",
            "position": [
                2946,
                1298
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 41,
                "split": 3
            },
            "uids": {
                "0": "aa77ae66d2ee0ce7ff9ae75cd20593c172f41d9d"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_22.input}",
                "featuresFolders": "{ImageMatching_22.featuresFolders}",
                "imagePairsList": "{ImageMatching_22.output}",
                "describerTypes": "{FeatureExtraction_22.describerTypes}",
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
        "ImageMatching_22": {
            "nodeType": "ImageMatching",
            "position": [
                2746,
                1298
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 41,
                "split": 1
            },
            "uids": {
                "0": "35fd2bdd8ff435337647e7b8f35d3f969fa4bc78"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_22.input}",
                "featuresFolders": [
                    "{FeatureExtraction_22.output}"
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
        "FeatureExtraction_22": {
            "nodeType": "FeatureExtraction",
            "position": [
                2546,
                1298
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 41,
                "split": 2
            },
            "uids": {
                "0": "0c458f690ea7d4dcf0c0bdbaef651ba0876002b9"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageProcessing_20.outSfMData}",
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
        }
    }
}

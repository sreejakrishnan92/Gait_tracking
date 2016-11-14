# Install script for directory: /home/sreeja/Documents/Projects1/bgslibrary-opencv3

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbgs.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbgs.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/libbgs.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbgs.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbgs.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbgs.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/package_bgs" TYPE FILE FILES
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/GMG.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/ck/LbpMrf.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/ck/block.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/ck/graph.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/ae/KernelTable.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/ae/NPBGmodel.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/ae/NPBGSubtractor.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/ae/KDE.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/BGModel.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/LBAdaptiveSOM.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/Types.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/LBMixtureOfGaussians.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/LBFuzzyAdaptiveSOM.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/BGModelMog.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/LBSimpleGaussian.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/BGModelSom.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/BGModelGauss.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/BGModelFuzzyGauss.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/LBFuzzyGaussian.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/lb/BGModelFuzzySom.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/FrameDifferenceBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/MixtureOfGaussianV2BGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/my/MyBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/AdaptiveSelectiveBackgroundLearning.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/AdaptiveBackgroundLearning.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/KNNBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/LocalBinaryPattern.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/BGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/BlobResult.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/CMultiLayerBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/blob.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/BackgroundSubtractionAPI.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/BlobLibraryConfiguration.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/BlobExtraction.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/OpenCvLegacyIncludes.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/OpenCvDataConversion.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/jmo/MultiLayerBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/StaticFrameDifferenceBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/sjn/SJN_MultiCueBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/WeightedMovingMeanBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/WeightedMovingVarianceBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/pl/LBSP.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/pl/SuBSENSE.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/pl/BackgroundSubtractorLBSP.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/pl/BackgroundSubtractorLOBSTER.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/pl/BackgroundSubtractorSuBSENSE.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/pl/DistanceUtils.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/pl/RandUtils.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/pl/LOBSTER.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/IBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/T2FMRF_UV.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/FuzzyChoquetIntegral.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/T2FGMM.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/MRF.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/T2FMRF.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/T2FMRF_UM.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/T2FGMM_UM.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/FuzzySugenoIntegral.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/PixelUtils.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/PerformanceUtils.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/T2FGMM_UV.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/tb/FuzzyUtils.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/MeanBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/Error.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/Image.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/DPEigenbackgroundBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/Eigenbackground.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/DPAdaptiveMedianBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/DPPratiMediodBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/ZivkovicAGMM.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/PratiMediodBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/Bgs.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/DPGrimsonGMMBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/WrenGA.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/DPTextureBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/BgsParams.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/AdaptiveMedianBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/DPMeanBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/TextureBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/GrimsonGMM.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/DPWrenGABGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/dp/DPZivkovicAGMMBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/MixtureOfGaussianV1BGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/av/VuMeter.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/av/TBackground.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/av/TBackgroundVuMeter.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/db/IndependentMultimodalBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/bl/sdLaMa091.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/bl/SigmaDeltaBGS.h"
    "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/package_bgs/bl/stdbool.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "app")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgs")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgs"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/bgs")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgs")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgs")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgs")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "app")

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/sreeja/Documents/Projects1/bgslibrary-opencv3/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)

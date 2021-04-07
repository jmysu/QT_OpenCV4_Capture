QT += core gui widgets

# https://doc.qt.io/qt-5/qmake-variable-reference.html#config
#CONFIG += c++14

linux {
    message("Linux Opencv4")
    QT_CONFIG -= no-pkg-config
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv4
    }
macx {
    message("MacOS Opencv4")
    message(Qt version: $$[QT_VERSION])
    QT_CONFIG -= no-pkg-config
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv4
    PKG_CONFIG = /usr/local/bin/pkg-config
    }
win32 {
    message("Win64 Opencv440")
    INCLUDEPATH += D:\opencv440\install\include
    LIBS += -LD:\opencv440\install\x64\mingw\bin \
       -lopencv_core440 \
       -lopencv_highgui440 \
       -lopencv_imgproc440 \
       -lopencv_features2d440 \
       -lopencv_calib3d440 \
       -lopencv_imgcodecs440 \
       -lopencv_video440 \
       -lopencv_videoio440
        }
#greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qt-opencv-capture
TEMPLATE = app

DEFINES += APP_VERSION=\\\"1.3.2\\\"
DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += main.cpp \
    MainWindow.cpp \
    MatToQImage.cpp \
    FrameLabel.cpp \
    CameraView.cpp \
    ProcessingThread.cpp \
    CaptureThread.cpp \
    CameraConnectDialog.cpp \
    ImageProcessingSettingsDialog.cpp \
    SharedImageBuffer.cpp  \
    srcLibBGS/algorithms/AdaptiveBackgroundLearning.cpp \
    srcLibBGS/algorithms/AdaptiveSelectiveBackgroundLearning.cpp \
    srcLibBGS/algorithms/CodeBook.cpp \
    srcLibBGS/algorithms/DPAdaptiveMedian.cpp \
    srcLibBGS/algorithms/DPEigenbackground.cpp \
    srcLibBGS/algorithms/DPGrimsonGMM.cpp \
    srcLibBGS/algorithms/DPMean.cpp \
    srcLibBGS/algorithms/DPPratiMediod.cpp \
    srcLibBGS/algorithms/DPTexture.cpp \
    srcLibBGS/algorithms/DPWrenGA.cpp \
    srcLibBGS/algorithms/DPZivkovicAGMM.cpp \
    srcLibBGS/algorithms/FrameDifference.cpp \
    srcLibBGS/algorithms/FuzzyChoquetIntegral.cpp \
    srcLibBGS/algorithms/FuzzySugenoIntegral.cpp \
    srcLibBGS/algorithms/GMG.cpp \
    srcLibBGS/algorithms/IMBS/IMBS.cpp \
    srcLibBGS/algorithms/IndependentMultimodal.cpp \
    srcLibBGS/algorithms/KDE.cpp \
    srcLibBGS/algorithms/KDE/KernelTable.cpp \
    srcLibBGS/algorithms/KDE/NPBGSubtractor.cpp \
    srcLibBGS/algorithms/KDE/NPBGmodel.cpp \
    srcLibBGS/algorithms/KNN.cpp \
    srcLibBGS/algorithms/LBAdaptiveSOM.cpp \
    srcLibBGS/algorithms/LBFuzzyAdaptiveSOM.cpp \
    srcLibBGS/algorithms/LBFuzzyGaussian.cpp \
    srcLibBGS/algorithms/LBMixtureOfGaussians.cpp \
    srcLibBGS/algorithms/LBP_MRF.cpp \
    srcLibBGS/algorithms/LBP_MRF/MEDefs.cpp \
    srcLibBGS/algorithms/LBP_MRF/MEHistogram.cpp \
    srcLibBGS/algorithms/LBP_MRF/MEImage.cpp \
    srcLibBGS/algorithms/LBP_MRF/MotionDetection.cpp \
    srcLibBGS/algorithms/LBP_MRF/graph.cpp \
    srcLibBGS/algorithms/LBP_MRF/maxflow.cpp \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorLBSP.cpp \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorLBSP_.cpp \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorLOBSTER.cpp \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorPAWCS.cpp \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorSuBSENSE.cpp \
    srcLibBGS/algorithms/LBSP/LBSP.cpp \
    srcLibBGS/algorithms/LBSP/LBSP_.cpp \
    srcLibBGS/algorithms/LBSimpleGaussian.cpp \
    srcLibBGS/algorithms/LOBSTER.cpp \
    srcLibBGS/algorithms/MixtureOfGaussianV1.cpp \
    srcLibBGS/algorithms/MixtureOfGaussianV2.cpp \
    srcLibBGS/algorithms/MultiCue.cpp \
    srcLibBGS/algorithms/MultiLayer.cpp \
    srcLibBGS/algorithms/MultiLayer/BlobExtraction.cpp \
    srcLibBGS/algorithms/MultiLayer/BlobResult.cpp \
    srcLibBGS/algorithms/MultiLayer/CMultiLayerBGS.cpp \
    srcLibBGS/algorithms/MultiLayer/LocalBinaryPattern.cpp \
    srcLibBGS/algorithms/MultiLayer/blob.cpp \
    srcLibBGS/algorithms/PAWCS.cpp \
    srcLibBGS/algorithms/PBAS/PBAS.cpp \
    srcLibBGS/algorithms/PixelBasedAdaptiveSegmenter.cpp \
    srcLibBGS/algorithms/SigmaDelta.cpp \
    srcLibBGS/algorithms/SigmaDelta/sdLaMa091.cpp \
    srcLibBGS/algorithms/StaticFrameDifference.cpp \
    srcLibBGS/algorithms/SuBSENSE.cpp \
    srcLibBGS/algorithms/T2F/MRF.cpp \
    srcLibBGS/algorithms/T2F/T2FGMM.cpp \
    srcLibBGS/algorithms/T2F/T2FMRF.cpp \
    srcLibBGS/algorithms/T2FGMM_UM.cpp \
    srcLibBGS/algorithms/T2FGMM_UV.cpp \
    srcLibBGS/algorithms/T2FMRF_UM.cpp \
    srcLibBGS/algorithms/T2FMRF_UV.cpp \
    srcLibBGS/algorithms/TwoPoints.cpp \
    srcLibBGS/algorithms/TwoPoints/two_points.cpp \
    srcLibBGS/algorithms/ViBe.cpp \
    srcLibBGS/algorithms/ViBe/vibe-background-sequential.cpp \
    srcLibBGS/algorithms/VuMeter.cpp \
    srcLibBGS/algorithms/VuMeter/TBackground.cpp \
    srcLibBGS/algorithms/VuMeter/TBackgroundVuMeter.cpp \
    srcLibBGS/algorithms/WeightedMovingMean.cpp \
    srcLibBGS/algorithms/WeightedMovingVariance.cpp \
    srcLibBGS/algorithms/_template_/MyBGS.cpp \
    srcLibBGS/algorithms/algorithms.cpp \
    srcLibBGS/algorithms/dp/AdaptiveMedianBGS.cpp \
    srcLibBGS/algorithms/dp/Eigenbackground.cpp \
    srcLibBGS/algorithms/dp/Error.cpp \
    srcLibBGS/algorithms/dp/GrimsonGMM.cpp \
    srcLibBGS/algorithms/dp/Image.cpp \
    srcLibBGS/algorithms/dp/MeanBGS.cpp \
    srcLibBGS/algorithms/dp/PratiMediodBGS.cpp \
    srcLibBGS/algorithms/dp/TextureBGS.cpp \
    srcLibBGS/algorithms/dp/WrenGA.cpp \
    srcLibBGS/algorithms/dp/ZivkovicAGMM.cpp \
    srcLibBGS/algorithms/lb/BGModel.cpp \
    srcLibBGS/algorithms/lb/BGModelFuzzyGauss.cpp \
    srcLibBGS/algorithms/lb/BGModelFuzzySom.cpp \
    srcLibBGS/algorithms/lb/BGModelGauss.cpp \
    srcLibBGS/algorithms/lb/BGModelMog.cpp \
    srcLibBGS/algorithms/lb/BGModelSom.cpp \
    srcLibBGS/tools/ForegroundMaskAnalysis.cpp \
    srcLibBGS/tools/FuzzyUtils.cpp \
    srcLibBGS/tools/PerformanceUtils.cpp \
    srcLibBGS/tools/PixelUtils.cpp

HEADERS += \
    MainWindow.h \
    Config.h \
    MatToQImage.h \
    FrameLabel.h \
    Structures.h \
    CameraView.h \
    ProcessingThread.h \
    CaptureThread.h \
    CameraConnectDialog.h \
    ImageProcessingSettingsDialog.h \
    SharedImageBuffer.h \
    Buffer.h  \
    srcLibBGS/algorithms/AdaptiveBackgroundLearning.h \
    srcLibBGS/algorithms/AdaptiveSelectiveBackgroundLearning.h \
    srcLibBGS/algorithms/CodeBook.h \
    srcLibBGS/algorithms/DPAdaptiveMedian.h \
    srcLibBGS/algorithms/DPEigenbackground.h \
    srcLibBGS/algorithms/DPGrimsonGMM.h \
    srcLibBGS/algorithms/DPMean.h \
    srcLibBGS/algorithms/DPPratiMediod.h \
    srcLibBGS/algorithms/DPTexture.h \
    srcLibBGS/algorithms/DPWrenGA.h \
    srcLibBGS/algorithms/DPZivkovicAGMM.h \
    srcLibBGS/algorithms/FrameDifference.h \
    srcLibBGS/algorithms/FuzzyChoquetIntegral.h \
    srcLibBGS/algorithms/FuzzySugenoIntegral.h \
    srcLibBGS/algorithms/GMG.h \
    srcLibBGS/algorithms/IBGS.h \
    srcLibBGS/algorithms/IMBS/IMBS.hpp \
    srcLibBGS/algorithms/IndependentMultimodal.h \
    srcLibBGS/algorithms/KDE.h \
    srcLibBGS/algorithms/KDE/KernelTable.h \
    srcLibBGS/algorithms/KDE/NPBGSubtractor.h \
    srcLibBGS/algorithms/KDE/NPBGmodel.h \
    srcLibBGS/algorithms/KNN.h \
    srcLibBGS/algorithms/LBAdaptiveSOM.h \
    srcLibBGS/algorithms/LBFuzzyAdaptiveSOM.h \
    srcLibBGS/algorithms/LBFuzzyGaussian.h \
    srcLibBGS/algorithms/LBMixtureOfGaussians.h \
    srcLibBGS/algorithms/LBP_MRF.h \
    srcLibBGS/algorithms/LBP_MRF/MEDefs.hpp \
    srcLibBGS/algorithms/LBP_MRF/MEHistogram.hpp \
    srcLibBGS/algorithms/LBP_MRF/MEImage.hpp \
    srcLibBGS/algorithms/LBP_MRF/MotionDetection.hpp \
    srcLibBGS/algorithms/LBP_MRF/block.h \
    srcLibBGS/algorithms/LBP_MRF/graph.h \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorLBSP.h \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorLBSP_.h \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorLOBSTER.h \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorPAWCS.h \
    srcLibBGS/algorithms/LBSP/BackgroundSubtractorSuBSENSE.h \
    srcLibBGS/algorithms/LBSP/DistanceUtils.h \
    srcLibBGS/algorithms/LBSP/LBSP.h \
    srcLibBGS/algorithms/LBSP/LBSP_.h \
    srcLibBGS/algorithms/LBSP/RandUtils.h \
    srcLibBGS/algorithms/LBSimpleGaussian.h \
    srcLibBGS/algorithms/LOBSTER.h \
    srcLibBGS/algorithms/MixtureOfGaussianV1.h \
    srcLibBGS/algorithms/MixtureOfGaussianV2.h \
    srcLibBGS/algorithms/MultiCue.h \
    srcLibBGS/algorithms/MultiLayer.h \
    srcLibBGS/algorithms/MultiLayer/BGS.h \
    srcLibBGS/algorithms/MultiLayer/BackgroundSubtractionAPI.h \
    srcLibBGS/algorithms/MultiLayer/BlobExtraction.h \
    srcLibBGS/algorithms/MultiLayer/BlobLibraryConfiguration.h \
    srcLibBGS/algorithms/MultiLayer/BlobResult.h \
    srcLibBGS/algorithms/MultiLayer/CMultiLayerBGS.h \
    srcLibBGS/algorithms/MultiLayer/LocalBinaryPattern.h \
    srcLibBGS/algorithms/MultiLayer/OpenCvDataConversion.h \
    srcLibBGS/algorithms/MultiLayer/OpenCvLegacyIncludes.h \
    srcLibBGS/algorithms/MultiLayer/blob.h \
    srcLibBGS/algorithms/PAWCS.h \
    srcLibBGS/algorithms/PBAS/PBAS.h \
    srcLibBGS/algorithms/PixelBasedAdaptiveSegmenter.h \
    srcLibBGS/algorithms/SigmaDelta.h \
    srcLibBGS/algorithms/SigmaDelta/sdLaMa091.h \
    srcLibBGS/algorithms/StaticFrameDifference.h \
    srcLibBGS/algorithms/SuBSENSE.h \
    srcLibBGS/algorithms/T2F/MRF.h \
    srcLibBGS/algorithms/T2F/T2FGMM.h \
    srcLibBGS/algorithms/T2F/T2FMRF.h \
    srcLibBGS/algorithms/T2FGMM_UM.h \
    srcLibBGS/algorithms/T2FGMM_UV.h \
    srcLibBGS/algorithms/T2FMRF_UM.h \
    srcLibBGS/algorithms/T2FMRF_UV.h \
    srcLibBGS/algorithms/TwoPoints.h \
    srcLibBGS/algorithms/TwoPoints/two_points.h \
    srcLibBGS/algorithms/ViBe.h \
    srcLibBGS/algorithms/ViBe/vibe-background-sequential.h \
    srcLibBGS/algorithms/VuMeter.h \
    srcLibBGS/algorithms/VuMeter/TBackground.h \
    srcLibBGS/algorithms/VuMeter/TBackgroundVuMeter.h \
    srcLibBGS/algorithms/WeightedMovingMean.h \
    srcLibBGS/algorithms/WeightedMovingVariance.h \
    srcLibBGS/algorithms/_template_/MyBGS.h \
    srcLibBGS/algorithms/algorithms.h \
    srcLibBGS/algorithms/dp/AdaptiveMedianBGS.h \
    srcLibBGS/algorithms/dp/Bgs.h \
    srcLibBGS/algorithms/dp/BgsParams.h \
    srcLibBGS/algorithms/dp/Eigenbackground.h \
    srcLibBGS/algorithms/dp/Error.h \
    srcLibBGS/algorithms/dp/GrimsonGMM.h \
    srcLibBGS/algorithms/dp/Image.h \
    srcLibBGS/algorithms/dp/MeanBGS.h \
    srcLibBGS/algorithms/dp/PratiMediodBGS.h \
    srcLibBGS/algorithms/dp/TextureBGS.h \
    srcLibBGS/algorithms/dp/WrenGA.h \
    srcLibBGS/algorithms/dp/ZivkovicAGMM.h \
    srcLibBGS/algorithms/lb/BGModel.h \
    srcLibBGS/algorithms/lb/BGModelFuzzyGauss.h \
    srcLibBGS/algorithms/lb/BGModelFuzzySom.h \
    srcLibBGS/algorithms/lb/BGModelGauss.h \
    srcLibBGS/algorithms/lb/BGModelMog.h \
    srcLibBGS/algorithms/lb/BGModelSom.h \
    srcLibBGS/algorithms/lb/Types.h \
    srcLibBGS/tools/ForegroundMaskAnalysis.h \
    srcLibBGS/tools/FuzzyUtils.h \
    srcLibBGS/tools/PerformanceUtils.h \
    srcLibBGS/tools/PixelUtils.h \
    srcLibBGS/utils/GenericKeys.h \
    srcLibBGS/utils/GenericMacros.h \
    srcLibBGS/utils/ILoadSaveConfig.h


FORMS += \
    MainWindow.ui \
    CameraView.ui \
    CameraConnectDialog.ui \
    ImageProcessingSettingsDialog.ui

#QMAKE_CXXFLAGS += -Wall

DISTFILES += \
    srcLibBGS/algorithms/LBSP/LBSP_16bits_dbcross_1ch.i \
    srcLibBGS/algorithms/LBSP/LBSP_16bits_dbcross_3ch1t.i \
    srcLibBGS/algorithms/LBSP/LBSP_16bits_dbcross_3ch3t.i \
    srcLibBGS/algorithms/LBSP/LBSP_16bits_dbcross_s3ch.i \
    srcLibBGS/algorithms/ViBe/LICENSE

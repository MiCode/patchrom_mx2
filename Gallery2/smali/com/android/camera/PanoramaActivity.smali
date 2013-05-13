.class public Lcom/android/camera/PanoramaActivity;
.super Lcom/android/camera/ActivityBase;
.source "PanoramaActivity.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ModePicker$OnModeChangeListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoramaActivity$WaitProcessorTask;,
        Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;,
        Lcom/android/camera/PanoramaActivity$MosaicJpeg;,
        Lcom/android/camera/PanoramaActivity$SetupCameraThread;
    }
.end annotation


# instance fields
.field private mCameraOrientation:I

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mCaptureLayout:Landroid/widget/LinearLayout;

.field private mCaptureState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDateTimeStampFormat:Ljava/text/DateFormat;

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mGPSDateStampFormat:Ljava/text/DateFormat;

.field private mGPSTimeStampFormat:Ljava/text/DateFormat;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mModePicker:Lcom/android/camera/ModePicker;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/ViewGroup;

.field private mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewArea:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mTransformMatrix:[F

.field private mUpdateTexImageRunnable:Ljava/lang/Runnable;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    .line 151
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    .line 1202
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->setupCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoramaActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetToPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/PanoramaActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/PanoramaActivity;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaActivity;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/camera/PanoramaActivity;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PanoramaActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/PanoramaActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mUsingFrontCamera:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaActivity;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/PanoramaActivity;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/camera/PanoramaActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/PanoramaActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaActivity;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PanoramaActivity;)Lcom/android/gallery3d/ui/GLRootView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    .line 851
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 853
    monitor-exit v1

    .line 854
    return-void

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 471
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 472
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 479
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 481
    .local v0, isLandscape:Z
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 482
    :cond_0
    new-instance v1, Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, v0}, Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 485
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 486
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_1

    .line 487
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetToPreview()V

    .line 489
    :cond_1
    return-void

    .line 475
    .end local v0           #isLandscape:Z
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 476
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 477
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->notifyScreenNailChanged()V

    goto :goto_0

    .line 479
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 455
    return-void
.end method

.method private createContentView()V
    .locals 3

    .prologue
    .line 726
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->setContentView(I)V

    .line 727
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 728
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    .line 729
    const v0, 0x7f080039

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    .line 730
    const v0, 0x7f08003a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColorFast:I

    .line 731
    const v0, 0x7f0d00fa

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoLayout:Landroid/view/ViewGroup;

    .line 732
    new-instance v0, Lcom/android/camera/RotateDialogController;

    const v2, 0x7f040075

    invoke-direct {v0, p0, v2}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 733
    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaActivity;->setViews(Landroid/content/res/Resources;)V

    .line 734
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xa8c00

    .line 389
    .local v4, pixelsDiff:I
    const/4 v2, 0x0

    .line 390
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 391
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 392
    .local v1, h:I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 394
    .local v6, w:I
    const v7, 0xa8c00

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 395
    .local v0, d:I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 398
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 401
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 402
    if-ge v0, v4, :cond_0

    .line 403
    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    .line 404
    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    .line 405
    move v4, v0

    .line 406
    const/4 v2, 0x1

    goto :goto_0

    .line 409
    .end local v0           #d:I
    .end local v1           #h:I
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #w:I
    :cond_3
    return v2
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 931
    sparse-switch p0, :sswitch_data_0

    .line 941
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 933
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 939
    :goto_0
    return-object v0

    .line 935
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 937
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 939
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 931
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 515
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 624
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 629
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 631
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1199
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1200
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1192
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1193
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1195
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    .line 846
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 847
    return-void
.end method

.method private openCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 380
    .local v0, cameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 381
    :cond_0
    invoke-static {p0, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 382
    invoke-static {v0}, Lcom/android/camera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I

    .line 383
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mUsingFrontCamera:Z

    .line 384
    :cond_1
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 368
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 369
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    .line 372
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 871
    iput v2, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 877
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->setSwipingEnabled(Z)V

    .line 878
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 880
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 883
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1188
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1189
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->reset()V

    .line 887
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->startCameraPreview()V

    .line 888
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    .line 841
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 842
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 901
    if-eqz p1, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v0, v1, v2}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 904
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    iget-wide v3, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    move v6, p4

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;ZLjava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v5

    .line 906
    if-eqz v5, :cond_0

    .line 907
    invoke-static {v2}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 911
    const-string v2, "GPSDateStamp"

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSDateStampFormat:Ljava/text/DateFormat;

    iget-wide v6, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v2, "GPSTimeStamp"

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    iget-wide v6, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v2, "DateTime"

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDateTimeStampFormat:Ljava/text/DateFormat;

    iget-wide v6, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v2, "Orientation"

    invoke-static {p4}, Lcom/android/camera/PanoramaActivity;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :cond_0
    :goto_0
    return-object v5

    .line 921
    :catch_0
    move-exception v0

    .line 922
    const-string v2, "PanoramaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set EXIF for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f080037

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 654
    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 655
    const v0, 0x7f0d015f

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 656
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 657
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const v2, 0x7f080038

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 659
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    new-instance v2, Lcom/android/camera/PanoramaActivity$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaActivity$6;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 669
    const v0, 0x7f0d0160

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    .line 670
    const v0, 0x7f0d0161

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    .line 671
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 672
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 673
    const v0, 0x7f0d0163

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    .line 675
    const v0, 0x7f0d015d

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    .line 676
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 678
    const v0, 0x7f0d00f6

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 679
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 680
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 681
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 682
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v2, 0x7f080039

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 684
    const v0, 0x7f0d015c

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 686
    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MaskedRotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    .line 687
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->enableFilter(Z)V

    .line 688
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/MaskedRotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    .line 690
    const v0, 0x7f0d00f1

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    .line 691
    const v0, 0x7f0d00f3

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    .line 693
    const v0, 0x7f0d00e1

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ModePicker;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    .line 694
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ModePicker;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModePicker;->setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V

    .line 696
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v4}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 698
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 699
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020044

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 700
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 702
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 704
    const/16 v0, 0xa

    new-array v2, v0, [Lcom/android/camera/ui/Rotatable;

    const v0, 0x7f0d015e

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v2, v1

    const v0, 0x7f0d0162

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v2, v3

    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v2, v4

    const/4 v3, 0x3

    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v2, v3

    const/4 v3, 0x4

    const v0, 0x7f0d00f7

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v2, v3

    const/4 v3, 0x5

    const v0, 0x7f0d00f9

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v2, v3

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    aput-object v3, v2, v0

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    aput-object v3, v2, v0

    .line 715
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 716
    const/16 v5, 0x10e

    invoke-interface {v4, v5, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/RotateDialogController;->setOrientation(IZ)V

    .line 723
    :cond_1
    return-void
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->openCamera()V

    .line 360
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 361
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 363
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 413
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 414
    .local v5, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/android/camera/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 415
    const-string v6, "PanoramaActivity"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0, v5, v9, v10}, Lcom/android/camera/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 417
    const-string v6, "PanoramaActivity"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0, v5, v9, v9}, Lcom/android/camera/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 421
    :cond_0
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget v6, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 424
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 425
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 426
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 427
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 428
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 429
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 432
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 433
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 440
    :goto_0
    invoke-virtual {p1, v9}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 442
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F

    .line 443
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F

    .line 444
    return-void

    .line 436
    :cond_1
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 520
    packed-switch p1, :pswitch_data_0

    .line 534
    :goto_0
    return-void

    .line 522
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 526
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 530
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/16 v1, 0x8

    .line 891
    if-eqz p1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 898
    return-void
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 615
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 619
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 621
    return-void
.end method

.method private startCameraPreview()V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1149
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1157
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1159
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1160
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1165
    const-string v0, "PanoramaActivity"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1168
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    .line 1169
    return-void
.end method

.method private stopCapture(Z)V
    .locals 4
    .parameter "aborted"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 580
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 581
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideTooFastIndication()V

    .line 582
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideDirectionIndicators()V

    .line 583
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v3}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 586
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 588
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 590
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 592
    new-instance v0, Lcom/android/camera/PanoramaActivity$5;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$5;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 611
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 612
    return-void
.end method

.method private switchToOtherMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 460
    :cond_1
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->finish()V

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 3
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x41c8

    .line 635
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 640
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 642
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->showTooFastIndication()V

    .line 646
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    float-to-int v0, p3

    .line 650
    .local v0, angleInMajorDirection:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 651
    return-void

    .line 644
    .end local v0           #angleInMajorDirection:I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideTooFastIndication()V

    goto :goto_0

    .line 646
    :cond_2
    float-to-int v0, p4

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    .line 234
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public generateFinalMosaic(Z)Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1095
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v0

    .line 1096
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1131
    :goto_0
    return-object v5

    .line 1098
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1099
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1103
    if-nez v1, :cond_2

    .line 1104
    const-string v0, "PanoramaActivity"

    const-string v1, "getFinalMosaicNV21() returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 1108
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 1109
    add-int/lit8 v2, v0, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 1111
    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 1113
    const-string v2, "PanoramaActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", W = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", H = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1117
    :cond_3
    const-string v1, "PanoramaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width|height <= 0!!, len = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", W = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", H = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0

    .line 1122
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1123
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1124
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1126
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v5, p0, v0, v3, v4}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;[BII)V

    goto/16 :goto_0

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    const-string v1, "PanoramaActivity"

    const-string v2, "Exception in storing final mosaic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1129
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 447
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 448
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 450
    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1181
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    :cond_2
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->cancelHighResComputation()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1006
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1008
    const/4 v0, 0x0

    .line 1009
    iget-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1012
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1015
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1016
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1017
    const v3, 0x7f040069

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1018
    const v3, 0x7f04000a

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1020
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mPanoLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1021
    const v3, 0x7f040048

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mPanoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1023
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaActivity;->setViews(Landroid/content/res/Resources;)V

    .line 1024
    iget-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v1, :cond_1

    .line 1025
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1026
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->updateThumbnailView()V

    .line 1031
    return-void

    .line 1012
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 239
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 241
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->createContentView()V

    .line 243
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 244
    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->createCameraScreenNail(Z)V

    .line 246
    new-instance v3, Lcom/android/camera/PanoramaActivity$1;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaActivity$1;-><init>(Lcom/android/camera/PanoramaActivity;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mUpdateTexImageRunnable:Ljava/lang/Runnable;

    .line 257
    new-instance v3, Lcom/android/camera/PanoramaActivity$2;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaActivity$2;-><init>(Lcom/android/camera/PanoramaActivity;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 278
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 279
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "kk/1,mm/1,ss/1"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 280
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 281
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 282
    .local v2, tzUTC:Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 283
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 285
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/camera/PanoramaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 286
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "Panorama"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 288
    new-instance v3, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-direct {v3, p0, p0}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;-><init>(Lcom/android/camera/PanoramaActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    .line 290
    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mTransformMatrix:[F

    .line 291
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 293
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 294
    .local v0, appRes:Landroid/content/res/Resources;
    const v3, 0x7f0a008c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    .line 295
    const v3, 0x7f0a008e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    .line 296
    const v3, 0x7f0a007f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    .line 297
    const v3, 0x7f0a008d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 298
    const v3, 0x7f0a0090

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 302
    new-instance v3, Lcom/android/camera/PanoramaActivity$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaActivity$3;-><init>(Lcom/android/camera/PanoramaActivity;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    .line 351
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surface"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 512
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "oldl"
    .parameter "oldt"
    .parameter "oldr"
    .parameter "oldb"

    .prologue
    .line 497
    invoke-super/range {p0 .. p9}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 498
    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 503
    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V

    goto :goto_0
.end method

.method public onModeChanged(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 466
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->switchToOtherMode(I)V

    .line 467
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 964
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 965
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 967
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->disable()V

    .line 968
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 973
    :cond_0
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    if-ne v0, v1, :cond_1

    .line 974
    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    .line 975
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->reset()V

    .line 978
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->releaseCamera()V

    .line 979
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 983
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 985
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 988
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    .line 989
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    .line 990
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 991
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 993
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetScreenOn()V

    .line 994
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_4

    .line 995
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 996
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    .line 998
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 999
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1001
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1035
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1036
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1037
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->enable()V

    .line 1039
    iput v2, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 1041
    new-instance v0, Lcom/android/camera/PanoramaActivity$SetupCameraThread;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PanoramaActivity$SetupCameraThread;-><init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V

    .line 1042
    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity$SetupCameraThread;->start()V

    .line 1044
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity$SetupCameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v0, :cond_0

    .line 1050
    const v0, 0x7f0a0022

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 1084
    :goto_1
    return-void

    .line 1052
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1053
    const v0, 0x7f0a0023

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1058
    :cond_1
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1059
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 1060
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1064
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1066
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;-><init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1079
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getLastThumbnail()V

    .line 1080
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1083
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    goto :goto_1

    .line 1069
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1072
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    .line 1073
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1074
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1075
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1076
    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V

    goto :goto_2

    .line 1045
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 2

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 745
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 746
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->startCapture()V

    goto :goto_0

    .line 749
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 750
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 756
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->gotoGallery()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1173
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 1174
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1175
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 759
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 760
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 761
    new-instance v0, Lcom/android/camera/PanoramaActivity$7;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$7;-><init>(Lcom/android/camera/PanoramaActivity;)V

    .line 785
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 786
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 789
    new-instance v0, Lcom/android/camera/PanoramaActivity$8;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$8;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 836
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->reportProgress()V

    .line 837
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 538
    iput-boolean v2, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    .line 540
    invoke-virtual {p0, v2}, Lcom/android/camera/PanoramaActivity;->setSwipingEnabled(Z)V

    .line 541
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 542
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 543
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 544
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaActivity;->showDirectionIndicators(I)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->setEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/camera/PanoramaActivity$4;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaActivity$4;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 571
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 573
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 574
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I

    .line 575
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOn()V

    .line 576
    return-void
.end method

.class public Lcom/android/camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$MainHandler;,
        Lcom/android/camera/FocusManager$Listener;
    }
.end annotation


# instance fields
.field private mAccCount:I

.field private mAeAwbLock:Z

.field private mAutoFocusSensor:Landroid/hardware/Sensor;

.field private final mAutoFocusSensorListener:Landroid/hardware/SensorEventListener;

.field private mAutoFocusSensorManager:Landroid/hardware/SensorManager;

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/view/View;

.field private mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

.field private mFocusMode:Ljava/lang/String;

.field private mGetEVCount:I

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mIsAutoFocus:Z

.field private mIsAutoFocusSensorResisterSuccess:Z

.field private mIsDetection:Z

.field private mIsDetectionEV:Z

.field private mIsGetCameraEV:Z

.field private mIsLockFocus:Z

.field private mIsWaitAF:Z

.field private mLastEV:I

.field mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMirror:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreAccValue:I

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I

.field private mTimer:J

.field private mTouchFocusIndicatorLen:I

.field private mTouchPosition:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 3
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "focusIndicatorRotate"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsGetCameraEV:Z

    .line 90
    iput v2, p0, Lcom/android/camera/FocusManager;->mLastEV:I

    .line 91
    iput v2, p0, Lcom/android/camera/FocusManager;->mGetEVCount:I

    .line 92
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsDetectionEV:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsWaitAF:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    .line 125
    iput v2, p0, Lcom/android/camera/FocusManager;->mPreAccValue:I

    .line 126
    iput v2, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/FocusManager;->mTimer:J

    .line 130
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsAutoFocus:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsLockFocus:Z

    .line 133
    iput v2, p0, Lcom/android/camera/FocusManager;->mTouchFocusIndicatorLen:I

    .line 761
    new-instance v0, Lcom/android/camera/FocusManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/FocusManager$1;-><init>(Lcom/android/camera/FocusManager;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorListener:Landroid/hardware/SensorEventListener;

    .line 258
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p7}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 259
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 261
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 262
    iput-object p2, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 263
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 264
    invoke-virtual {p0, p4}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 265
    iput-object p5, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 266
    invoke-virtual {p0, p6}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsGetCameraEV:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/FocusManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/FocusManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/FocusManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    return p1
.end method

.method static synthetic access$1108(Lcom/android/camera/FocusManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/FocusManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/camera/FocusManager;->mTimer:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/camera/FocusManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/camera/FocusManager;->mTimer:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->forbitAutoFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/FocusManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/FocusManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getCameraEV()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsWaitAF:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/FocusManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mIsWaitAF:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/FocusManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/FocusManager;->mLastEV:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/FocusManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastEV:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsDetectionEV:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/FocusManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mIsDetectionEV:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/FocusManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/FocusManager;->mGetEVCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/FocusManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/FocusManager;->mGetEVCount:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/camera/FocusManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/FocusManager;->mGetEVCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/FocusManager;->mGetEVCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/FocusManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/FocusManager;->mPreAccValue:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/FocusManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreAccValue:I

    return p1
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    const-string v0, "FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 592
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 593
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 594
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 595
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsAutoFocus:Z

    .line 597
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 600
    iput v1, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    .line 601
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    .line 602
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iput v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 604
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    :cond_0
    return-void
.end method

.method private forbitAutoFocus()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getIsZoomSeekBarVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getIsCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getCameraId()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_BACK:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getIsForbitAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getIsZoomScale()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getIsShutterBtnLongPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getIsCaptrue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getIsCanNextFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCameraEV()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-nez v0, :cond_0

    .line 236
    const/4 v0, -0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getCameraEV()I

    move-result v0

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 749
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetFocusIndicatorLayoutParams(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 304
    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v1, v2, 0x6

    .line 305
    .local v1, len:I
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 306
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 313
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #len:I
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 310
    .restart local v0       #layout:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/camera/FocusManager;->mTouchFocusIndicatorLen:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 311
    iget v2, p0, Lcom/android/camera/FocusManager;->mTouchFocusIndicatorLen:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 316
    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 317
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 318
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 323
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 324
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    .line 326
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method private touchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 556
    const-string v0, "FocusManager"

    const-string v1, "Start touchfocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iput v2, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    .line 558
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    .line 559
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->disableGetEV()V

    .line 560
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->touchFocus()V

    .line 561
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 562
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsLockFocus:Z

    .line 564
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 541
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iput v2, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    .line 544
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    .line 545
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 546
    iput v3, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 547
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->resetFocusIndicatorLayoutParams(I)V

    .line 548
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 549
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mIsAutoFocus:Z

    .line 551
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsLockFocus:Z

    .line 553
    :cond_0
    return-void
.end method

.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 695
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 696
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 697
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 698
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 700
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 701
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 702
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 703
    return-void
.end method

.method public clearHoldFocusIndicator()V
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsLockFocus:Z

    .line 745
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 746
    return-void
.end method

.method public disableGetEV()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 371
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0

    .line 372
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 376
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 377
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public enableGetEV()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 609
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 641
    :goto_0
    return-object v3

    .line 610
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 612
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 614
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 631
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 634
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 636
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 641
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 617
    :cond_3
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 621
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 622
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 623
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 624
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 625
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 622
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 638
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public getTouchPosition()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/android/camera/FocusManager;->mTouchPosition:I

    return v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 706
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 710
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    const-string v0, "FocusManager"

    const-string v1, "Start lockfocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iput v3, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    .line 569
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    .line 570
    iput-boolean v4, p0, Lcom/android/camera/FocusManager;->mIsLockFocus:Z

    .line 571
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->disableGetEV()V

    .line 572
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 574
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 576
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->lockFocus()V

    .line 579
    iput v4, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 580
    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->resetFocusIndicatorLayoutParams(I)V

    .line 581
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 582
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    return-void
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 415
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 419
    if-eqz p1, :cond_1

    .line 420
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 424
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 425
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    .line 454
    :cond_0
    :goto_1
    return-void

    .line 422
    :cond_1
    iput v4, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 426
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 430
    if-eqz p1, :cond_6

    .line 431
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 435
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 441
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 444
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocus:Z

    if-eqz v0, :cond_5

    .line 445
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsLockFocus:Z

    if-nez v0, :cond_5

    .line 446
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 449
    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mIsAutoFocus:Z

    goto :goto_1

    .line 439
    :cond_6
    iput v4, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_2

    .line 450
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 2
    .parameter "moving"

    .prologue
    .line 459
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eqz v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 461
    :cond_0
    if-eqz p1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 538
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 527
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 531
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 533
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 534
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_2

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 334
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 337
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 352
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 358
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 360
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 16
    .parameter "x"
    .parameter "y"

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    .line 474
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 478
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getWidth()I

    move-result v3

    .line 479
    .local v3, focusWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getHeight()I

    move-result v4

    .line 480
    .local v4, focusHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 481
    .local v8, previewWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 482
    .local v9, previewHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_4

    .line 483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_4
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 494
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 500
    .local v13, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v2, v3, 0x2

    sub-int v2, p1, v2

    const/4 v5, 0x0

    sub-int v6, v8, v3

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v12

    .line 501
    .local v12, left:I
    div-int/lit8 v2, v4, 0x2

    sub-int v2, p2, v2

    const/4 v5, 0x0

    sub-int v6, v9, v4

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v15

    .line 502
    .local v15, top:I
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v12, v15, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 504
    invoke-virtual {v13}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v14

    .line 505
    .local v14, rules:[I
    const/16 v2, 0xd

    const/4 v5, 0x0

    aput v5, v14, v2

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->requestLayout()V

    .line 508
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_5

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/FocusManager;->autoFocus()V

    goto/16 :goto_0

    .line 511
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/FocusManager;->resetFocusIndicatorLayoutParams(I)V

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 513
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v8, v9}, Lcom/android/camera/CameraDeviceManager;->getTouchFocusNum(IIII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/FocusManager;->mTouchPosition:I

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/FocusManager;->touchFocus()V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    const/16 v11, 0x5dc

    .line 518
    .local v11, delay:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v2}, Lcom/android/camera/FocusManager$Listener;->getCameraEV()I

    move-result v2

    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_6

    .line 519
    const/16 v11, 0xdac

    .line 521
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    int-to-long v6, v11

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 719
    return-void
.end method

.method public registerAccSensorListener(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 393
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensor:Landroid/hardware/Sensor;

    .line 398
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    if-nez v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    .line 401
    :cond_2
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 715
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 679
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 691
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 684
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 685
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 686
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 687
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 689
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 690
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 722
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 723
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "displayOrientation"

    .prologue
    .line 298
    iput p1, p0, Lcom/android/camera/FocusManager;->mDisplayOrientation:I

    .line 299
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 300
    return-void
.end method

.method public setFocusAreaIndicator(Landroid/view/View;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 251
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 252
    const v0, 0x7f0d0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    .line 253
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    .line 294
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 295
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 271
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 274
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 276
    return-void

    :cond_2
    move v0, v2

    .line 271
    goto :goto_0
.end method

.method public setPreviewSize(III)V
    .locals 2
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "len"

    .prologue
    .line 279
    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eq v1, p2, :cond_1

    .line 280
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 281
    iput p2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 282
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 285
    iput p3, p0, Lcom/android/camera/FocusManager;->mTouchFocusIndicatorLen:I

    .line 286
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 287
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 288
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 290
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public unregisterAccSensorListener()V
    .locals 2

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    .line 412
    :cond_0
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 664
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 665
    :cond_4
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 667
    :cond_5
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 669
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0

    .line 670
    :cond_6
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 671
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0

    .line 672
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showFail(Z)V

    goto :goto_0
.end method

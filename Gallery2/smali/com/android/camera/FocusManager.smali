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

    .line 256
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

    .line 739
    new-instance v0, Lcom/android/camera/FocusManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/FocusManager$1;-><init>(Lcom/android/camera/FocusManager;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorListener:Landroid/hardware/SensorEventListener;

    .line 257
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p7}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 258
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 260
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 261
    iput-object p2, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 262
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 263
    invoke-virtual {p0, p4}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 264
    iput-object p5, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 265
    invoke-virtual {p0, p6}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 266
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

    .line 564
    const-string v0, "FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 570
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 571
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 572
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 573
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsAutoFocus:Z

    .line 575
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 578
    iput v1, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    .line 579
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    .line 580
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iput v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 582
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    :cond_0
    return-void
.end method

.method private forbitAutoFocus()Z
    .locals 2

    .prologue
    .line 241
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

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->getIsShowCaptureAlert()Z

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
    .line 234
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, -0x1

    .line 237
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

    .line 727
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
    .line 731
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 732
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

.method private setMatrix()V
    .locals 5

    .prologue
    .line 301
    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 302
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 303
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 308
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    .line 311
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method private touchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    const-string v0, "FocusManager"

    const-string v1, "Start touchfocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iput v2, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    .line 538
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    .line 539
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->disableGetEV()V

    .line 540
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->touchFocus()V

    .line 541
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 542
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iput v2, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    .line 527
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    .line 528
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 529
    iput v3, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 530
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 531
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mIsAutoFocus:Z

    .line 533
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
    .line 673
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 674
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 675
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 676
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 678
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 679
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 680
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 681
    return-void
.end method

.method public clearHoldFocusIndicator()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsLockFocus:Z

    .line 723
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 724
    return-void
.end method

.method public disableGetEV()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 355
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

    .line 356
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0

    .line 357
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 361
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 362
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public enableGetEV()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getDefaultFocusPosition()I
    .locals 1

    .prologue
    .line 712
    const/16 v0, 0x18

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
    .line 623
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 587
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 619
    :goto_0
    return-object v3

    .line 588
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 590
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 592
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 609
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 612
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 614
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 619
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 595
    :cond_3
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 599
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 600
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 602
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 603
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 600
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 616
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
    .line 627
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public getTouchPosition()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/android/camera/FocusManager;->mTouchPosition:I

    return v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 684
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
    .line 688
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 546
    const-string v0, "FocusManager"

    const-string v1, "Start lockfocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iput v4, p0, Lcom/android/camera/FocusManager;->mAccCount:I

    .line 548
    iput-boolean v4, p0, Lcom/android/camera/FocusManager;->mIsDetection:Z

    .line 549
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mIsLockFocus:Z

    .line 550
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->disableGetEV()V

    .line 551
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 553
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 555
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->lockFocus()V

    .line 558
    iput v3, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 559
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 560
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    return-void
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 400
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 404
    if-eqz p1, :cond_1

    .line 405
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 409
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 410
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    .line 439
    :cond_0
    :goto_1
    return-void

    .line 407
    :cond_1
    iput v4, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 411
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 415
    if-eqz p1, :cond_6

    .line 416
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 420
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 426
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 429
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocus:Z

    if-eqz v0, :cond_5

    .line 430
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsLockFocus:Z

    if-nez v0, :cond_5

    .line 431
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 434
    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mIsAutoFocus:Z

    goto :goto_1

    .line 424
    :cond_6
    iput v4, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_2

    .line 435
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 2
    .parameter "moving"

    .prologue
    .line 444
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eqz v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 446
    :cond_0
    if-eqz p1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 522
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 511
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 515
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 517
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 518
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_2

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 319
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 322
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
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
    .line 331
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 337
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 343
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 345
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 16
    .parameter "x"
    .parameter "y"

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 457
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

    .line 459
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 463
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getWidth()I

    move-result v3

    .line 464
    .local v3, focusWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getHeight()I

    move-result v4

    .line 465
    .local v4, focusHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 466
    .local v8, previewWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 467
    .local v9, previewHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_4

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
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

    .line 479
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

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 485
    .local v13, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v2, v3, 0x2

    sub-int v2, p1, v2

    const/4 v5, 0x0

    sub-int v6, v8, v3

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v12

    .line 486
    .local v12, left:I
    div-int/lit8 v2, v4, 0x2

    sub-int v2, p2, v2

    const/4 v5, 0x0

    sub-int v6, v9, v4

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v15

    .line 487
    .local v15, top:I
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v12, v15, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 489
    invoke-virtual {v13}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v14

    .line 490
    .local v14, rules:[I
    const/16 v2, 0xd

    const/4 v5, 0x0

    aput v5, v14, v2

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->requestLayout()V

    .line 493
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_5

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/FocusManager;->autoFocus()V

    goto/16 :goto_0

    .line 496
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 497
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v8, v9}, Lcom/android/camera/CameraDeviceManager;->getTouchFocusNum(IIII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/FocusManager;->mTouchPosition:I

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/FocusManager;->touchFocus()V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    const/16 v11, 0x5dc

    .line 502
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

    .line 503
    const/16 v11, 0xa8c

    .line 505
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
    .line 696
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 697
    return-void
.end method

.method public registerAccSensorListener(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 378
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensor:Landroid/hardware/Sensor;

    .line 383
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    if-nez v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    .line 386
    :cond_2
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 657
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 669
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 662
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 663
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 664
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 665
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 667
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 668
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 700
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 701
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "displayOrientation"

    .prologue
    .line 296
    iput p1, p0, Lcom/android/camera/FocusManager;->mDisplayOrientation:I

    .line 297
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 298
    return-void
.end method

.method public setFocusAreaIndicator(Landroid/view/View;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 250
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 251
    const v0, 0x7f0d008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    .line 252
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    .line 292
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 293
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 270
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

    .line 273
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

    .line 275
    return-void

    :cond_2
    move v0, v2

    .line 270
    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 4
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 278
    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eq v2, p2, :cond_1

    .line 279
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 280
    iput p2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 281
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 283
    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v1, v2, 0x6

    .line 284
    .local v1, len:I
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 285
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 286
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #len:I
    :cond_1
    return-void
.end method

.method public unregisterAccSensorListener()V
    .locals 2

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mAutoFocusSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    .line 397
    :cond_0
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 631
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 642
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 643
    :cond_4
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 645
    :cond_5
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 647
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0

    .line 648
    :cond_6
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 649
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0

    .line 650
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showFail(Z)V

    goto :goto_0
.end method

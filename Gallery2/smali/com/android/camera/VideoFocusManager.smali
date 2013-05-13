.class public Lcom/android/camera/VideoFocusManager;
.super Ljava/lang/Object;
.source "VideoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoFocusManager$MainHandler;,
        Lcom/android/camera/VideoFocusManager$Listener;
    }
.end annotation


# instance fields
.field private mAccCount:I

.field private final mAutoFocusSensorListener:Landroid/hardware/SensorEventListener;

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

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mIsAutoFocus:Z

.field private mIsAutoFocusSensorResisterSuccess:Z

.field private mIsDetection:Z

.field private mIsLockDetectionOrientation:Z

.field mListener:Lcom/android/camera/VideoFocusManager$Listener;

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

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreAccValue:I

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mState:I

.field private mTimer:J

.field private mTouchPosition:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/VideoFocusManager$Listener;ZLandroid/os/Looper;)V
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

    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v2, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    .line 110
    iput-boolean v2, p0, Lcom/android/camera/VideoFocusManager;->mIsLockDetectionOrientation:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/camera/VideoFocusManager;->mIsDetection:Z

    .line 114
    iput v2, p0, Lcom/android/camera/VideoFocusManager;->mPreAccValue:I

    .line 115
    iput v2, p0, Lcom/android/camera/VideoFocusManager;->mAccCount:I

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/VideoFocusManager;->mTimer:J

    .line 120
    iput-boolean v2, p0, Lcom/android/camera/VideoFocusManager;->mIsAutoFocusSensorResisterSuccess:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/camera/VideoFocusManager;->mIsAutoFocus:Z

    .line 529
    new-instance v0, Lcom/android/camera/VideoFocusManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoFocusManager$1;-><init>(Lcom/android/camera/VideoFocusManager;)V

    iput-object v0, p0, Lcom/android/camera/VideoFocusManager;->mAutoFocusSensorListener:Landroid/hardware/SensorEventListener;

    .line 162
    new-instance v0, Lcom/android/camera/VideoFocusManager$MainHandler;

    invoke-direct {v0, p0, p7}, Lcom/android/camera/VideoFocusManager$MainHandler;-><init>(Lcom/android/camera/VideoFocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/VideoFocusManager;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoFocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 164
    iput-object p1, p0, Lcom/android/camera/VideoFocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 165
    iput-object p2, p0, Lcom/android/camera/VideoFocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 166
    invoke-virtual {p0, p3}, Lcom/android/camera/VideoFocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0, p4}, Lcom/android/camera/VideoFocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 168
    iput-object p5, p0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    .line 169
    invoke-virtual {p0, p6}, Lcom/android/camera/VideoFocusManager;->setMirror(Z)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoFocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/VideoFocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoFocusManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/VideoFocusManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/camera/VideoFocusManager;->mIsLockDetectionOrientation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/VideoFocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/VideoFocusManager;->mIsDetection:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/VideoFocusManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/camera/VideoFocusManager;->mIsDetection:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/VideoFocusManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mPreAccValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/VideoFocusManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/VideoFocusManager;->mPreAccValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/VideoFocusManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mAccCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/VideoFocusManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/VideoFocusManager;->mAccCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/camera/VideoFocusManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mAccCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/VideoFocusManager;->mAccCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoFocusManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/camera/VideoFocusManager;->mTimer:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/camera/VideoFocusManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/camera/VideoFocusManager;->mTimer:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/camera/VideoFocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/VideoFocusManager;->autoFocus()V

    return-void
.end method

.method private autoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 346
    const-string v0, "VideoFocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iput-boolean v2, p0, Lcom/android/camera/VideoFocusManager;->mIsAutoFocus:Z

    .line 348
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/VideoFocusManager$Listener;->autoFocus()V

    .line 349
    iput v2, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    .line 350
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string v0, "VideoFocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/android/camera/VideoFocusManager;->resetTouchFocus()V

    .line 366
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/VideoFocusManager$Listener;->cancelAutoFocus()V

    .line 367
    iput v2, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    .line 368
    invoke-virtual {p0}, Lcom/android/camera/VideoFocusManager;->updateFocusUI()V

    .line 369
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    return-void
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

    .line 498
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

.method private setMatrix()V
    .locals 5

    .prologue
    .line 208
    iget v1, p0, Lcom/android/camera/VideoFocusManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/VideoFocusManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 209
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 210
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/VideoFocusManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/VideoFocusManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/VideoFocusManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/VideoFocusManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 215
    iget-object v1, p0, Lcom/android/camera/VideoFocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoFocusManager;->mInitialized:Z

    .line 218
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method private touchFocus()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "VideoFocusManager"

    const-string v1, "Start touchFocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/VideoFocusManager$Listener;->touchFocus()V

    .line 356
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    .line 357
    return-void
.end method


# virtual methods
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
    .line 459
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 460
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 461
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 462
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 464
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 465
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/VideoFocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 466
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 467
    return-void
.end method

.method public getTouchPosition()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mTouchPosition:I

    return v0
.end method

.method public onAutoFocus(Z)V
    .locals 4
    .parameter "focused"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 221
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 225
    if-eqz p1, :cond_1

    .line 226
    iput v2, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoFocusManager;->updateFocusUI()V

    .line 256
    :cond_0
    :goto_1
    return-void

    .line 228
    :cond_1
    iput v3, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    goto :goto_0

    .line 231
    :cond_2
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 235
    if-eqz p1, :cond_4

    .line 236
    iput v2, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    .line 240
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/VideoFocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/VideoFocusManager;->updateFocusUI()V

    .line 249
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 244
    :cond_4
    iput v3, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    goto :goto_2

    .line 252
    :cond_5
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/camera/VideoFocusManager;->onPreviewStopped()V

    .line 343
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    .line 336
    invoke-virtual {p0}, Lcom/android/camera/VideoFocusManager;->resetTouchFocus()V

    .line 338
    invoke-virtual {p0}, Lcom/android/camera/VideoFocusManager;->updateFocusUI()V

    .line 339
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 16
    .parameter "x"
    .parameter "y"

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoFocusManager;->mInitialized:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoFocusManager;->mIsAutoFocus:Z

    if-eqz v2, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_4

    .line 276
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoFocusManager;->cancelAutoFocus()V

    .line 280
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getWidth()I

    move-result v3

    .line 281
    .local v3, focusWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getHeight()I

    move-result v4

    .line 282
    .local v4, focusHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/VideoFocusManager;->mPreviewWidth:I

    .line 283
    .local v8, previewWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/VideoFocusManager;->mPreviewHeight:I

    .line 284
    .local v9, previewHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_5

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusArea:Ljava/util/List;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_5
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusArea:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/VideoFocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 296
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/VideoFocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 302
    .local v13, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v2, v3, 0x2

    sub-int v2, p1, v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/VideoFocusManager;->mScreenWidth:I

    sub-int/2addr v6, v3

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v12

    .line 303
    .local v12, left:I
    div-int/lit8 v2, v4, 0x2

    sub-int v2, p2, v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/VideoFocusManager;->mScreenHeight:I

    sub-int/2addr v6, v4

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v15

    .line 304
    .local v15, top:I
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v12, v15, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 306
    invoke-virtual {v13}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v14

    .line 307
    .local v14, rules:[I
    const/16 v2, 0xd

    const/4 v5, 0x0

    aput v5, v14, v2

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->requestLayout()V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    invoke-interface {v2}, Lcom/android/camera/VideoFocusManager$Listener;->setFocusParameters()V

    .line 312
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoFocusManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_6

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoFocusManager;->autoFocus()V

    goto/16 :goto_0

    .line 316
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/VideoFocusManager;->mIsAutoFocus:Z

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoFocusManager;->updateFocusUI()V

    .line 318
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v8, v9}, Lcom/android/camera/CameraDeviceManager;->getTouchFocusNum(IIII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/VideoFocusManager;->mTouchPosition:I

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoFocusManager;->touchFocus()V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    const/16 v11, 0x5dc

    .line 323
    .local v11, delay:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    invoke-interface {v2}, Lcom/android/camera/VideoFocusManager$Listener;->getCameraEV()I

    move-result v2

    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_7

    .line 324
    const/16 v11, 0xdac

    .line 326
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    int-to-long v6, v11

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 443
    iget-boolean v2, p0, Lcom/android/camera/VideoFocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 455
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 448
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 449
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 450
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 451
    iget-object v2, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 453
    iput-object v5, p0, Lcom/android/camera/VideoFocusManager;->mFocusArea:Ljava/util/List;

    .line 454
    iput-object v5, p0, Lcom/android/camera/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setFocusAreaIndicator(Landroid/view/View;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 155
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 156
    const v0, 0x7f0d0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicator:Landroid/view/View;

    .line 157
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/camera/VideoFocusManager;->mMirror:Z

    .line 199
    invoke-direct {p0}, Lcom/android/camera/VideoFocusManager;->setMatrix()V

    .line 200
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/VideoFocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 174
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/VideoFocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoFocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusAreaSupported:Z

    .line 177
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreviewSize(III)V
    .locals 2
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "len"

    .prologue
    .line 180
    iget v1, p0, Lcom/android/camera/VideoFocusManager;->mPreviewWidth:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/camera/VideoFocusManager;->mPreviewHeight:I

    if-eq v1, p2, :cond_1

    .line 181
    :cond_0
    iput p1, p0, Lcom/android/camera/VideoFocusManager;->mPreviewWidth:I

    .line 182
    iput p2, p0, Lcom/android/camera/VideoFocusManager;->mPreviewHeight:I

    .line 183
    invoke-direct {p0}, Lcom/android/camera/VideoFocusManager;->setMatrix()V

    .line 186
    iget-object v1, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 187
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setScreenSize(II)V
    .locals 0
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 193
    iput p1, p0, Lcom/android/camera/VideoFocusManager;->mScreenWidth:I

    .line 194
    iput p2, p0, Lcom/android/camera/VideoFocusManager;->mScreenHeight:I

    .line 195
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-boolean v0, p0, Lcom/android/camera/VideoFocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    if-nez v0, :cond_3

    .line 420
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 428
    :cond_3
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 431
    :cond_5
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/VideoFocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0

    .line 434
    :cond_6
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 435
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0

    .line 436
    :cond_7
    iget v0, p0, Lcom/android/camera/VideoFocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showFail(Z)V

    goto :goto_0
.end method

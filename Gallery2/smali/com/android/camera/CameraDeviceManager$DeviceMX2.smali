.class Lcom/android/camera/CameraDeviceManager$DeviceMX2;
.super Ljava/lang/Object;
.source "CameraDeviceManager.java"

# interfaces
.implements Lcom/android/camera/CameraDeviceManager$ICameraDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceMX2"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;
    .locals 2

    .prologue
    .line 540
    new-instance v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;-><init>()V

    .line 541
    .local v0, cameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;
    const v1, 0x7f0b002a

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuKeyArrayId:I

    .line 542
    const v1, 0x7f0b0040

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuDefaultValueArrayId:I

    .line 543
    const v1, 0x7f0b002e

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuKeyArrayId:I

    .line 544
    const v1, 0x7f0b001e

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuValueArrayId:I

    .line 545
    const v1, 0x7f0b002d

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceKeyArrayId:I

    .line 546
    const v1, 0x7f0b001b

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceValueArrayId:I

    .line 547
    const v1, 0x7f0b003f

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainOtherMenuKeyArrayId:I

    .line 548
    return-object v0
.end method

.method public getCurCaptureMode()I
    .locals 1

    .prologue
    .line 479
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    return v0
.end method

.method public getEachExposureValue()F
    .locals 1

    .prologue
    .line 568
    const/high16 v0, 0x3f00

    return v0
.end method

.method public getIsCameraEVSupport()Z
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public getIsIspSupport()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportComprehensivePano()Z
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportExposure()Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportFlashLightMode()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportHDMI()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportLedLight()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public getIsSupportNavigationBar()Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public getPanoraMaxValue()I
    .locals 1

    .prologue
    .line 578
    const/16 v0, 0x1d

    return v0
.end method

.method public getTouchFocusNum(IIII)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 505
    const/16 v0, 0x2c

    .line 506
    .local v0, focusPosNum:I
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 507
    :cond_0
    const/4 v5, -0x1

    .line 515
    :goto_0
    return v5

    .line 509
    :cond_1
    div-int/lit8 v3, p3, 0xa

    .line 510
    .local v3, unit_x:I
    div-int/lit8 v4, p4, 0xa

    .line 511
    .local v4, unit_y:I
    sub-int v5, p3, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 512
    div-int v1, p1, v3

    .line 513
    .local v1, num_x:I
    div-int v2, p2, v4

    .line 514
    .local v2, num_y:I
    mul-int/lit8 v5, v1, 0xa

    add-int v0, v5, v2

    move v5, v0

    .line 515
    goto :goto_0
.end method

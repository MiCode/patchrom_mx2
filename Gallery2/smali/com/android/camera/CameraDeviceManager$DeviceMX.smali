.class Lcom/android/camera/CameraDeviceManager$DeviceMX;
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
    name = "DeviceMX"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;-><init>()V

    .line 405
    .local v0, cameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;
    const v1, 0x7f0b002a

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuKeyArrayId:I

    .line 406
    const v1, 0x7f0b0040

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuDefaultValueArrayId:I

    .line 407
    const v1, 0x7f0b002e

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuKeyArrayId:I

    .line 408
    const v1, 0x7f0b001e

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuValueArrayId:I

    .line 409
    const v1, 0x7f0b002d

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceKeyArrayId:I

    .line 410
    const v1, 0x7f0b001b

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceValueArrayId:I

    .line 411
    const v1, 0x7f0b003f

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainOtherMenuKeyArrayId:I

    .line 412
    return-object v0
.end method

.method public getCurCaptureMode()I
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    return v0
.end method

.method public getEachExposureValue()F
    .locals 1

    .prologue
    .line 432
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getIsCameraEVSupport()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public getIsIspSupport()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportComprehensivePano()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public getIsSupportExposure()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportFlashLightMode()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportHDMI()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportLedLight()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportNavigationBar()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public getPanoraMaxValue()I
    .locals 1

    .prologue
    .line 442
    const/16 v0, 0x13

    return v0
.end method

.method public getTouchFocusNum(IIII)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 369
    const/16 v0, 0x18

    .line 370
    .local v0, focusPosNum:I
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 371
    :cond_0
    const/4 v5, -0x1

    .line 379
    :goto_0
    return v5

    .line 373
    :cond_1
    div-int/lit8 v3, p3, 0x7

    .line 374
    .local v3, unit_x:I
    div-int/lit8 v4, p4, 0x7

    .line 375
    .local v4, unit_y:I
    sub-int v5, p3, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 376
    div-int v1, p1, v3

    .line 377
    .local v1, num_x:I
    div-int v2, p2, v4

    .line 378
    .local v2, num_y:I
    mul-int/lit8 v5, v1, 0x7

    add-int v0, v5, v2

    move v5, v0

    .line 379
    goto :goto_0
.end method

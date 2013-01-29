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
    .line 262
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;-><init>()V

    .line 357
    .local v0, cameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;
    const v1, 0x7f0b002a

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuKeyArrayId:I

    .line 358
    const v1, 0x7f0b0040

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainMenuDefaultValueArrayId:I

    .line 359
    const v1, 0x7f0b002e

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuKeyArrayId:I

    .line 360
    const v1, 0x7f0b001e

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuValueArrayId:I

    .line 361
    const v1, 0x7f0b002d

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceKeyArrayId:I

    .line 362
    const v1, 0x7f0b001b

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceValueArrayId:I

    .line 363
    const v1, 0x7f0b003f

    iput v1, v0, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mMainOtherMenuKeyArrayId:I

    .line 364
    return-object v0
.end method

.method public getCurCaptureMode()I
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    return v0
.end method

.method public getIsCameraEVSupport()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public getIsIspSupport()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportExposure()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportFlashLightMode()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportHDMI()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSupportLedLight()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public getTouchFocusNum(IIII)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 321
    const/16 v0, 0x18

    .line 322
    .local v0, focusPosNum:I
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 323
    :cond_0
    const/4 v5, -0x1

    .line 331
    :goto_0
    return v5

    .line 325
    :cond_1
    div-int/lit8 v3, p3, 0x7

    .line 326
    .local v3, unit_x:I
    div-int/lit8 v4, p4, 0x7

    .line 327
    .local v4, unit_y:I
    sub-int v5, p3, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 328
    div-int v1, p1, v3

    .line 329
    .local v1, num_x:I
    div-int v2, p2, v4

    .line 330
    .local v2, num_y:I
    mul-int/lit8 v5, v1, 0x7

    add-int v0, v5, v2

    move v5, v0

    .line 331
    goto :goto_0
.end method

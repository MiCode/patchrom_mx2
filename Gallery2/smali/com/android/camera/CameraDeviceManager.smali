.class public final Lcom/android/camera/CameraDeviceManager;
.super Ljava/lang/Object;
.source "CameraDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraDeviceManager$DeviceMX2;,
        Lcom/android/camera/CameraDeviceManager$DeviceMX;,
        Lcom/android/camera/CameraDeviceManager$ICameraDevice;
    }
.end annotation


# static fields
.field public static final CAMERA_FLASH_LIGHT_ICON:[I

.field public static final CAMERA_FLASH_LIGHT_UNSEL_ICON:[I

.field public static DEVICE_MX:I

.field public static DEVICE_MX2:I

.field public static DEVICE_MX_BACK:I

.field private static final DEVICE_MX_CAMERA_OTHER_SETTING_KEYS:[Ljava/lang/String;

.field private static final DEVICE_MX_CAMERA_SETTING_KEYS:[Ljava/lang/String;

.field public static DEVICE_MX_FRONT:I

.field private static final DEVICE_MX_VIDEO_SETTING_KEYS:[Ljava/lang/String;

.field public static DEVICE_UNKNOWN:I

.field public static final VIDEO_FLASH_LIGHT_ICON:[I

.field public static final VIDEO_FLASH_LIGHT_UNSEL_ICON:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/CameraDeviceManager;->DEVICE_UNKNOWN:I

    .line 11
    sput v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    .line 12
    sput v3, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    .line 15
    sput v3, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_FRONT:I

    .line 16
    sput v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_BACK:I

    .line 38
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    .line 44
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_UNSEL_ICON:[I

    .line 50
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    .line 55
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_UNSEL_ICON:[I

    .line 60
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pref_camera_whitebalance_key"

    aput-object v1, v0, v2

    const-string v1, "pref_camera_scenemode_key"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_iso_key"

    aput-object v1, v0, v4

    const-string v1, "pref_camera_capture_mode_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_CAMERA_SETTING_KEYS:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pref_camera_whitebalance_key"

    aput-object v1, v0, v2

    const-string v1, "pref_camera_scenemode_key"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_VIDEO_SETTING_KEYS:[Ljava/lang/String;

    .line 72
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pref_camera_picturesize_key"

    aput-object v1, v0, v2

    const-string v1, "pref_camera_recordlocation_key"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_recordwdr_key"

    aput-object v1, v0, v4

    const-string v1, "pref_camera_recordgesture_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_CAMERA_OTHER_SETTING_KEYS:[Ljava/lang/String;

    return-void

    .line 38
    nop

    :array_0
    .array-data 0x4
        0x9at 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 44
    :array_1
    .array-data 0x4
        0x9at 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 50
    :array_2
    .array-data 0x4
        0x9ct 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 55
    :array_3
    .array-data 0x4
        0x9ct 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 249
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 251
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurCaptureMode()I
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 177
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getCurCaptureMode()I

    move-result v0

    .line 181
    :goto_0
    return v0

    .line 178
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 179
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getCurCaptureMode()I

    move-result v0

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getEachExposureValue()F
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 285
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getEachExposureValue()F

    move-result v0

    .line 289
    :goto_0
    return v0

    .line 286
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 287
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getEachExposureValue()F

    move-result v0

    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsCameraEVSupport()Z
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 240
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsCameraEVSupport()Z

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 241
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 242
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsCameraEVSupport()Z

    move-result v0

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsIspSupport()Z
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 222
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsIspSupport()Z

    move-result v0

    .line 226
    :goto_0
    return v0

    .line 223
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 224
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsIspSupport()Z

    move-result v0

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportComprehensivePano()Z
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 294
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportComprehensivePano()Z

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 296
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportComprehensivePano()Z

    move-result v0

    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportExposure()Z
    .locals 2

    .prologue
    .line 266
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 267
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportExposure()Z

    move-result v0

    .line 271
    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 269
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportExposure()Z

    move-result v0

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportFlashLightMode()Z
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 159
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportFlashLightMode()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 161
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportFlashLightMode()Z

    move-result v0

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportHDMI()Z
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 258
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportHDMI()Z

    move-result v0

    .line 262
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 260
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportHDMI()Z

    move-result v0

    goto :goto_0

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportLedLight()Z
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 213
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportLedLight()Z

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 214
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 215
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportLedLight()Z

    move-result v0

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportNavigationBar()Z
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 276
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportNavigationBar()Z

    move-result v0

    .line 280
    :goto_0
    return v0

    .line 277
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 278
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportNavigationBar()Z

    move-result v0

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPanoraMaxValue()I
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 303
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getPanoraMaxValue()I

    move-result v0

    .line 307
    :goto_0
    return v0

    .line 304
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 305
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getPanoraMaxValue()I

    move-result v0

    goto :goto_0

    .line 307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTouchFocusNum(IIII)I
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 203
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 204
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getTouchFocusNum(IIII)I

    move-result v0

    .line 208
    :goto_0
    return v0

    .line 205
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 206
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getTouchFocusNum(IIII)I

    move-result v0

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

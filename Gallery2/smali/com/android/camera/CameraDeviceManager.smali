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

    .line 9
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/CameraDeviceManager;->DEVICE_UNKNOWN:I

    .line 10
    sput v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    .line 11
    sput v3, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    .line 14
    sput v3, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_FRONT:I

    .line 15
    sput v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_BACK:I

    .line 30
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_ICON:[I

    .line 36
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->CAMERA_FLASH_LIGHT_UNSEL_ICON:[I

    .line 42
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_ICON:[I

    .line 47
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->VIDEO_FLASH_LIGHT_UNSEL_ICON:[I

    .line 52
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

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pref_camera_whitebalance_key"

    aput-object v1, v0, v2

    const-string v1, "pref_camera_scenemode_key"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_VIDEO_SETTING_KEYS:[Ljava/lang/String;

    .line 64
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

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x9bt 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0x9bt 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 42
    :array_2
    .array-data 0x4
        0x9dt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 47
    :array_3
    .array-data 0x4
        0x9dt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 237
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 239
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurCaptureMode()I
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 165
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getCurCaptureMode()I

    move-result v0

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 167
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getCurCaptureMode()I

    move-result v0

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getIsCameraEVSupport()Z
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 228
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsCameraEVSupport()Z

    move-result v0

    .line 232
    :goto_0
    return v0

    .line 229
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 230
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsCameraEVSupport()Z

    move-result v0

    goto :goto_0

    .line 232
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsIspSupport()Z
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 210
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsIspSupport()Z

    move-result v0

    .line 214
    :goto_0
    return v0

    .line 211
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 212
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsIspSupport()Z

    move-result v0

    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportExposure()Z
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 255
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportExposure()Z

    move-result v0

    .line 259
    :goto_0
    return v0

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 257
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportExposure()Z

    move-result v0

    goto :goto_0

    .line 259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportFlashLightMode()Z
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 147
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportFlashLightMode()Z

    move-result v0

    .line 151
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 149
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportFlashLightMode()Z

    move-result v0

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportHDMI()Z
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 246
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportHDMI()Z

    move-result v0

    .line 250
    :goto_0
    return v0

    .line 247
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 248
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportHDMI()Z

    move-result v0

    goto :goto_0

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsSupportLedLight()Z
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 201
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getIsSupportLedLight()Z

    move-result v0

    .line 205
    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 203
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getIsSupportLedLight()Z

    move-result v0

    goto :goto_0

    .line 205
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
    .line 191
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_0

    .line 192
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/camera/CameraDeviceManager$DeviceMX;->getTouchFocusNum(IIII)I

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 193
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 194
    new-instance v0, Lcom/android/camera/CameraDeviceManager$DeviceMX2;

    invoke-direct {v0}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/camera/CameraDeviceManager$DeviceMX2;->getTouchFocusNum(IIII)I

    move-result v0

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Landroid/os/MeizuDeviceContorl;
.super Ljava/lang/Object;
.source "MeizuDeviceContorl.java"


# static fields
.field private static DEBUG:Z = false

.field public static final DEVCFG_BUTTON_LIGHT:I = 0x2

.field public static final DEVCFG_GRAVITY_SENSOR:I = 0x4

.field public static final DEVCFG_IR_CALIBRATE:I = 0x0

.field public static final DEVCFG_LIGHT_SENSOR:I = 0x3

.field public static final DEVCFG_TOUCH_SCREEN:I = 0x1

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "MeizuDeviceContorl"

    sput-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static adjustGravitySensor([I)I
    .locals 2
    .parameter "values"

    .prologue
    .line 183
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "adjustGravitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_adjust_gravity_sensor([I)I

    move-result v0

    return v0
.end method

.method public static calibrateGp2ap()I
    .locals 2

    .prologue
    .line 220
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "calibrateGp2ap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_calibrate_gp2ap()I

    move-result v0

    return v0
.end method

.method public static calibrateGravitySensor()I
    .locals 2

    .prologue
    .line 195
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "calibrateGravitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_calibrate_gravity_sensor()I

    move-result v0

    return v0
.end method

.method public static enableTouchAdjust()I
    .locals 2

    .prologue
    .line 170
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "enableTouchAdjust"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_enable_touch_adjust()I

    move-result v0

    return v0
.end method

.method private static native native_adjust_gravity_sensor([I)I
.end method

.method private static native native_calibrate_gp2ap()I
.end method

.method private static native native_calibrate_gravity_sensor()I
.end method

.method private static native native_enable_touch_adjust()I
.end method

.method private static native native_read_auto_cabc()I
.end method

.method private static native native_read_cfgparam(I[I)I
.end method

.method private static native native_read_cpu_value()I
.end method

.method private static native native_read_gp2ap()I
.end method

.method private static native native_read_gravity_value([I)I
.end method

.method private static native native_reset_calibration()I
.end method

.method private static native native_save_cpu_value(I)I
.end method

.method private static native native_set_auto_cabc(I)I
.end method

.method private static native native_set_key_wakeup_type(I)I
.end method

.method private static native native_switch_usb_fast_charger(I)I
.end method

.method private static native native_write_cfgparam(I[I)I
.end method

.method private static native native_write_gp2ap(I)I
.end method

.method public static readAutoCabc()I
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_read_auto_cabc()I

    move-result v0

    .line 102
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readAutoCabc--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return v0
.end method

.method public static readCPUfreq()I
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_read_cpu_value()I

    move-result v0

    .line 61
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCPUfreq----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return v0
.end method

.method public static readCfgParam(I[I)I
    .locals 3
    .parameter "dev"
    .parameter "info"

    .prologue
    .line 158
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCfgParam dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-static {p0, p1}, Landroid/os/MeizuDeviceContorl;->native_read_cfgparam(I[I)I

    move-result v0

    return v0
.end method

.method public static readGp2apValue()I
    .locals 4

    .prologue
    .line 233
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_read_gp2ap()I

    move-result v0

    .line 234
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readGp2apValue--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    return v0
.end method

.method public static readGravityValue([I)I
    .locals 2
    .parameter "values"

    .prologue
    .line 208
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readGravityValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_read_gravity_value([I)I

    move-result v0

    return v0
.end method

.method public static resetCalibration()I
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_reset_calibration()I

    move-result v0

    .line 75
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetCalibration----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return v0
.end method

.method public static saveCPUfreq(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 47
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCPUfreq----value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_save_cpu_value(I)I

    move-result v0

    return v0
.end method

.method public static saveKeyWakeupType(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 116
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveKeyWakeupType value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_set_key_wakeup_type(I)I

    move-result v0

    return v0
.end method

.method public static setAutoCabc(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 88
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoCabc--value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_set_auto_cabc(I)I

    move-result v0

    return v0
.end method

.method public static switchUsbFastCharger(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 130
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUsbFastCharger value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_switch_usb_fast_charger(I)I

    move-result v0

    return v0
.end method

.method public static writeCfgParam(I[I)I
    .locals 3
    .parameter "dev"
    .parameter "info"

    .prologue
    .line 144
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCfgParam dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-static {p0, p1}, Landroid/os/MeizuDeviceContorl;->native_write_cfgparam(I[I)I

    move-result v0

    return v0
.end method

.method public static writeGp2apValue(I)I
    .locals 4
    .parameter "value"

    .prologue
    .line 247
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_write_gp2ap(I)I

    move-result v0

    .line 248
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeGp2apValue--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    return v0
.end method

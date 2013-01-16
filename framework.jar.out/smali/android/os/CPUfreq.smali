.class public Landroid/os/CPUfreq;
.super Ljava/lang/Object;
.source "CPUfreq.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static native native_read_auto_cabc()I
.end method

.method private static native native_read_cpu_value()I
.end method

.method private static native native_reset_calibration()I
.end method

.method private static native native_save_cpu_value(I)I
.end method

.method private static native native_set_auto_cabc(I)I
.end method

.method public static read()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/os/CPUfreq;->native_read_cpu_value()I

    move-result v0

    .line 36
    .local v0, ret:I
    return v0
.end method

.method public static readAutoCabc()I
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Landroid/os/CPUfreq;->native_read_auto_cabc()I

    move-result v0

    .line 54
    .local v0, ret:I
    return v0
.end method

.method public static resetCalibration()I
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Landroid/os/CPUfreq;->native_reset_calibration()I

    move-result v0

    .line 43
    .local v0, ret:I
    return v0
.end method

.method public static save(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/os/CPUfreq;->native_save_cpu_value(I)I

    move-result v0

    return v0
.end method

.method public static setAutoCabc(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 47
    const-string/jumbo v0, "setAutoCabc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p0}, Landroid/os/CPUfreq;->native_set_auto_cabc(I)I

    move-result v0

    return v0
.end method

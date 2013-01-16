.class public Landroid/os/IrCalibration;
.super Ljava/lang/Object;
.source "IrCalibration.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private native native_read_calib_value()I
.end method

.method private native native_read_threshold()I
.end method

.method private static native native_start_calibration()I
.end method

.method public static startCalibration()Z
    .locals 4

    .prologue
    .line 31
    invoke-static {}, Landroid/os/IrCalibration;->native_start_calibration()I

    move-result v0

    .line 32
    .local v0, ret:I
    const-string/jumbo v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-gez v0, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 36
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

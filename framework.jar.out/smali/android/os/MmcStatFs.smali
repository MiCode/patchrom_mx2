.class public Landroid/os/MmcStatFs;
.super Ljava/lang/Object;
.source "MmcStatFs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static native native_read_mmc_size()I
.end method

.method public static readMmcSize()I
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Landroid/os/MmcStatFs;->native_read_mmc_size()I

    move-result v0

    .line 30
    .local v0, ret:I
    const-string v1, "MmcStatFs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " get value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return v0
.end method

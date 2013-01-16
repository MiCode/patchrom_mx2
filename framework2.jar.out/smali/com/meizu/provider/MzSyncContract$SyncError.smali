.class public final Lcom/meizu/provider/MzSyncContract$SyncError;
.super Ljava/lang/Object;
.source "MzSyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/provider/MzSyncContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncError"
.end annotation


# static fields
.field public static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final ERROR_INFO:Ljava/lang/String; = "error_info"

.field public static final RESULE_CODE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

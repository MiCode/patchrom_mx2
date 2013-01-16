.class public final Lcom/meizu/provider/MzSyncContract;
.super Ljava/lang/Object;
.source "MzSyncContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/provider/MzSyncContract$SyncError;,
        Lcom/meizu/provider/MzSyncContract$SyncCancel;,
        Lcom/meizu/provider/MzSyncContract$SyncSuccess;
    }
.end annotation


# static fields
.field public static final CURRENT_SYNC_SOURCE_NAME:Ljava/lang/String; = "current_sync_source_name"

.field public static final IS_LAST_SOURCE:Ljava/lang/String; = "is_last_source"

.field public static final IS_SYNCHRONIZING:Ljava/lang/String; = "is_Synchronizing"

.field public static final REQUEST_SYNC_SOURCE_NAMES:Ljava/lang/String; = "request_sync_source_names"

.field public static final SYNC_RESULT:Ljava/lang/String; = "sync_result"

.field private static final SYNC_RESULT_CANCEL:I = 0x1

.field private static final SYNC_RESULT_ERROR:I = 0x2

.field private static final SYNC_RESULT_SUCCESS:I = 0x0

.field public static final SYNC_SOURCE_NAME:Ljava/lang/String; = "sync_source_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

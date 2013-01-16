.class public final Lcom/meizu/provider/MzSyncContract$SyncSuccess;
.super Ljava/lang/Object;
.source "MzSyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/provider/MzSyncContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncSuccess"
.end annotation


# static fields
.field public static final ITEMS_ADD_IN_CLIENT:Ljava/lang/String; = "items_add_in_client"

.field public static final ITEMS_ADD_IN_SERVER:Ljava/lang/String; = "items_add_in_server"

.field public static final ITEMS_DELETE_IN_CLIENT:Ljava/lang/String; = "items_Delete_in_cLient"

.field public static final ITEMS_DELETE_IN_SERVER:Ljava/lang/String; = "items_delete_in_server"

.field public static final ITEMS_UPDATE_IN_CLIENT:Ljava/lang/String; = "items_update_in_client"

.field public static final ITEMS_UPDATE_IN_SERVER:Ljava/lang/String; = "items_update_in_server"

.field public static final RESULE_CODE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

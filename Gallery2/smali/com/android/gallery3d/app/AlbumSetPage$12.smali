.class Lcom/android/gallery3d/app/AlbumSetPage$12;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->copyMoveFileToNewFolder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$srcRoot:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->val$srcRoot:Lcom/android/gallery3d/data/MediaSet;

    iput-object p3, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->val$path:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestArg(II)Ljava/lang/Object;
    .locals 3
    .parameter "actionId"
    .parameter "argIndex"

    .prologue
    const/4 v1, 0x1

    .line 1396
    const/4 v0, 0x0

    .line 1397
    .local v0, arg:Ljava/lang/Object;
    const v2, 0x7f0d0197

    if-ne p1, v2, :cond_0

    .line 1398
    packed-switch p2, :pswitch_data_0

    .line 1412
    .end local v0           #arg:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 1402
    .restart local v0       #arg:Ljava/lang/Object;
    :pswitch_0
    new-instance v0, Ljava/lang/Integer;

    .end local v0           #arg:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget v2, v2, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1403
    .local v0, arg:Ljava/lang/Integer;
    goto :goto_0

    .line 1405
    .local v0, arg:Ljava/lang/Object;
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->val$srcRoot:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getDirectory()Ljava/lang/String;

    move-result-object v0

    .line 1406
    .local v0, arg:Ljava/lang/String;
    goto :goto_0

    .line 1408
    .local v0, arg:Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->val$path:Ljava/lang/String;

    .local v0, arg:Ljava/lang/String;
    goto :goto_0

    .line 1398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

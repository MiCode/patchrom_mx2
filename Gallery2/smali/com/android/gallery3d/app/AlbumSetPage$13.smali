.class Lcom/android/gallery3d/app/AlbumSetPage$13;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


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

.field final synthetic val$menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->val$menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 0
    .parameter "confirmed"

    .prologue
    .line 1446
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    .prologue
    .line 1442
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 1425
    :try_start_0
    new-instance v3, Landroid/media/MediaScanner;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 1426
    .local v3, ms:Landroid/media/MediaScanner;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->getScanDirectoryAfterCopyMoveToNewFolder()[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3400(Lcom/android/gallery3d/app/AlbumSetPage;)[Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, dir:[Ljava/lang/String;
    const-string v4, "external"

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    .end local v1           #dir:[Ljava/lang/String;
    .end local v3           #ms:Landroid/media/MediaScanner;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1433
    .local v0, data:Landroid/content/Intent;
    const-string v4, "copy-move-set-path"

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    const/4 v4, -0x1

    :goto_1
    invoke-virtual {v5, v4, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->setStateResult(ILandroid/content/Intent;)V

    .line 1435
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->val$menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setRequestArgFetcher(Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;)V

    .line 1436
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->onBackPressed()V

    .line 1437
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mDstNewDirPath:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3502(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;

    .line 1438
    return-void

    .line 1428
    .end local v0           #data:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1429
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1434
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #data:Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1420
    return-void
.end method

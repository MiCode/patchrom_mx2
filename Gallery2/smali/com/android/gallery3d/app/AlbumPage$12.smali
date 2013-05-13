.class Lcom/android/gallery3d/app/AlbumPage$12;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;

.field final synthetic val$menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$srcRoot:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumPage$12;->val$srcRoot:Lcom/android/gallery3d/data/MediaSet;

    iput-object p3, p0, Lcom/android/gallery3d/app/AlbumPage$12;->val$menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 0
    .parameter "confirmed"

    .prologue
    .line 1165
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    .prologue
    .line 1161
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 5
    .parameter "result"

    .prologue
    .line 1145
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFileName(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1146
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget v1, v1, Lcom/android/gallery3d/app/ActivityState;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->val$srcRoot:Lcom/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$12;->val$srcRoot:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFileName(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1149
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1150
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1151
    const-string v1, "key-state"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget v2, v2, Lcom/android/gallery3d/app/ActivityState;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1152
    const-string v1, "copy-move-set-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    const-string v1, "copy-move-set-name"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/app/AlbumPage;->setStateResult(ILandroid/content/Intent;)V

    .line 1155
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->val$menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setRequestArgFetcher(Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;)V

    .line 1156
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    .line 1157
    return-void

    .line 1154
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1141
    return-void
.end method

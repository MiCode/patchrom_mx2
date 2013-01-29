.class Lcom/android/gallery3d/app/AlbumPage$13;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput p2, p0, Lcom/android/gallery3d/app/AlbumPage$13;->val$resultCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1271
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1272
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1274
    :try_start_0
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->val$resultCode:I

    if-nez v1, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v2, 0x1

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$3402(Lcom/android/gallery3d/app/AlbumPage;Z)Z

    .line 1277
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v2, 0x2

    #calls: Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$3500(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 1278
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->val$resultCode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3600(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1281
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0a0166

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    :cond_1
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1287
    return-void

    .line 1285
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

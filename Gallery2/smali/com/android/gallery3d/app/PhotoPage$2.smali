.class Lcom/android/gallery3d/app/PhotoPage$2;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 3

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 434
    .local v0, photo:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 443
    .end local v0           #photo:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$900(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result v1

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public onPhotoChanged(ILcom/android/gallery3d/data/Path;)V
    .locals 3
    .parameter "index"
    .parameter "item"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v1, p1}, Lcom/android/gallery3d/app/PhotoPage;->access$602(Lcom/android/gallery3d/app/PhotoPage;I)I

    .line 423
    if-eqz p2, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 425
    .local v0, photo:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 428
    .end local v0           #photo:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    return-void
.end method

.class Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;
.super Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)V
    .locals 0
    .parameter

    .prologue
    .line 2239
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    invoke-direct {p0}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "index"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 2242
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2244
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateIndex:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I

    .line 2245
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateItemCallable:Ljava/util/concurrent/Callable;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/concurrent/Callable;

    move-result-object v1

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$6700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2246
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2248
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v0

    if-nez v0, :cond_2

    .line 2249
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6802(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;Z)Z

    .line 2250
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$6900(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2251
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/AlbumPage;->access$6902(Lcom/android/gallery3d/app/AlbumPage;Z)Z

    .line 2252
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2255
    :cond_2
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

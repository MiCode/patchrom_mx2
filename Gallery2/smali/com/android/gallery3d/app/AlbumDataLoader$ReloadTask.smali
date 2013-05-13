.class Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 329
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 331
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    .line 332
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1500(Lcom/android/gallery3d/app/AlbumDataLoader;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 378
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 343
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, updateComplete:Z
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v6, :cond_5

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    .line 349
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 350
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 351
    monitor-exit p0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    iput-boolean v5, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    .line 355
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 357
    sget-object v6, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 358
    :try_start_2
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1600(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v2

    .line 359
    .local v2, version:J
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 360
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    new-instance v7, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {v7, v8, v2, v3}, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;J)V

    #calls: Lcom/android/gallery3d/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1700(Lcom/android/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    .line 361
    .local v0, info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    if-nez v0, :cond_4

    move v1, v4

    .line 362
    :goto_1
    if-nez v1, :cond_0

    .line 363
    sget-object v6, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 364
    :try_start_3
    iget-wide v7, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_2

    .line 365
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1600(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    iput v7, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    .line 366
    iput-wide v2, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    .line 368
    :cond_2
    iget v7, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v7, :cond_3

    .line 369
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1600(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    iget v8, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget v9, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 371
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 372
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    new-instance v7, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {v7, v8, v0}, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;)V

    #calls: Lcom/android/gallery3d/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1700(Lcom/android/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_0

    .line 359
    .end local v0           #info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    .end local v2           #version:J
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .restart local v0       #info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    .restart local v2       #version:J
    :cond_4
    move v1, v5

    .line 361
    goto :goto_1

    .line 371
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 374
    .end local v0           #info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    .end local v2           #version:J
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 375
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 383
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

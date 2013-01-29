.class Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 340
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 341
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 342
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;

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
    .line 410
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 411
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v14, -0x1

    const/4 v9, 0x0

    .line 353
    const/16 v10, 0xa

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    .line 355
    const/4 v5, 0x0

    .line 356
    .local v5, updateComplete:Z
    :goto_0
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v10, :cond_8

    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    if-nez v10, :cond_1

    if-eqz v5, :cond_1

    .line 359
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$2000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 360
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 361
    monitor-exit p0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    iput-boolean v9, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 365
    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 368
    sget-object v10, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 369
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 370
    .local v3, start:J
    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$2000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v6

    .line 371
    .local v6, version:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v0, v11, v3

    .line 372
    .local v0, duration:J
    const-wide/16 v11, 0x14

    cmp-long v11, v0, v11

    if-lez v11, :cond_2

    .line 373
    const-string v11, "DebugLoadingTime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "finish reload - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v11, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;

    iget-object v12, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v11, v12, v6, v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;J)V

    #calls: Lcom/android/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$2100(Lcom/android/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 377
    .local v2, info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    if-nez v2, :cond_3

    move v5, v8

    .line 378
    :goto_1
    if-eqz v5, :cond_4

    .line 379
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1200(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;->onContentChangeEnded()V

    goto :goto_0

    .line 375
    .end local v0           #duration:J
    .end local v2           #info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .end local v3           #start:J
    .end local v6           #version:J
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .restart local v0       #duration:J
    .restart local v2       #info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .restart local v3       #start:J
    .restart local v6       #version:J
    :cond_3
    move v5, v9

    .line 377
    goto :goto_1

    .line 383
    :cond_4
    sget-object v10, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 384
    :try_start_4
    iget-wide v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    cmp-long v11, v11, v6

    if-eqz v11, :cond_5

    .line 385
    iput-wide v6, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 386
    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$2000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v11

    iput v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    .line 392
    iget v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget v12, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-lt v11, v12, :cond_5

    .line 393
    const/4 v11, -0x1

    iput v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 396
    :cond_5
    iget v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    if-eq v11, v14, :cond_7

    .line 397
    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$2000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    iget v12, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    iput-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    .line 398
    iget-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->updateLockState()V

    .line 399
    iget-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    if-nez v11, :cond_6

    monitor-exit v10

    goto/16 :goto_0

    .line 403
    :catchall_2
    move-exception v8

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    .line 400
    :cond_6
    :try_start_5
    iget-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    sget v12, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem(I)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Ljava/util/ArrayList;

    .line 401
    iget-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v11

    iput v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    .line 403
    :cond_7
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 404
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v11, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;

    iget-object v12, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v11, v12, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;)V

    #calls: Lcom/android/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$2100(Lcom/android/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 406
    .end local v0           #duration:J
    .end local v2           #info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .end local v3           #start:J
    .end local v6           #version:J
    :cond_8
    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 407
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

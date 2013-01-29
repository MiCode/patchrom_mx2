.class Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;
.implements Lcom/android/gallery3d/util/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSetSyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/Future",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/android/gallery3d/data/MediaSet$SyncListener;"
    }
.end annotation


# instance fields
.field private final mFutures:[Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z

.field private final mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

.field private mPendingCount:I

.field private mResult:I

.field final synthetic this$0:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/MediaSet;[Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V
    .locals 5
    .parameter
    .parameter "sets"
    .parameter "listener"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    .line 295
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 300
    iput-object p3, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 301
    array-length v2, p2

    iput v2, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    .line 302
    array-length v2, p2

    new-array v2, v2, [Lcom/android/gallery3d/util/Future;

    iput-object v2, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/android/gallery3d/util/Future;

    .line 304
    monitor-enter p0

    .line 305
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    array-length v1, p2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/android/gallery3d/util/Future;

    aget-object v3, p2, v0

    invoke-virtual {v3, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    aput-object v3, v2, v0

    .line 307
    const-string v2, "Gallery.MultiSetSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  request sync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    monitor-exit p0

    .line 310
    return-void

    .line 309
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 5

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 318
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/android/gallery3d/util/Future;

    .local v0, arr$:[Lcom/android/gallery3d/util/Future;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .local v1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 317
    .end local v1           #future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/lang/Integer;>;"
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    if-gez v4, :cond_0

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    .end local v0           #arr$:[Lcom/android/gallery3d/util/Future;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->waitDone()V

    .line 333
    iget v0, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 4
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    const/4 v1, 0x2

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, listener:Lcom/android/gallery3d/data/MediaSet$SyncListener;
    monitor-enter p0

    .line 350
    if-ne p2, v1, :cond_0

    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 351
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    .line 352
    iget v1, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    if-nez v1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 356
    :cond_1
    const-string v1, "Gallery.MultiSetSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSyncDone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #pending="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/android/gallery3d/data/MediaSet;

    iget v2, p0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/data/MediaSet$SyncListener;->onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V

    .line 360
    :cond_2
    return-void

    .line 358
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized waitDone()V
    .locals 3

    .prologue
    .line 339
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "Gallery.MultiSetSync"

    const-string v2, "waitDone() interrupted"

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

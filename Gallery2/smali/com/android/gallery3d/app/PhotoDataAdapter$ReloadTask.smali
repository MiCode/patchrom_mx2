.class Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 960
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 961
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 962
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 960
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method

.method private findCurrentMediaItem(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/android/gallery3d/data/MediaItem;
    .locals 4
    .parameter "info"

    .prologue
    .line 1050
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1051
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget v3, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v0, v2, v3

    .line 1052
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I
    .locals 4
    .parameter "info"
    .parameter "path"

    .prologue
    .line 1070
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1071
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1072
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 1073
    iget v3, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v3, v0

    .line 1076
    :goto_1
    return v3

    .line 1071
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private findIndexOfTarget(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I
    .locals 5
    .parameter "info"

    .prologue
    .line 1056
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    if-nez v2, :cond_1

    iget v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1066
    :cond_0
    :goto_0
    return v0

    .line 1057
    :cond_1
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1060
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-eqz v1, :cond_2

    .line 1061
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I

    move-result v0

    .line 1062
    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1066
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v3, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    iget v4, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/android/gallery3d/data/Path;I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    .line 969
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

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
    .line 1040
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1041
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    monitor-exit p0

    return-void

    .line 1040
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 974
    :goto_0
    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v5, :cond_9

    .line 975
    monitor-enter p0

    .line 976
    :try_start_0
    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v5, :cond_0

    .line 977
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 978
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 979
    monitor-exit p0

    goto :goto_0

    .line 981
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    iput-boolean v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 983
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v6, v7, v12}, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v5, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 984
    .local v1, info:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    sget-object v6, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 985
    const/4 v5, 0x1

    :try_start_2
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 986
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 987
    .local v3, version:J
    iget-wide v7, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    cmp-long v5, v7, v3

    if-eqz v5, :cond_1

    .line 988
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 989
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    iput v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 991
    :cond_1
    iget-boolean v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    if-nez v5, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 1033
    .end local v3           #version:J
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 992
    .restart local v3       #version:J
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    iget v7, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget v8, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    invoke-virtual {v5, v7, v8}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 995
    const/4 v0, -0x1

    .line 998
    .local v0, index:I
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 999
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I

    move-result v0

    .line 1000
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    const/4 v7, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v5, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2702(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 1004
    :cond_3
    if-ne v0, v10, :cond_4

    .line 1005
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 1006
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    iget-object v7, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    if-ne v5, v7, :cond_8

    .line 1007
    iget v0, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1020
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    :goto_1
    if-ne v0, v10, :cond_5

    .line 1021
    iget v0, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1022
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v5

    if-ne v5, v9, :cond_5

    if-lez v0, :cond_5

    .line 1024
    add-int/lit8 v0, v0, -0x1

    .line 1029
    :cond_5
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v5

    if-lez v5, :cond_7

    .line 1030
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v5

    if-lt v0, v5, :cond_6

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 1031
    :cond_6
    iput v0, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1033
    :cond_7
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1035
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v6, v7, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v5, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1009
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_8
    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    goto :goto_1

    .line 1037
    .end local v0           #index:I
    .end local v1           #info:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #version:J
    :cond_9
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 1045
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1046
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    monitor-exit p0

    return-void

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

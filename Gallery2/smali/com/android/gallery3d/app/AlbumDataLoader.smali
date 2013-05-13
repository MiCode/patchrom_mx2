.class public Lcom/android/gallery3d/app/AlbumDataLoader;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;,
        Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;,
        Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;,
        Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;,
        Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;,
        Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/data/MediaSet;

.field private mSourceListener:Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 5
    .parameter "context"
    .parameter "mediaSet"

    .prologue
    const-wide/16 v3, -0x1

    const/16 v2, 0x3e8

    const/4 v0, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    .line 61
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    .line 63
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 64
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 67
    iput-wide v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    .line 70
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    .line 73
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

    .line 79
    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 81
    new-array v0, v2, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    .line 82
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    .line 83
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 87
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader$1;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumDataLoader;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumDataLoader;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumDataLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumDataLoader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/AlbumDataLoader;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumDataLoader;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return p1
.end method

.method private clearSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const-wide/16 v2, -0x1

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 157
    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 227
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 232
    :goto_0
    return-object v2

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setContentWindow(II)V
    .locals 7
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 160
    iget v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-ne p1, v6, :cond_1

    iget v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-ne p2, v6, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 162
    .local v0, end:I
    iget v5, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 165
    .local v5, start:I
    monitor-enter p0

    .line 166
    :try_start_0
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 167
    iput p2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 168
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    .line 170
    .local v2, itemVersion:[J
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    .line 171
    .local v4, setVersion:[J
    if-ge p1, v0, :cond_2

    if-lt v5, p2, :cond_3

    .line 172
    :cond_2
    move v1, v5

    .local v1, i:I
    move v3, v0

    .local v3, n:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 173
    rem-int/lit16 v6, v1, 0x3e8

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    .end local v1           #i:I
    .end local v2           #itemVersion:[J
    .end local v3           #n:I
    .end local v4           #setVersion:[J
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 176
    .restart local v2       #itemVersion:[J
    .restart local v4       #setVersion:[J
    :cond_3
    move v1, v5

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 177
    rem-int/lit16 v6, v1, 0x3e8

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 179
    :cond_4
    move v1, p2

    move v3, v0

    .restart local v3       #n:I
    :goto_3
    if-ge v1, v3, :cond_5

    .line 180
    rem-int/lit16 v6, v1, 0x3e8

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 183
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method public getHeader(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRowHeight(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 135
    const/16 v0, 0xc8

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->terminate()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 117
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 108
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->start()V

    .line 110
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 188
    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 193
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v2, v3

    .line 194
    .local v2, length:I
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    .line 195
    iput p2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    .line 198
    if-eq p1, p2, :cond_0

    .line 200
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 202
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 203
    .local v0, contentEnd:I
    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    .line 205
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v4

    .line 190
    goto :goto_1
.end method

.method public setDataListener(Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    .line 218
    return-void
.end method

.method public setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    .line 223
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    return v0
.end method

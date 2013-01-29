.class public Lcom/android/gallery3d/app/AlbumSetDataLoader;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;,
        Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;,
        Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;,
        Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;,
        Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;,
        Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;,
        Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mCoverItem:[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

.field private final mData:[Lcom/android/gallery3d/data/MediaSet;

.field private mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;

.field private mSourceVersion:J

.field private final mTotalCount:[I

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 4
    .parameter "activity"
    .parameter "albumSet"
    .parameter "cacheSize"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mVisibleStart:I

    .line 70
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mVisibleEnd:I

    .line 72
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    .line 73
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    .line 75
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    .line 76
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    .line 79
    iput-wide v2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J

    .line 88
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    .line 91
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 92
    new-array v0, p3, [Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

    .line 93
    new-array v0, p3, [Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/android/gallery3d/data/MediaSet;

    .line 94
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    .line 95
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    .line 96
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 100
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader$1;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/AlbumSetDataLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/app/AlbumSetDataLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mVisibleStart:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/app/AlbumSetDataLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/AlbumSetDataLoader;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method private assertIsActive(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    if-lt p1, v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-void
.end method

.method private clearSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/android/gallery3d/data/MediaSet;

    aput-object v1, v0, p1

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

    aput-object v1, v0, p1

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 174
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
    .line 327
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 328
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 333
    :goto_0
    return-object v2

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 334
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 335
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setContentWindow(II)V
    .locals 6
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 182
    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    if-ne p1, v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    if-ne p2, v5, :cond_0

    .line 204
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

    array-length v2, v5

    .line 185
    .local v2, length:I
    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    .line 186
    .local v4, start:I
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    .line 188
    .local v0, end:I
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    .line 189
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    .line 191
    if-ge p1, v0, :cond_1

    if-lt v4, p2, :cond_2

    .line 192
    :cond_1
    move v1, v4

    .local v1, i:I
    move v3, v0

    .local v3, n:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 193
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->clearSlot(I)V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    .end local v1           #i:I
    .end local v3           #n:I
    :cond_2
    move v1, v4

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 197
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->clearSlot(I)V

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 199
    :cond_3
    move v1, p2

    move v3, v0

    .restart local v3       #n:I
    :goto_3
    if-ge v1, v3, :cond_4

    .line 200
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->clearSlot(I)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 203
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public getActiveStart()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method public getCoverItem(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 144
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 145
    .local v0, covers:Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;->mCovers:Ljava/util/ArrayList;

    .line 148
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 2
    .parameter "index"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/android/gallery3d/data/MediaSet;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTotalCount(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 161
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

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
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->terminate()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 122
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 126
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->start()V

    .line 128
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 207
    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 212
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    .line 213
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    .line 215
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/app/AlbumSetDataLoader$ArrayOfCover;

    array-length v2, v3

    .line 217
    .local v2, length:I
    if-eq p1, p2, :cond_0

    .line 219
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 221
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 222
    .local v0, contentEnd:I
    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 224
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v4

    .line 209
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    .line 240
    return-void
.end method

.method public setModelListener(Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    .line 236
    return-void
.end method

.method public setVisibleWindow(II)V
    .locals 0
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 177
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mVisibleStart:I

    .line 178
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mVisibleEnd:I

    .line 179
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I

    return v0
.end method

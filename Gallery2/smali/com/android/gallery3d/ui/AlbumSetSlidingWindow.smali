.class public Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private mCoverMargin:I

.field private mCoverPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;",
            ">;"
        }
    .end annotation
.end field

.field private mCoverWidth:I

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

.field private mFreedCover:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

.field private mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

.field private final mLoadingText:Ljava/lang/String;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private final mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 2
    .parameter "activity"
    .parameter "source"
    .parameter "labelSpec"
    .parameter "cacheSize"

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 54
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 56
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 57
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 68
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 69
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mFreedCover:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setModelListener(Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;)V

    .line 182
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 183
    new-array v0, p4, [Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 184
    invoke-virtual {p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 185
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 187
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/gallery3d/ui/AlbumLabelMaker;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    .line 188
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/android/gallery3d/ui/TextureUploader;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TextureUploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    .line 191
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 198
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$1006(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumLabelMaker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverMargin:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    return-object v0
.end method

.method private cancelImagesInSlot(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 325
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v3, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, p1, v4

    aget-object v1, v3, v4

    .line 327
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v1, :cond_0

    .line 328
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 329
    .local v0, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_1

    .line 331
    .end local v0           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :cond_3
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 306
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 308
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 309
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 310
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method private clearCoverPool()V
    .locals 4

    .prologue
    .line 581
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    monitor-enter v3

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 583
    .local v0, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 584
    :cond_1
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    goto :goto_0

    .line 587
    .end local v0           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 586
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 587
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    return-void
.end method

.method private clearFreedPool()V
    .locals 6

    .prologue
    .line 252
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    monitor-enter v3

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 254
    .local v0, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->refCount:I

    if-nez v2, :cond_0

    .line 255
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 257
    :cond_1
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v2, :cond_2

    .line 258
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mFreedCover:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v0           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 262
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mFreedCover:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 263
    .restart local v0       #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverDataVersion:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    .end local v0           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mFreedCover:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 267
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 6
    .parameter "slotIndex"

    .prologue
    .line 341
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, p1, v4

    aget-object v1, v3, v4

    .line 342
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-nez v1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 345
    .local v0, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->refCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->refCount:I

    goto :goto_1

    .line 347
    .end local v0           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :cond_1
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 348
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 349
    :cond_2
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 350
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, p1, v4

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0
.end method

.method private static getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J
    .locals 2
    .parameter "object"

    .prologue
    .line 335
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 670
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 672
    :cond_0
    const/4 v0, 0x0

    .line 675
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getCacheFlag()I

    move-result v0

    goto :goto_0
.end method

.method private static identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 679
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 681
    :cond_0
    const/4 v0, 0x0

    .line 684
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getCacheStatus()I

    move-result v0

    goto :goto_0
.end method

.method private isLabelChanged(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z
    .locals 1
    .parameter "entry"
    .parameter "title"
    .parameter "totalCount"
    .parameter "sourceType"

    .prologue
    .line 355
    iget-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    if-ne v0, p3, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareSlotContent(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 430
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    .line 433
    .restart local v0       #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 434
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aput-object v0, v1, v2

    .line 435
    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 315
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v3, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, p1, v4

    aget-object v1, v3, v4

    .line 317
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v1, :cond_0

    .line 318
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 319
    .local v0, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    goto :goto_1

    .line 321
    .end local v0           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :cond_3
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    goto :goto_0
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 297
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 299
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 300
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 301
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 221
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 223
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 224
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 225
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 228
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 229
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 232
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 233
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 235
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 236
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 238
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 239
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 240
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 242
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 243
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 247
    :cond_7
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 248
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private static startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z
    .locals 1
    .parameter "loader"

    .prologue
    .line 438
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 440
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method private updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 22
    .parameter "entry"
    .parameter "slotIndex"

    .prologue
    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v15

    .line 362
    .local v15, album:Lcom/android/gallery3d/data/MediaSet;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getCoverItem(I)Ljava/util/ArrayList;

    move-result-object v18

    .line 363
    .local v18, covers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getTotalCount(I)I

    move-result v21

    .line 365
    .local v21, totalCount:I
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    .line 366
    invoke-static {v15}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v3

    move-object/from16 v0, p1

    iput-wide v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setDataVersion:J

    .line 367
    invoke-static {v15}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v3

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheFlag:I

    .line 368
    invoke-static {v15}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v3

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheStatus:I

    .line 369
    if-nez v15, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    .line 371
    if-nez v15, :cond_3

    const-string v7, ""

    .line 372
    .local v7, title:Ljava/lang/String;
    :goto_1
    invoke-static {v15}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v8

    .line 373
    .local v8, sourceType:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isLabelChanged(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    move-object/from16 v0, p1

    iput-object v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 375
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 376
    move-object/from16 v0, p1

    iput v8, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    .line 377
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 378
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 379
    const/4 v3, 0x0

    move-object/from16 v0, p1

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 380
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 382
    :cond_0
    if-eqz v15, :cond_1

    .line 383
    instance-of v3, v15, Lcom/android/gallery3d/data/FolderIconAlbum;

    if-eqz v3, :cond_4

    .line 384
    new-instance v3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    const-string v6, ""

    move-object/from16 v4, p0

    move/from16 v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p1

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 392
    :cond_1
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 393
    .local v17, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->refCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->refCount:I

    goto :goto_3

    .line 369
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #sourceType:I
    .end local v17           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 386
    .restart local v7       #title:Ljava/lang/String;
    .restart local v8       #sourceType:I
    :cond_4
    new-instance v9, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v10, p0

    move/from16 v11, p2

    move-object v12, v7

    move v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p1

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v9}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    goto :goto_2

    .line 395
    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 396
    if-eqz v18, :cond_9

    .line 397
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 398
    .local v16, count:I
    add-int/lit8 v19, v16, -0x1

    .local v19, i:I
    :goto_4
    if-ltz v19, :cond_8

    .line 399
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/MediaItem;

    .line 400
    .local v12, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v12, :cond_6

    .line 398
    :goto_5
    add-int/lit8 v19, v19, -0x1

    goto :goto_4

    .line 402
    :cond_6
    invoke-static {v12}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v13

    .line 405
    .local v13, version:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    monitor-enter v4

    .line 406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 407
    .restart local v17       #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    if-nez v17, :cond_7

    .line 408
    new-instance v17, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .end local v17           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    invoke-direct/range {v17 .. v17}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;-><init>()V

    .line 409
    .restart local v17       #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    .line 410
    move-object/from16 v0, v17

    iput-wide v13, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverDataVersion:J

    .line 411
    invoke-static {v12}, Lcom/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v3

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->isPanorama:Z

    .line 412
    invoke-virtual {v12}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rotation:I

    .line 413
    invoke-virtual {v12}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->mediaType:I

    .line 414
    new-instance v9, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    move-object/from16 v10, p0

    move/from16 v11, p2

    invoke-direct/range {v9 .. v14}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILcom/android/gallery3d/data/MediaItem;J)V

    move-object/from16 v0, v17

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v9}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$002(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 415
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverWidth:I

    invoke-virtual {v12, v3, v5}, Lcom/android/gallery3d/data/MediaItem;->calcItemRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    .line 416
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->refCount:I

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverPool:Ljava/util/HashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :goto_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 419
    :cond_7
    :try_start_1
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->refCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->refCount:I

    goto :goto_6

    .line 421
    .end local v17           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 424
    .end local v12           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v13           #version:J
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverMargin:I

    move-object/from16 v0, p1

    #calls: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->layout(III)V
    invoke-static {v0, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)V

    .line 426
    .end local v16           #count:I
    .end local v19           #i:I
    :cond_9
    return-void
.end method

.method private updateAllImageRequests()V
    .locals 7

    .prologue
    .line 485
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 486
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v2, i:I
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 487
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v6, v6

    rem-int v6, v2, v6

    aget-object v1, v5, v6

    .line 488
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-nez v1, :cond_0

    .line 499
    .end local v1           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :goto_1
    return-void

    .line 489
    .restart local v1       #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_0
    iget-object v5, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 490
    .local v0, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    goto :goto_2

    .line 492
    .end local v0           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :cond_2
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 486
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v1           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v5, :cond_5

    .line 495
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    goto :goto_1

    .line 497
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 9

    .prologue
    .line 458
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v6, :cond_1

    .line 482
    :cond_0
    return-void

    .line 459
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 462
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v2, i:I
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 463
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v7, v7

    rem-int v7, v2, v7

    aget-object v1, v6, v7

    .line 464
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v1, :cond_0

    .line 465
    iget-object v6, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 466
    .local v0, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v6, :cond_2

    .line 467
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto :goto_1

    .line 470
    .end local v0           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :cond_3
    iget-object v6, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v6, :cond_4

    .line 471
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v7, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 462
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v1           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 478
    .local v5, range:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_0

    .line 479
    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v6, v2

    invoke-direct {p0, v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 480
    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private uploadBackgroundTextureInSlot(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 444
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, p1, v4

    aget-object v1, v3, v4

    .line 446
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v1, :cond_0

    .line 447
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 448
    .local v0, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v3, :cond_2

    .line 449
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto :goto_1

    .line 452
    .end local v0           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :cond_3
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v4, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 571
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 572
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 573
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 574
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->clearCoverPool()V

    .line 577
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->clearRecycledLabels()V

    .line 578
    return-void
.end method

.method public get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 217
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChangeEnded()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->clearFreedPool()V

    .line 545
    return-void
.end method

.method public onContentChanged(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 518
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_3

    .line 525
    :cond_2
    const-string v1, "AlbumSetSlidingWindow"

    const-string v2, "invalid update: %s is outside (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 532
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v0, :cond_4

    .line 533
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 535
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 536
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 537
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 503
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-eq v1, p1, :cond_3

    .line 504
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 505
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(I)V

    .line 506
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v1, v2, :cond_2

    .line 507
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge v0, v1, :cond_1

    .line 508
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 512
    .end local v0           #i:I
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 514
    :cond_3
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 739
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    if-ne v0, p1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    .line 742
    sget v0, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 743
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getLabelHeight()I

    move-result v7

    .line 744
    .local v7, labelHeight:I
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverWidth:I

    .line 745
    sget v0, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    add-int/lit8 v0, v0, -0x1

    div-int v0, v7, v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverMargin:I

    .line 750
    .end local v7           #labelHeight:I
    :goto_1
    iput-object v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->setLabelWidth(I)V

    .line 753
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 755
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v2, i:I
    iget v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v8, n:I
    :goto_2
    if-ge v2, v8, :cond_6

    .line 756
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, v2, v1

    aget-object v6, v0, v1

    .line 757
    .local v6, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-nez v6, :cond_3

    .line 755
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 747
    .end local v2           #i:I
    .end local v6           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .end local v8           #n:I
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverWidth:I

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverMargin:I

    goto :goto_1

    .line 758
    .restart local v2       #i:I
    .restart local v6       #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .restart local v8       #n:I
    :cond_3
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 759
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 760
    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6, v9}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 761
    iput-object v9, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 763
    :cond_4
    iget-object v0, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_5

    .line 764
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v3, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v1, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;Ljava/lang/String;I)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 767
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverWidth:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverMargin:I

    #calls: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->layout(III)V
    invoke-static {v6, v0, v1, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)V

    goto :goto_3

    .line 769
    .end local v6           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 770
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 559
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 560
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 561
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 562
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt v0, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-lt v0, v2, :cond_1

    .line 563
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 561
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->clearFreedPool()V

    .line 567
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->clearRecycledLabels()V

    .line 568
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 591
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 592
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 593
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 596
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x0

    .line 270
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 271
    :cond_0
    const-string v3, "start = %s, end = %s, length = %s, size = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v3, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setVisibleWindow(II)V

    .line 277
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 278
    .local v2, data:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 279
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 280
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 282
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 283
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    .line 285
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 287
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 289
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    .line 202
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method

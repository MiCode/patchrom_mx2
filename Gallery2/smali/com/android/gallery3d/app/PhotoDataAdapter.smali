.class public Lcom/android/gallery3d/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mCameraIndex:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcom/android/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcom/android/gallery3d/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsPanorama:Z

.field private mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedFullImage:Z

.field private final mPaths:[Lcom/android/gallery3d/data/Path;

.field private final mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private final mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, k:I
    const/16 v3, 0x10

    new-array v3, v3, [Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    sput-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    .line 90
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .local v2, k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 92
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    .line 93
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v0, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 94
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v5, v0

    invoke-direct {v4, v5, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 98
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 99
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZ)V
    .locals 6
    .parameter "activity"
    .parameter "view"
    .parameter "mediaSet"
    .parameter "itemPath"
    .parameter "indexHint"
    .parameter "cameraIndex"
    .parameter "isPanorama"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x7

    const/4 v1, 0x0

    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    .line 115
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    .line 116
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 117
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 126
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 127
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 136
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    .line 139
    new-array v0, v2, [Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    .line 148
    iput-wide v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    .line 149
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    .line 155
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 156
    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 164
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    .line 174
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 175
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 176
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 177
    iput p5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 178
    iput p6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    .line 179
    iput-boolean p7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 180
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 185
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 214
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 215
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/PhotoDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

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
    .line 861
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 862
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 865
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 867
    :goto_0
    return-object v2

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 868
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 869
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fireDataChange()V
    .locals 15

    .prologue
    const v10, 0x7fffffff

    const/4 v14, 0x0

    const/4 v13, 0x7

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, changed:Z
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v9, 0x3

    if-gt v3, v9, :cond_1

    .line 241
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v9, v3

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    .line 242
    .local v5, newVersion:J
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aget-wide v11, v9, v11

    cmp-long v9, v11, v5

    if-eqz v9, :cond_0

    .line 243
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aput-wide v5, v9, v11

    .line 244
    const/4 v1, 0x1

    .line 240
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v5           #newVersion:J
    :cond_1
    if-nez v1, :cond_2

    .line 285
    :goto_1
    return-void

    .line 253
    :cond_2
    const/4 v0, 0x7

    .line 254
    .local v0, N:I
    new-array v2, v13, [I

    .line 257
    .local v2, fromIndex:[I
    new-array v7, v13, [Lcom/android/gallery3d/data/Path;

    .line 258
    .local v7, oldPaths:[Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    invoke-static {v9, v14, v7, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v13, :cond_3

    .line 262
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x3

    invoke-direct {p0, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    aput-object v11, v9, v3

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 266
    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_8

    .line 267
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    aget-object v8, v9, v3

    .line 268
    .local v8, p:Lcom/android/gallery3d/data/Path;
    if-nez v8, :cond_4

    .line 269
    aput v10, v2, v3

    .line 266
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 275
    :cond_4
    const/4 v4, 0x0

    .local v4, j:I
    :goto_5
    if-ge v4, v13, :cond_5

    .line 276
    aget-object v9, v7, v4

    if-ne v9, v8, :cond_6

    .line 280
    :cond_5
    if-ge v4, v13, :cond_7

    add-int/lit8 v9, v4, -0x3

    :goto_6
    aput v9, v2, v3

    goto :goto_4

    .line 275
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    move v9, v10

    .line 280
    goto :goto_6

    .line 283
    .end local v4           #j:I
    .end local v8           #p:Lcom/android/gallery3d/data/Path;
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v10, v10

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v2, v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->notifyDataChange([III)V

    goto :goto_1
.end method

.method private getItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 374
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 380
    :goto_0
    return-object v0

    .line 375
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 377
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_0

    .line 375
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 380
    goto :goto_0
.end method

.method private getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 218
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getPath(I)Lcom/android/gallery3d/data/Path;
    .locals 2
    .parameter "index"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 233
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 227
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    .line 228
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v1

    goto :goto_0
.end method

.method private isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 6
    .parameter "mediaItem"

    .prologue
    const/4 v1, 0x0

    .line 697
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-gez v2, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v1

    .line 699
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 700
    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 701
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v2, v3, :cond_0

    .line 703
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 704
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 708
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 3
    .parameter "item"

    .prologue
    .line 715
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    .line 716
    .local v1, width:I
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 717
    .local v0, height:I
    new-instance v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v2, v1, v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(II)V

    return-object v2
.end method

.method private startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;
    .locals 10
    .parameter "index"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 722
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v4, :cond_1

    :cond_0
    move-object v4, v6

    .line 756
    :goto_0
    return-object v4

    .line 724
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 725
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_2

    move-object v4, v6

    goto :goto_0

    .line 726
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v7, p1, 0x20

    aget-object v1, v4, v7

    .line 727
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 728
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    .line 730
    .local v2, version:J
    if-ne p2, v5, :cond_4

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v4, :cond_4

    iget-wide v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_4

    .line 732
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 727
    .end local v2           #version:J
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 733
    .restart local v2       #version:J
    :cond_4
    if-ne p2, v9, :cond_5

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v4, :cond_5

    iget-wide v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_5

    .line 735
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 738
    :cond_5
    if-ne p2, v5, :cond_6

    iget-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 739
    iput-wide v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 740
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v5, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v5, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v6, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 744
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 746
    :cond_6
    if-ne p2, v9, :cond_7

    iget-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_7

    .line 749
    iput-wide v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 750
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v5, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v5, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v6, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 754
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    :cond_7
    move-object v4, v6

    .line 756
    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 384
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v1, p1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 385
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 386
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 388
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, p1, 0x20

    aget-object v0, v1, v2

    .line 389
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 391
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 392
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 393
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 395
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v1, p1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/android/gallery3d/data/Path;)V

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method private updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 327
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v2, p2, :cond_2

    .line 328
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 329
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 342
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 334
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 335
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_3

    .line 336
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 337
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 338
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 341
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateImageCache()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 760
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 761
    .local v6, toBeRemoved:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v7, :cond_5

    .line 762
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v8, v1, 0x20

    aget-object v3, v7, v8

    .line 763
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v3, :cond_1

    .line 761
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    :cond_1
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 765
    .local v4, path:Lcom/android/gallery3d/data/Path;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 766
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 767
    if-eqz v0, :cond_4

    .line 768
    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 769
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_2

    .line 770
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 771
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 773
    :cond_2
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 774
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 776
    :cond_3
    iget-wide v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 779
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v7, v7, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v7, :cond_0

    .line 780
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v5, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 781
    .local v5, s:Lcom/android/gallery3d/ui/BitmapScreenNail;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/android/gallery3d/ui/BitmapScreenNail;->updatePlaceholderSize(II)V

    goto :goto_1

    .line 786
    .end local v5           #s:Lcom/android/gallery3d/ui/BitmapScreenNail;
    :cond_4
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-direct {v0, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    .line 787
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 792
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 793
    .restart local v4       #path:Lcom/android/gallery3d/data/Path;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 794
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 795
    :cond_7
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 796
    :cond_8
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_2

    .line 798
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    :cond_9
    return-void
.end method

.method private updateImageRequests()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 608
    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v8, :cond_1

    .line 640
    :cond_0
    return-void

    .line 610
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 611
    .local v1, currentIndex:I
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v9, v1, 0x20

    aget-object v5, v8, v9

    .line 612
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v8, v9, :cond_0

    .line 618
    const/4 v7, 0x0

    .line 619
    .local v7, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 620
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v6, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 621
    .local v6, offset:I
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v0, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 622
    .local v0, bit:I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v8, :cond_3

    .line 619
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    :cond_3
    add-int v8, v1, v6

    invoke-direct {p0, v8, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    .line 624
    if-eqz v7, :cond_2

    .line 628
    .end local v0           #bit:I
    .end local v6           #offset:I
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 629
    .local v2, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_6

    .line 630
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 631
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 632
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 634
    :cond_6
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_5

    .line 635
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 636
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 637
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    goto :goto_1
.end method

.method private updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 5
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 293
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/ScreenNail;

    .line 295
    .local v3, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v4, p2, :cond_2

    .line 296
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 303
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v4, v4, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v4, :cond_3

    .line 304
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 305
    .local v2, original:Lcom/android/gallery3d/ui/BitmapScreenNail;
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/BitmapScreenNail;->combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 308
    .end local v2           #original:Lcom/android/gallery3d/ui/BitmapScreenNail;
    :cond_3
    if-nez v3, :cond_6

    .line 309
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 315
    :goto_1
    const/4 v1, -0x3

    .local v1, i:I
    :goto_2
    const/4 v4, 0x3

    if-gt v1, v4, :cond_5

    .line 316
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_7

    .line 317
    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 318
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 322
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 311
    .end local v1           #i:I
    :cond_6
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 312
    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    .line 315
    .restart local v1       #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private updateSlidingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 581
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 583
    .local v2, start:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 585
    .local v0, end:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 588
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 591
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x10

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x20

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 593
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 594
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 596
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_5

    .line 597
    if-lt v1, v2, :cond_3

    if-lt v1, v0, :cond_4

    .line 598
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v4, v1, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 596
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    :cond_5
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 602
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 603
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 3

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 554
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 7
    .parameter "entry"

    .prologue
    .line 562
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 563
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 564
    .local v0, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v2, :cond_1

    .line 565
    if-eqz v0, :cond_0

    .line 566
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 568
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    .line 571
    .local v3, width:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    .line 572
    .local v1, height:I
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    goto :goto_0

    .line 575
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 443
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 444
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    goto :goto_0
.end method

.method public getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 431
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 432
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    .line 433
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 434
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 439
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 437
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 482
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v1

    .line 483
    :cond_1
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 484
    :cond_2
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .parameter "offset"

    .prologue
    .line 522
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v0, v1, p1

    .line 523
    .local v0, index:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, v0, 0x20

    aget-object v1, v1, v2

    .line 526
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v4, 0x0

    .line 409
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v3, p1

    .line 410
    .local v1, index:I
    if-ltz v1, :cond_0

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge v1, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 426
    :goto_0
    return-object v3

    .line 411
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v3, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 413
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 414
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v2, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 411
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 416
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 417
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_4

    move-object v3, v4

    goto :goto_0

    .line 421
    :cond_4
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 422
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 423
    if-nez p1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 426
    :cond_5
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method public getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCamera(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 455
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeletable(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 473
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 474
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 465
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 466
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 405
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 357
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 359
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 360
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 362
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 364
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

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

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 365
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 366
    :cond_1
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 367
    :cond_2
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_0

    .line 369
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 370
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 371
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 347
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 348
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 350
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->start()V

    .line 353
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 354
    return-void
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v1, p1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 532
    iput p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 533
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 534
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 535
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 538
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 539
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    .line 289
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 545
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 546
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 451
    return-void
.end method

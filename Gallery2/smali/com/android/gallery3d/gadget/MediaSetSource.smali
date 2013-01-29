.class public Lcom/android/gallery3d/gadget/MediaSetSource;
.super Ljava/lang/Object;
.source "MediaSetSource.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;
.implements Lcom/android/gallery3d/gadget/WidgetSource;


# instance fields
.field private mCache:[Lcom/android/gallery3d/data/MediaItem;

.field private mCacheEnd:I

.field private mCacheStart:I

.field private mContentListener:Lcom/android/gallery3d/data/ContentListener;

.field private mSource:Lcom/android/gallery3d/data/MediaSet;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSourceVersion:J

    .line 46
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 48
    return-void
.end method

.method private ensureCacheRange(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 56
    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    if-ge p1, v3, :cond_0

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 60
    .local v1, token:J
    :try_start_0
    iput p1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    .line 61
    iget-object v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget v4, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    .line 63
    iget-object v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 53
    return-void
.end method

.method public declared-synchronized getContentUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "index"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/MediaSetSource;->ensureCacheRange(I)V

    .line 72
    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    iget v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "index"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/MediaSetSource;->ensureCacheRange(I)V

    .line 79
    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    iget v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/gadget/WidgetUtils;->createWidgetBitmap(Lcom/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onContentDirty()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    invoke-interface {v0}, Lcom/android/gallery3d/data/ContentListener;->onContentDirty()V

    .line 112
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    .line 86
    .local v0, version:J
    iget-wide v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSourceVersion:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 87
    iput-wide v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSourceVersion:J

    .line 88
    iput v4, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    .line 89
    iput v4, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    .line 90
    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    .line 97
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 103
    .local v0, token:J
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

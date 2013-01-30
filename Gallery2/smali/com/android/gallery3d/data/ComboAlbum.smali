.class public Lcom/android/gallery3d/data/ComboAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ComboAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSets:[Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;[Lcom/android/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "mediaSets"
    .parameter "name"

    .prologue
    .line 32
    invoke-static {}, Lcom/android/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 33
    iput-object p2, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 35
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    iput-object p3, p0, Lcom/android/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 9
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 44
    .local v6, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    .line 45
    .local v7, size:I
    const/4 v8, 0x1

    if-ge p2, v8, :cond_1

    .line 56
    .end local v6           #set:Lcom/android/gallery3d/data/MediaSet;
    .end local v7           #size:I
    :cond_0
    return-object v4

    .line 46
    .restart local v6       #set:Lcom/android/gallery3d/data/MediaSet;
    .restart local v7       #size:I
    :cond_1
    if-ge p1, v7, :cond_3

    .line 47
    add-int v8, p1, p2

    if-gt v8, v7, :cond_2

    move v1, p2

    .line 48
    .local v1, fetchCount:I
    :goto_1
    invoke-virtual {v6, p1, v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 49
    .local v2, fetchItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr p2, v8

    .line 51
    const/4 p1, 0x0

    .line 43
    .end local v1           #fetchCount:I
    .end local v2           #fetchItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_2
    sub-int v1, v7, p1

    goto :goto_1

    .line 53
    :cond_3
    sub-int/2addr p1, v7

    goto :goto_2
.end method

.method public getMediaItemCount()I
    .locals 6

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, count:I
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 63
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v4           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ComboAlbum;->notifyContentChanged()V

    .line 91
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    array-length v2, v5

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 82
    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 83
    .local v3, version:J
    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    const/4 v0, 0x1

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v3           #version:J
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 86
    :cond_2
    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v5
.end method

.method public requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/data/ComboAlbum;->requestSyncOnMultipleSets([Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

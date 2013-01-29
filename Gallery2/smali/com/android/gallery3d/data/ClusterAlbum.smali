.class public Lcom/android/gallery3d/data/ClusterAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

.field private mCover:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mName:Ljava/lang/String;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .parameter "path"
    .parameter "dataManager"
    .parameter "clusterAlbumSet"

    .prologue
    .line 31
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 33
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 35
    return-void
.end method

.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "start"
    .parameter "count"
    .parameter "dataManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;II",
            "Lcom/android/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :cond_0
    return-object v4

    .line 79
    :cond_1
    add-int v6, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    .local v2, end:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v5, subset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    sub-int v6, v2, p1

    new-array v0, v6, [Lcom/android/gallery3d/data/MediaItem;

    .line 82
    .local v0, buf:[Lcom/android/gallery3d/data/MediaItem;
    new-instance v1, Lcom/android/gallery3d/data/ClusterAlbum$1;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/data/ClusterAlbum$1;-><init>([Lcom/android/gallery3d/data/MediaItem;)V

    .line 87
    .local v1, consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    const/4 v6, 0x0

    invoke-virtual {p3, v5, v1, v6}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    sub-int v6, v2, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 90
    aget-object v6, v0, v3

    if-eqz v6, :cond_2

    .line 91
    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/ClusterAlbum$2;-><init>(Lcom/android/gallery3d/data/ClusterAlbum;)V

    .line 134
    .local v0, consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 135
    return-void
.end method

.method protected enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 2
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCoverMediaItem(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "count"
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
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mCover:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mCover:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem(I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
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
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMediaItemPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x405

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ClusterAlbum;->notifyContentChanged()V

    .line 118
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 113
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public setCoverMediaItem(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, cover:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mCover:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method setMediaItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 56
    return-void
.end method

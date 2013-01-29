.class public Lcom/android/gallery3d/data/ClusterAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mFirstReloadDone:Z

.field private mKind:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "baseSet"
    .parameter "kind"

    .prologue
    .line 37
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 38
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 39
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 40
    iput p4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    .line 41
    invoke-virtual {p3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 42
    return-void
.end method

.method private updateClusters()V
    .locals 12

    .prologue
    .line 78
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 81
    .local v4, context:Landroid/content/Context;
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    packed-switch v10, :pswitch_data_0

    .line 95
    :pswitch_0
    new-instance v3, Lcom/android/gallery3d/data/SizeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/SizeClustering;-><init>(Landroid/content/Context;)V

    .line 99
    .local v3, clustering:Lcom/android/gallery3d/data/Clustering;
    :goto_0
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/Clustering;->run(Lcom/android/gallery3d/data/MediaSet;)V

    .line 100
    invoke-virtual {v3}, Lcom/android/gallery3d/data/Clustering;->getNumberOfClusters()I

    move-result v9

    .line 101
    .local v9, n:I
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    .line 102
    .local v5, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_3

    .line 104
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, childName:Ljava/lang/String;
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 106
    iget-object v10, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 113
    .local v2, childPath:Lcom/android/gallery3d/data/Path;
    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 115
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-direct {v0, v2, v5, p0}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 118
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_0
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterCover(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->setCoverMediaItem(Ljava/util/ArrayList;)V

    .line 121
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 83
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    .end local v5           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v6           #i:I
    .end local v9           #n:I
    :pswitch_1
    new-instance v3, Lcom/android/gallery3d/data/TimeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TimeClustering;-><init>(Landroid/content/Context;)V

    .line 84
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 86
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_2
    new-instance v3, Lcom/android/gallery3d/data/LocationClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;)V

    .line 87
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 89
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_3
    new-instance v3, Lcom/android/gallery3d/data/TagClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TagClustering;-><init>(Landroid/content/Context;)V

    .line 90
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 92
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_4
    new-instance v3, Lcom/android/gallery3d/data/FaceClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;)V

    .line 93
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 107
    .restart local v1       #childName:Ljava/lang/String;
    .restart local v5       #dataManager:Lcom/android/gallery3d/data/DataManager;
    .restart local v6       #i:I
    .restart local v9       #n:I
    :cond_1
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    move-object v10, v3

    .line 108
    check-cast v10, Lcom/android/gallery3d/data/SizeClustering;

    invoke-virtual {v10, v6}, Lcom/android/gallery3d/data/SizeClustering;->getMinSize(I)J

    move-result-wide v7

    .line 109
    .local v7, minSize:J
    iget-object v10, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v7, v8}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 110
    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 111
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v7           #minSize:J
    :cond_2
    iget-object v10, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v6}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 123
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    return-void

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateClustersContents()V
    .locals 10

    .prologue
    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v0, existing:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    new-instance v9, Lcom/android/gallery3d/data/ClusterAlbumSet$1;

    invoke-direct {v9, p0, v0}, Lcom/android/gallery3d/data/ClusterAlbumSet$1;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Ljava/util/HashSet;)V

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 133
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 137
    .local v4, n:I
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 138
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItemPaths()Ljava/util/ArrayList;

    move-result-object v6

    .line 139
    .local v6, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v5, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 141
    .local v3, m:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 142
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/Path;

    .line 143
    .local v7, p:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 144
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    .end local v7           #p:Lcom/android/gallery3d/data/Path;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8, v5}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 148
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 149
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 152
    .end local v2           #j:I
    .end local v3           #m:I
    .end local v5           #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v6           #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 75
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 62
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    .line 68
    :goto_0
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    goto :goto_0
.end method

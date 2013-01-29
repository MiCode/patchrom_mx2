.class public Lcom/android/gallery3d/data/FolderIconAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "FolderIconAlbum.java"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCovers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "path"
    .parameter "application"

    .prologue
    .line 14
    invoke-static {}, Lcom/android/gallery3d/data/FolderIconAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 15
    iput-object p2, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 16
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mCovers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
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
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mCovers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mName:Ljava/lang/String;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public reload()J
    .locals 5

    .prologue
    .line 28
    iget-object v3, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mCovers:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mCovers:Ljava/util/ArrayList;

    .line 30
    iget-object v3, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 31
    .local v1, dm:Lcom/android/gallery3d/data/DataManager;
    const v0, 0x7f020125

    .line 32
    .local v0, coverResId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/icon/res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/ResImage;

    .line 33
    .local v2, ri:Lcom/android/gallery3d/data/ResImage;
    const/16 v3, 0x10e

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/ResImage;->setWidth(I)V

    .line 34
    const/16 v3, 0xf0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/ResImage;->setHeight(I)V

    .line 35
    iget-object v3, p0, Lcom/android/gallery3d/data/FolderIconAlbum;->mCovers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {}, Lcom/android/gallery3d/data/FolderIconAlbum;->nextVersionNumber()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 38
    .end local v0           #coverResId:I
    .end local v1           #dm:Lcom/android/gallery3d/data/DataManager;
    .end local v2           #ri:Lcom/android/gallery3d/data/ResImage;
    :cond_0
    iget-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v3
.end method

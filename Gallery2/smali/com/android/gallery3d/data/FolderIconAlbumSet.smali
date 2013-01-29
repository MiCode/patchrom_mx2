.class public Lcom/android/gallery3d/data/FolderIconAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "FolderIconAlbumSet.java"


# instance fields
.field private mAlbum:Lcom/android/gallery3d/data/FolderIconAlbum;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "path"
    .parameter "application"

    .prologue
    .line 10
    invoke-static {}, Lcom/android/gallery3d/data/FolderIconAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 11
    iput-object p2, p0, Lcom/android/gallery3d/data/FolderIconAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 12
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/data/FolderIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FolderIconAlbum;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 21
    iget-object v2, p0, Lcom/android/gallery3d/data/FolderIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FolderIconAlbum;

    if-nez v2, :cond_0

    .line 22
    const-string v1, "/icon/folder/0"

    .line 23
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/data/FolderIconAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 24
    .local v0, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/FolderIconAlbum;

    iput-object v2, p0, Lcom/android/gallery3d/data/FolderIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FolderIconAlbum;

    .line 25
    invoke-static {}, Lcom/android/gallery3d/data/FolderIconAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 27
    .end local v0           #dm:Lcom/android/gallery3d/data/DataManager;
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/FolderIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FolderIconAlbum;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FolderIconAlbum;->reload()J

    .line 28
    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v2
.end method

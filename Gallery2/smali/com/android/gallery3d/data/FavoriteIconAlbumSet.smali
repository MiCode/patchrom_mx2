.class public Lcom/android/gallery3d/data/FavoriteIconAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "FavoriteIconAlbumSet.java"


# instance fields
.field private mAlbum:Lcom/android/gallery3d/data/FavoriteIconAlbum;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mNotifierFavorite:Lcom/android/gallery3d/data/ChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "path"
    .parameter "application"

    .prologue
    .line 16
    invoke-static {}, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 17
    iput-object p2, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 18
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/meizu/video/client/db/VideoOnlineDataModel$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mNotifierFavorite:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 19
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FavoriteIconAlbum;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FavoriteIconAlbum;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reload()J
    .locals 6

    .prologue
    .line 28
    iget-object v4, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mNotifierFavorite:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 30
    new-instance v2, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    iget-object v4, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;-><init>(Landroid/content/Context;)V

    .line 31
    .local v2, fd:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-virtual {v2}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->getFavoriteShowImage()Ljava/util/ArrayList;

    move-result-object v1

    .line 32
    .local v1, favorite:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 33
    iget-object v4, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FavoriteIconAlbum;

    if-nez v4, :cond_0

    .line 34
    const-string v3, "/icon/favorite/0"

    .line 35
    .local v3, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 36
    .local v0, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/FavoriteIconAlbum;

    iput-object v4, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FavoriteIconAlbum;

    .line 42
    .end local v0           #dm:Lcom/android/gallery3d/data/DataManager;
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FavoriteIconAlbum;

    if-eqz v4, :cond_1

    .line 43
    iget-object v4, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FavoriteIconAlbum;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/FavoriteIconAlbum;->reload()J

    .line 46
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 49
    .end local v1           #favorite:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #fd:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    :cond_2
    iget-wide v4, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v4

    .line 39
    .restart local v1       #favorite:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #fd:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;->mAlbum:Lcom/android/gallery3d/data/FavoriteIconAlbum;

    goto :goto_0
.end method

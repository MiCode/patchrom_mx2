.class public Lcom/android/gallery3d/data/FavoriteIconAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "FavoriteIconAlbum.java"


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

.field private final mNotifierFavorite:Lcom/android/gallery3d/data/ChangeNotifier;

.field private mNum:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "path"
    .parameter "application"

    .prologue
    .line 19
    invoke-static {}, Lcom/android/gallery3d/data/FavoriteIconAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 20
    iput-object p2, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 21
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/meizu/video/client/db/VideoOnlineDataModel$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mNotifierFavorite:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 22
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    iget-object v1, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, fd:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->deleteFromFavorites(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I

    .line 82
    return-void
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
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mCovers:Ljava/util/ArrayList;

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
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mCovers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mNum:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mName:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public reload()J
    .locals 10

    .prologue
    .line 34
    iget-object v8, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mNotifierFavorite:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 35
    new-instance v8, Ljava/util/ArrayList;

    sget v9, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mCovers:Ljava/util/ArrayList;

    .line 36
    iget-object v8, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 42
    .local v0, dm:Lcom/android/gallery3d/data/DataManager;
    new-instance v2, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    iget-object v8, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;-><init>(Landroid/content/Context;)V

    .line 43
    .local v2, fd:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->queryFavoritesByCidAndVid(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I

    move-result v8

    iput v8, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mNum:I

    .line 44
    iget v8, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mNum:I

    if-lez v8, :cond_1

    .line 45
    invoke-virtual {v2}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->getFavoriteShowImage()Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    .local v1, favorite:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v8, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mNum:I

    if-ge v4, v8, :cond_1

    sget v8, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    if-ge v4, v8, :cond_1

    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    .local v3, filePath:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->fromFileName(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 49
    .local v7, uri:Landroid/net/Uri;
    const-string v8, "image/jpeg"

    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 50
    .local v6, path:Lcom/android/gallery3d/data/Path;
    if-eqz v6, :cond_0

    .line 51
    invoke-virtual {v0, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/UriImage;

    .line 52
    .local v5, image:Lcom/android/gallery3d/data/UriImage;
    iget-object v8, p0, Lcom/android/gallery3d/data/FavoriteIconAlbum;->mCovers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v5           #image:Lcom/android/gallery3d/data/UriImage;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    .end local v1           #favorite:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/data/FavoriteIconAlbum;->nextVersionNumber()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 59
    .end local v0           #dm:Lcom/android/gallery3d/data/DataManager;
    .end local v2           #fd:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    :cond_2
    iget-wide v8, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v8
.end method

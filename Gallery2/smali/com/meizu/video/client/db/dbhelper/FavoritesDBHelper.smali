.class public Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
.super Ljava/lang/Object;
.source "FavoritesDBHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "FavoritesDBHelper"

    iput-object v0, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->TAG:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    if-nez v0, :cond_0

    .line 47
    invoke-static {p1}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 51
    return-void
.end method

.method private createFavoriteEntityFromCursor(Landroid/database/Cursor;)Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 148
    new-instance v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    invoke-direct {v0}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;-><init>()V

    .line 150
    .local v0, favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setId(Ljava/lang/Integer;)V

    .line 151
    const-string v1, "vid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setVid(Ljava/lang/String;)V

    .line 152
    const-string v1, "cid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setCid(Ljava/lang/String;)V

    .line 154
    const-string v1, "chanelProgramName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 155
    const-string v1, "mediaDataType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 156
    const-string v1, "imageUrl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setImageUrl(Ljava/lang/String;)V

    .line 157
    const-string v1, "label1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setLabel1(Ljava/lang/String;)V

    .line 158
    const-string v1, "label2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setLabel2(Ljava/lang/String;)V

    .line 159
    const-string v1, "label3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setLabel3(Ljava/lang/String;)V

    .line 160
    const-string v1, "label4"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setLabel4(Ljava/lang/String;)V

    .line 162
    return-object v0
.end method


# virtual methods
.method public addToFavorites(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I
    .locals 5
    .parameter "favoriteEntity"

    .prologue
    .line 58
    const/4 v1, -0x1

    .line 59
    .local v1, result:I
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "vid"

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "cid"

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "mediaDataType"

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v3, "chanelProgramName"

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "imageUrl"

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "label1"

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "label2"

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "label3"

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "label4"

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel4()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/meizu/video/client/db/VideoOnlineDataModel$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 74
    .local v0, newUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-int v1, v3

    .line 82
    .end local v0           #newUri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v1

    .line 77
    :catchall_0
    move-exception v3

    throw v3

    .line 75
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->close()V

    .line 197
    return-void
.end method

.method public deleteFromFavorites(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I
    .locals 6
    .parameter "favoriteEntity"

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, iRet:I
    const/4 v2, 0x0

    .line 89
    .local v2, where:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vid =  \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/meizu/video/client/db/VideoOnlineDataModel$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, ex:Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllFavoritesList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/FavoriteEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v8, 0x0

    .line 126
    .local v8, favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    const/4 v6, 0x0

    .line 128
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/meizu/video/client/db/VideoOnlineDataModel$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "id desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 130
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v8           #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    .local v9, favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-direct {p0, v6}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->createFavoriteEntityFromCursor(Landroid/database/Cursor;)Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    move-result-object v7

    .line 133
    .local v7, favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    if-eqz v7, :cond_0

    .line 134
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 138
    .end local v7           #favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    :catch_0
    move-exception v0

    move-object v8, v9

    .line 140
    .end local v9           #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    .restart local v8       #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    :goto_1
    if-eqz v6, :cond_1

    .line 141
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return-object v8

    .line 140
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_2

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_2
    throw v0

    .end local v8           #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    .restart local v9       #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    :cond_3
    move-object v8, v9

    .end local v9           #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    .restart local v8       #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    :cond_4
    if-eqz v6, :cond_1

    goto :goto_2

    .end local v8           #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    .restart local v9       #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    .restart local v8       #favoriteListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    goto :goto_3

    .line 138
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getFavoriteShowImage()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v3, imageUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 174
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v4, sqlStr:Ljava/lang/StringBuilder;
    const-string v5, "select imageUrl from favorties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v5, " order by id desc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v5, " limit 0,3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v5, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v5}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 179
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 181
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Video/OnlineImageCache/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "imageUrl"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/meizu/video/client/util/CommonUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, imageUrl:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #imageUrl:Ljava/lang/String;
    .end local v4           #sqlStr:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    .line 188
    if-eqz v0, :cond_0

    .line 189
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_0
    return-object v3

    .line 188
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_1
    throw v5

    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #sqlStr:Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method public queryFavoritesByCidAndVid(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I
    .locals 6
    .parameter "favoriteEntity"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, count:I
    const/4 v1, 0x0

    .line 104
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v3, sqlStr:Ljava/lang/StringBuilder;
    const-string v4, "select count(*) from favorties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    if-eqz p1, :cond_0

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " where vid =  \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getCid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v4}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 110
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 113
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    :cond_1
    if-eqz v1, :cond_2

    .line 118
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #sqlStr:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_2
    return v0

    .line 117
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 118
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_3
    throw v4

    .line 115
    :catch_0
    move-exception v4

    .line 117
    if-eqz v1, :cond_2

    goto :goto_0
.end method

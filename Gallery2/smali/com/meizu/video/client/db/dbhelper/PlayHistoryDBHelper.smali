.class public Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;
.super Ljava/lang/Object;
.source "PlayHistoryDBHelper.java"


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
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "PlayHistoryDBHelper"

    iput-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->TAG:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    if-nez v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->close()V

    .line 111
    return-void
.end method

.method public getCurrentDetailPlayItemVid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cid"
    .parameter "vid"

    .prologue
    .line 84
    const-string v2, ""

    .line 86
    .local v2, itemVid:Ljava/lang/String;
    const/4 v0, 0x0

    .line 88
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v3, sqlStr:Ljava/lang/StringBuilder;
    const-string v4, "select itemVid from playHistory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " where cid =  \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v4, " order by id desc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v4, " limit 0,1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v4, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v4}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 94
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 96
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    const-string v4, "itemVid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 102
    :cond_0
    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #sqlStr:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-object v2

    .line 100
    :catch_0
    move-exception v4

    .line 102
    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method public insertOrUpdatePlayHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "cid"
    .parameter "vid"
    .parameter "itemVid"

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, result:I
    const/4 v0, 0x0

    .line 48
    .local v0, count:I
    const/4 v1, 0x0

    .line 50
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "cid"

    invoke-virtual {v6, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v8, "vid"

    invoke-virtual {v6, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v8, "itemVid"

    invoke-virtual {v6, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v5, sqlStr:Ljava/lang/StringBuilder;
    const-string v7, ""

    .line 57
    .local v7, whereClause:Ljava/lang/String;
    const-string v8, "select count(*) from playHistory"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vid =  \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " where "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v8, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mVideoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v8}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 61
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 67
    :cond_0
    if-lez v0, :cond_2

    .line 68
    iget-object v8, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/meizu/video/client/db/VideoOnlineDataModel$PlayHistory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v6, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 76
    :goto_0
    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 80
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #sqlStr:Ljava/lang/StringBuilder;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #whereClause:Ljava/lang/String;
    :cond_1
    :goto_1
    return v4

    .line 70
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #sqlStr:Ljava/lang/StringBuilder;
    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v7       #whereClause:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/meizu/video/client/db/VideoOnlineDataModel$PlayHistory;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 71
    .local v3, newUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    long-to-int v4, v8

    goto :goto_0

    .line 74
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #newUri:Landroid/net/Uri;
    .end local v5           #sqlStr:Ljava/lang/StringBuilder;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #whereClause:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 76
    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_3

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v8
.end method

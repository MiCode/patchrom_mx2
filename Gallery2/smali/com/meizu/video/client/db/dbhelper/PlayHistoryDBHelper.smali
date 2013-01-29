.class public Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;
.super Ljava/lang/Object;
.source "PlayHistoryDBHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private videoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "PlayHistoryDBHelper"

    iput-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->TAG:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->videoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    if-nez v0, :cond_0

    .line 48
    invoke-static {p1}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->videoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->videoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->close()V

    .line 120
    return-void
.end method

.method public getCurrentDetailPlayItemVid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cid"
    .parameter "vid"

    .prologue
    .line 93
    const-string v2, ""

    .line 95
    .local v2, itemVid:Ljava/lang/String;
    const/4 v0, 0x0

    .line 97
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v3, sqlStr:Ljava/lang/StringBuilder;
    const-string v4, "select itemVid from playHistory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
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

    .line 100
    const-string v4, " order by id desc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v4, " limit 0,1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v4, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->videoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v4}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 103
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 105
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    const-string v4, "itemVid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 111
    :cond_0
    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 115
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #sqlStr:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-object v2

    .line 109
    :catch_0
    move-exception v4

    .line 111
    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 112
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
    .line 55
    const/4 v4, 0x0

    .line 56
    .local v4, result:I
    const/4 v0, 0x0

    .line 57
    .local v0, count:I
    const/4 v1, 0x0

    .line 59
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "cid"

    invoke-virtual {v6, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v8, "vid"

    invoke-virtual {v6, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v8, "itemVid"

    invoke-virtual {v6, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v5, sqlStr:Ljava/lang/StringBuilder;
    const-string v7, ""

    .line 66
    .local v7, whereClause:Ljava/lang/String;
    const-string v8, "select count(*) from playHistory"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
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

    .line 68
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

    .line 69
    iget-object v8, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->videoOnlineDBHelper:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v8}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 70
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 76
    :cond_0
    if-lez v0, :cond_2

    .line 77
    iget-object v8, p0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/meizu/video/client/db/VideoOnlineDataModel$PlayHistory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v6, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 85
    :goto_0
    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 89
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #sqlStr:Ljava/lang/StringBuilder;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #whereClause:Ljava/lang/String;
    :cond_1
    :goto_1
    return v4

    .line 79
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

    .line 80
    .local v3, newUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    long-to-int v4, v8

    goto :goto_0

    .line 83
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #newUri:Landroid/net/Uri;
    .end local v5           #sqlStr:Ljava/lang/StringBuilder;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #whereClause:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 85
    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_3

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v8
.end method

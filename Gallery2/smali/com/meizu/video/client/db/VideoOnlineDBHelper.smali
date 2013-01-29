.class public Lcom/meizu/video/client/db/VideoOnlineDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VideoOnlineDBHelper.java"


# static fields
.field private static mInstance:Lcom/meizu/video/client/db/VideoOnlineDBHelper;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->mInstance:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "OnlineVideo.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    const-string v0, "VideoOnlineDBHelper"

    iput-object v0, p0, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private VideoOnlineDbUpgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->createPlayHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    return-void
.end method

.method private createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 54
    const-string v0, "create table if not exists favorties(id integer primary key, vid text, cid text, mediaDataType text, chanelProgramName text, imageUrl text, label1 text, label2 text, label3 text, label4 text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private createPlayHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 76
    const-string v0, "create table if not exists playHistory(id integer primary key, vid text, cid text, itemVid text )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/meizu/video/client/db/VideoOnlineDBHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    const-class v1, Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->mInstance:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->mInstance:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    .line 38
    :cond_0
    sget-object v0, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->mInstance:Lcom/meizu/video/client/db/VideoOnlineDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->mInstance:Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    invoke-virtual {v1}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 132
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 128
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 94
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->createPlayHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    throw v1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 115
    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    .line 116
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->VideoOnlineDbUpgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    throw v1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

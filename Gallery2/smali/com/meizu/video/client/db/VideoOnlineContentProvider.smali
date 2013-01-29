.class public Lcom/meizu/video/client/db/VideoOnlineContentProvider;
.super Landroid/content/ContentProvider;
.source "VideoOnlineContentProvider.java"


# static fields
.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 27
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "favorties"

    aput-object v2, v1, v3

    const-string v2, "playHistory"

    aput-object v2, v1, v4

    sput-object v1, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 38
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "com.meizu.onlinevideo"

    sget-object v2, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    const-string v1, "com.meizu.onlinevideo"

    sget-object v2, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 111
    sget-object v4, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 113
    .local v3, match:I
    const/4 v2, 0x0

    .line 115
    .local v2, exception:Ljava/lang/RuntimeException;
    packed-switch v3, :pswitch_data_0

    .line 121
    :goto_0
    if-eqz v2, :cond_0

    .line 122
    throw v2

    .line 117
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .end local v2           #exception:Ljava/lang/RuntimeException;
    const-string v4, "Unknown URL"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .restart local v2       #exception:Ljava/lang/RuntimeException;
    goto :goto_0

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 127
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v3, 0x14

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, count:I
    invoke-virtual {p0}, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 129
    return v0

    .line 115
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v8, 0x0

    .line 84
    iget-object v6, p0, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 88
    .local v2, match:I
    const/4 v1, 0x0

    .line 89
    .local v1, exception:Ljava/lang/RuntimeException;
    packed-switch v2, :pswitch_data_0

    .line 94
    :goto_0
    if-eqz v1, :cond_0

    .line 95
    throw v1

    .line 91
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1           #exception:Ljava/lang/RuntimeException;
    const-string v6, "Unknown URL"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .restart local v1       #exception:Ljava/lang/RuntimeException;
    goto :goto_0

    .line 98
    :cond_0
    const/4 v5, 0x0

    .line 99
    .local v5, rtUri:Landroid/net/Uri;
    const-wide/16 v3, 0x0

    .line 100
    .local v3, rowId:J
    sget-object v6, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v7, v2, 0x14

    aget-object v6, v6, v7

    invoke-virtual {v0, v6, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 101
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_1

    .line 102
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 103
    invoke-virtual {p0}, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 106
    :cond_1
    return-object v5

    .line 89
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/db/VideoOnlineDBHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/video/client/db/VideoOnlineDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 50
    sget-object v2, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 51
    .local v12, match:I
    const/4 v11, 0x0

    .line 53
    .local v11, exception:Ljava/lang/RuntimeException;
    packed-switch v12, :pswitch_data_0

    .line 59
    :goto_0
    if-eqz v11, :cond_0

    .line 60
    throw v11

    .line 55
    :pswitch_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .end local v11           #exception:Ljava/lang/RuntimeException;
    const-string v2, "Unknown URL"

    invoke-direct {v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .restart local v11       #exception:Ljava/lang/RuntimeException;
    goto :goto_0

    .line 62
    :cond_0
    const/4 v10, 0x0

    .line 63
    .local v10, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 65
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v13, whereClause:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 68
    const/16 v2, 0x28

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const/16 v2, 0x29

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    sget-object v2, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v3, v12, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 74
    return-object v10

    .line 53
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 134
    sget-object v4, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 136
    .local v3, match:I
    const/4 v2, 0x0

    .line 138
    .local v2, exception:Ljava/lang/RuntimeException;
    packed-switch v3, :pswitch_data_0

    .line 144
    :goto_0
    if-eqz v2, :cond_0

    .line 145
    throw v2

    .line 140
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .end local v2           #exception:Ljava/lang/RuntimeException;
    const-string v4, "Unknown URL"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .restart local v2       #exception:Ljava/lang/RuntimeException;
    goto :goto_0

    .line 148
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 150
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v3, 0x14

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, count:I
    invoke-virtual {p0}, Lcom/meizu/video/client/db/VideoOnlineContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 152
    return v0

    .line 138
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

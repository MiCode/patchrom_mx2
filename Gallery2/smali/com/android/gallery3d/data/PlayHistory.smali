.class public Lcom/android/gallery3d/data/PlayHistory;
.super Ljava/lang/Object;
.source "PlayHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;,
        Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;
    }
.end annotation


# static fields
.field private static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field private static final REMOVE_ORDER_BY:Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;


# instance fields
.field private final mDbHelper:Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    sget-object v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/PlayHistory;->TABLE_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "%s ASC"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "last_access"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/PlayHistory;->REMOVE_ORDER_BY:Ljava/lang/String;

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/data/PlayHistory;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/data/PlayHistory;->PROJECTION_ID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mInitialized:Z

    .line 51
    new-instance v0, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;-><init>(Lcom/android/gallery3d/data/PlayHistory;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mDbHelper:Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

    .line 52
    return-void
.end method

.method private declared-synchronized initialize()V
    .locals 10

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mDbHelper:Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/data/PlayHistory;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/data/PlayHistory;->PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 107
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 109
    .local v9, totalCount:I
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    .line 111
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 113
    const/16 v0, 0x32

    if-le v9, v0, :cond_2

    .line 114
    add-int/lit8 v0, v9, -0x32

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/PlayHistory;->removeSomeIfNeed(I)V

    .line 119
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 102
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #totalCount:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #totalCount:I
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized removeSomeIfNeed(I)V
    .locals 11
    .parameter "deleteCount"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mDbHelper:Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/data/PlayHistory;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/data/PlayHistory;->PROJECTION_ID:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/gallery3d/data/PlayHistory;->REMOVE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 127
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    if-lez p1, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    add-int/lit8 p1, p1, -0x1

    .line 129
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 130
    .local v9, id:J
    iget-object v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mDbHelper:Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/data/PlayHistory;->TABLE_NAME:Ljava/lang/String;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    .end local v9           #id:J
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    monitor-exit p0

    return-void
.end method

.method private updateLastAccess(J)J
    .locals 9
    .parameter "id"

    .prologue
    .line 93
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v2, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    .local v0, lastAccess:J
    const-string v3, "last_access"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    iget-object v3, p0, Lcom/android/gallery3d/data/PlayHistory;->mDbHelper:Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/android/gallery3d/data/PlayHistory;->TABLE_NAME:Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mDbHelper:Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;->close()V

    .line 140
    return-void
.end method

.method public lookup(Ljava/lang/String;)Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;
    .locals 10
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 71
    iget-boolean v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/data/PlayHistory;->initialize()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PlayHistory;->mDbHelper:Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/data/PlayHistory;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "path = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 76
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 89
    :goto_0
    return-object v5

    .line 80
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v9, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    invoke-direct {v9}, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;-><init>()V

    .line 82
    .local v9, entry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;
    sget-object v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, v8, v9}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    .line 83
    iget-wide v0, v9, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/data/PlayHistory;->updateLastAccess(J)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->lastAccess:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v5, v9

    goto :goto_0

    .end local v9           #entry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public store(Ljava/lang/String;IIII)V
    .locals 3
    .parameter "path"
    .parameter "position"
    .parameter "audioTrack"
    .parameter "textTrack"
    .parameter "quality"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/PlayHistory;->lookup(Ljava/lang/String;)Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    move-result-object v0

    .line 56
    .local v0, entry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;

    .end local v0           #entry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;
    invoke-direct {v0}, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;-><init>()V

    .line 58
    .restart local v0       #entry:Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;
    iput-object p1, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->path:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->lastAccess:J

    .line 61
    :cond_0
    iput p2, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->position:I

    .line 62
    iput p3, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->audioTrack:I

    .line 63
    iput p4, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->textTrack:I

    .line 64
    iput p5, v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->quality:I

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v2, p0, Lcom/android/gallery3d/data/PlayHistory;->mDbHelper:Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

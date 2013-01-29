.class public Lcom/android/gallery3d/data/CustomFolder;
.super Ljava/lang/Object;
.source "CustomFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/CustomFolder$DatabaseHelper;,
        Lcom/android/gallery3d/data/CustomFolder$FolderEntry;
    }
.end annotation


# static fields
.field private static final TABLE_NAME:Ljava/lang/String;


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/CustomFolder;->TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/gallery3d/data/CustomFolder$DatabaseHelper;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/CustomFolder$DatabaseHelper;-><init>(Lcom/android/gallery3d/data/CustomFolder;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/data/CustomFolder$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/CustomFolder;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-void
.end method


# virtual methods
.method public addFolder(Ljava/lang/String;I)V
    .locals 3
    .parameter "folder"
    .parameter "mediaType"

    .prologue
    .line 68
    new-instance v0, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;-><init>()V

    .line 69
    .local v0, entry:Lcom/android/gallery3d/data/CustomFolder$FolderEntry;
    iput-object p1, v0, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->directory:Ljava/lang/String;

    .line 70
    iput p2, v0, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->mediaType:I

    .line 71
    sget-object v1, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v2, p0, Lcom/android/gallery3d/data/CustomFolder;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 72
    return-void
.end method

.method public getAllFolders(I)Ljava/util/ArrayList;
    .locals 11
    .parameter "mediaType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/CustomFolder$FolderEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/CustomFolder;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/android/gallery3d/data/CustomFolder;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "media_type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 51
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 63
    :goto_0
    return-object v5

    .line 54
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v10, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/CustomFolder$FolderEntry;>;"
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v9, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;

    invoke-direct {v9}, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;-><init>()V

    .line 58
    .local v9, entry:Lcom/android/gallery3d/data/CustomFolder$FolderEntry;
    sget-object v0, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, v8, v9}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    .line 59
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 63
    .end local v9           #entry:Lcom/android/gallery3d/data/CustomFolder$FolderEntry;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v5, v10

    goto :goto_0
.end method

.method public removeFolder(Ljava/lang/String;I)V
    .locals 6
    .parameter "folder"
    .parameter "mediaType"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/CustomFolder;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/android/gallery3d/data/CustomFolder;->TABLE_NAME:Ljava/lang/String;

    const-string v2, "directory = ? AND media_type = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    return-void
.end method

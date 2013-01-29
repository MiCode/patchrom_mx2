.class public abstract Lcom/android/gallery3d/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final ENCRYPT_PROJECTON:[Ljava/lang/String;

.field private static final EXTERNAL_DIR:Ljava/lang/String;

.field private static final EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

.field private static final EXTERNAL_LEN:I

.field private static INDEX_ENCRYPT_COUNT:I

.field private static INDEX_ENCRYPT_PATH:I

.field public static sAppGlobalLocked:Z

.field public static sLockStateVersion:J

.field public static sSystemGlobalLocked:Z

.field private static sVersionSerial:J


# instance fields
.field protected mDataVersion:J

.field protected mLockState:I

.field protected mLockStateVersion:J

.field protected final mPath:Lcom/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    sput-boolean v2, Lcom/android/gallery3d/data/MediaObject;->sSystemGlobalLocked:Z

    .line 37
    sput-boolean v3, Lcom/android/gallery3d/data/MediaObject;->sAppGlobalLocked:Z

    .line 38
    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v0

    sput-wide v0, Lcom/android/gallery3d/data/MediaObject;->sLockStateVersion:J

    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/MediaObject;->EXTERNAL_DIR:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/data/MediaObject;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/MediaObject;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/android/gallery3d/data/MediaObject;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/gallery3d/data/MediaObject;->EXTERNAL_LEN:I

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "path"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/data/MediaObject;->ENCRYPT_PROJECTON:[Ljava/lang/String;

    .line 57
    sput v2, Lcom/android/gallery3d/data/MediaObject;->INDEX_ENCRYPT_PATH:I

    .line 59
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/data/MediaObject;->COUNT_PROJECTION:[Ljava/lang/String;

    .line 60
    sput v2, Lcom/android/gallery3d/data/MediaObject;->INDEX_ENCRYPT_COUNT:I

    .line 103
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/gallery3d/data/MediaObject;->sVersionSerial:J

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 2
    .parameter "path"
    .parameter "version"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/MediaObject;->mLockState:I

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    .line 110
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/data/Path;->setObject(Lcom/android/gallery3d/data/MediaObject;)V

    .line 111
    iput-object p1, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    .line 112
    iput-wide p2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 113
    return-void
.end method

.method public static getDirLockState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;ZZI)I
    .locals 9
    .parameter "resolver"
    .parameter "dir"
    .parameter
    .parameter "isImage"
    .parameter "noSubSet"
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)I"
        }
    .end annotation

    .prologue
    .local p2, lockedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v8, 0x2f

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 266
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 268
    if-nez p5, :cond_1

    move v1, v4

    .line 318
    :cond_0
    :goto_0
    return v1

    .line 272
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/android/gallery3d/data/MediaObject;->EXTERNAL_LEN:I

    if-le v5, v6, :cond_2

    sget-object v5, Lcom/android/gallery3d/data/MediaObject;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move v1, v4

    .line 273
    goto :goto_0

    .line 276
    :cond_3
    sget v5, Lcom/android/gallery3d/data/MediaObject;->EXTERNAL_LEN:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_5

    :cond_4
    move v1, v4

    .line 278
    goto :goto_0

    .line 281
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_6

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    :cond_6
    const/4 v1, 0x0

    .line 287
    .local v1, lockState:I
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_7

    .line 288
    const-string v3, "path = ?"

    .line 289
    .local v3, where:Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 290
    .local v0, args:[Ljava/lang/String;
    invoke-static {p0, v3, v0}, Lcom/android/gallery3d/data/MediaObject;->hasEncryptedFile(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 291
    or-int/lit8 v1, v1, 0x1

    .line 295
    .end local v0           #args:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :cond_7
    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_8

    .line 296
    const-string v3, "path LIKE ?"

    .line 298
    .restart local v3       #where:Ljava/lang/String;
    if-eqz p4, :cond_9

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND path NOT LIKE ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 304
    .restart local v0       #args:[Ljava/lang/String;
    :goto_1
    invoke-static {p0, v3, v0, p2, p3}, Lcom/android/gallery3d/data/MediaObject;->hasEncryptedFile(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 305
    or-int/lit8 v1, v1, 0x2

    .line 309
    .end local v0           #args:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :cond_8
    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_0

    .line 310
    const-string v3, "path LIKE \"%/\" AND ? LIKE (path||\"%\")"

    .line 312
    .restart local v3       #where:Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 313
    .restart local v0       #args:[Ljava/lang/String;
    invoke-static {p0, v3, v0}, Lcom/android/gallery3d/data/MediaObject;->hasEncryptedFile(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    or-int/lit8 v1, v1, 0x4

    goto/16 :goto_0

    .line 302
    .end local v0           #args:[Ljava/lang/String;
    :cond_9
    new-array v0, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .restart local v0       #args:[Ljava/lang/String;
    goto :goto_1
.end method

.method public static getTypeFromString(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 185
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 188
    :goto_0
    return v0

    .line 186
    :cond_0
    const-string v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 187
    :cond_1
    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 188
    :cond_2
    const-string v0, "image_record"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    goto :goto_0

    .line 189
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hasEncryptedFile(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "resolver"
    .parameter "where"
    .parameter "args"

    .prologue
    const/4 v8, 0x0

    .line 211
    sget-object v1, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/MediaObject;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 224
    :goto_0
    return v8

    .line 216
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    sget v0, Lcom/android/gallery3d/data/MediaObject;->INDEX_ENCRYPT_COUNT:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 222
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_0

    :cond_1
    move v0, v8

    .line 217
    goto :goto_1

    .line 222
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 219
    :catch_0
    move-exception v7

    .line 220
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static hasEncryptedFile(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Z)Z
    .locals 10
    .parameter "resolver"
    .parameter "where"
    .parameter "args"
    .parameter
    .parameter "isImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p3, lockedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 239
    sget-object v1, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/MediaObject;->ENCRYPT_PROJECTON:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 240
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 262
    :goto_0
    return v9

    .line 244
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    sget v0, Lcom/android/gallery3d/data/MediaObject;->INDEX_ENCRYPT_PATH:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, path:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/data/MediaObject;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 248
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 249
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 257
    .end local v8           #path:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 258
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 262
    .end local v7           #e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    move v9, v0

    goto :goto_0

    .line 251
    .restart local v8       #path:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-static {v8, p4}, Lcom/android/gallery3d/data/MediaObject;->isMediaFile(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 260
    .end local v8           #path:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_3
    move v0, v9

    .line 262
    goto :goto_3
.end method

.method public static final isLockEnabled()Z
    .locals 1

    .prologue
    .line 322
    sget-boolean v0, Lcom/android/gallery3d/data/MediaObject;->sSystemGlobalLocked:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/gallery3d/data/MediaObject;->sAppGlobalLocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaFile(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "path"
    .parameter "isImage"

    .prologue
    .line 228
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 229
    .local v0, type:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 233
    :goto_0
    return v1

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    .line 231
    iget v1, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    goto :goto_0

    .line 233
    :cond_1
    iget v1, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    .prologue
    .line 181
    const-class v1, Lcom/android/gallery3d/data/MediaObject;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/android/gallery3d/data/MediaObject;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/gallery3d/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Import()Z
    .locals 1

    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cache(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public copyTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "srcDir"
    .parameter "dstDir"
    .parameter "prefix"

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheFlag()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheStatus()I
    .locals 1

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDataVersion()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails;

    invoke-direct {v0}, Lcom/android/gallery3d/data/MediaDetails;-><init>()V

    .line 157
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    return-object v0
.end method

.method public getLockState()I
    .locals 4

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    sget-wide v2, Lcom/android/gallery3d/data/MediaObject;->sLockStateVersion:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/MediaObject;->mLockState:I

    goto :goto_0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Lcom/android/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public moveTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "srcDir"
    .parameter "dstDir"
    .parameter "prefix"

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLockState(I)V
    .locals 0
    .parameter "lockState"

    .prologue
    .line 203
    iput p1, p0, Lcom/android/gallery3d/data/MediaObject;->mLockState:I

    .line 204
    return-void
.end method

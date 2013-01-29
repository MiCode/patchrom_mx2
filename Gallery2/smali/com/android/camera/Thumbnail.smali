.class public Lcom/android/camera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Thumbnail$Media;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    .line 61
    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 62
    invoke-static {p2, p3}, Lcom/android/camera/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method

.method public static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;
    .locals 2
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    const-string v0, "Thumbnail"

    const-string v1, "Failed to create thumbnail from null bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/Thumbnail;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public static createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;
    .locals 4
    .parameter "jpeg"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"

    .prologue
    .line 291
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 292
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 293
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p3, v0, p1}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v2

    return-object v2
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .parameter "targetWidth"

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 310
    .local v4, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 311
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 315
    :goto_0
    const-wide/16 v8, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 322
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 327
    :goto_1
    if-nez v0, :cond_1

    const/4 v8, 0x0

    .line 343
    :goto_2
    return-object v8

    .line 313
    :cond_0
    :try_start_2
    invoke-virtual {v4, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 316
    :catch_0
    move-exception v8

    .line 322
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 323
    :catch_1
    move-exception v8

    goto :goto_1

    .line 318
    :catch_2
    move-exception v8

    .line 322
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 323
    :catch_3
    move-exception v8

    goto :goto_1

    .line 321
    :catchall_0
    move-exception v8

    .line 322
    :try_start_5
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 325
    :goto_3
    throw v8

    .line 330
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 331
    .local v7, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 332
    .local v3, height:I
    if-le v7, p2, :cond_2

    .line 333
    int-to-float v8, p2

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 334
    .local v5, scale:F
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 335
    .local v6, w:I
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 337
    .local v2, h:I
    const/4 v8, 0x1

    :try_start_6
    invoke-static {v0, v6, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v0

    .end local v2           #h:I
    .end local v5           #scale:F
    .end local v6           #w:I
    :cond_2
    :goto_4
    move-object v8, v0

    .line 343
    goto :goto_2

    .line 338
    .restart local v2       #h:I
    .restart local v5       #scale:F
    .restart local v6       #w:I
    :catch_4
    move-exception v1

    .line 340
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    goto :goto_4

    .line 323
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    .end local v2           #h:I
    .end local v3           #height:I
    .end local v5           #scale:F
    .end local v6           #w:I
    .end local v7           #width:I
    :catch_5
    move-exception v8

    goto :goto_1

    :catch_6
    move-exception v9

    goto :goto_3
.end method

.method private static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 15
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 237
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 239
    .local v13, baseUri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v9, "1"

    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 240
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "orientation"

    aput-object v0, v2, v11

    const-string v0, "datetaken"

    aput-object v0, v2, v12

    .line 242
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/camera/Storage;->CAMERA_BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 246
    .local v5, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 248
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 249
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 251
    .local v7, id:J
    new-instance v6, Lcom/android/camera/Thumbnail$Media;

    const/4 v0, 0x1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    if-eqz v14, :cond_0

    .line 256
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 259
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 255
    :cond_1
    if-eqz v14, :cond_0

    .line 256
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_2

    .line 256
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;)I
    .locals 11
    .parameter "resolver"
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v2

    .line 191
    .local v2, image:Lcom/android/camera/Thumbnail$Media;
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v4

    .line 192
    .local v4, video:Lcom/android/camera/Thumbnail$Media;
    if-nez v2, :cond_0

    if-nez v4, :cond_0

    .line 219
    :goto_0
    return v5

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_1

    .line 200
    iget-wide v7, v2, Lcom/android/camera/Thumbnail$Media;->id:J

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {p0, v7, v8, v9, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    move-object v3, v2

    .line 211
    .local v3, lastMedia:Lcom/android/camera/Thumbnail$Media;
    :goto_1
    if-eqz v3, :cond_3

    iget-object v7, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v7, p0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 212
    const/4 v7, 0x0

    iget-object v8, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v9, v3, Lcom/android/camera/Thumbnail$Media;->orientation:I

    invoke-static {v8, v0, v9}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v8

    aput-object v8, p1, v7

    move v5, v6

    .line 214
    goto :goto_0

    .line 203
    .end local v3           #lastMedia:Lcom/android/camera/Thumbnail$Media;
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v7

    if-ne v7, v6, :cond_2

    if-eqz v4, :cond_2

    .line 204
    iget-wide v7, v4, Lcom/android/camera/Thumbnail$Media;->id:J

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {p0, v7, v8, v9, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    move-object v3, v4

    .restart local v3       #lastMedia:Lcom/android/camera/Thumbnail$Media;
    goto :goto_1

    .line 208
    .end local v3           #lastMedia:Lcom/android/camera/Thumbnail$Media;
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #lastMedia:Lcom/android/camera/Thumbnail$Media;
    goto :goto_1

    .line 216
    .end local v3           #lastMedia:Lcom/android/camera/Thumbnail$Media;
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/OutOfMemoryError;
    goto :goto_0

    .line 219
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v3       #lastMedia:Lcom/android/camera/Thumbnail$Media;
    :cond_3
    const/4 v5, 0x2

    goto :goto_0
.end method

.method public static getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;
    .locals 16
    .parameter "filesDir"
    .parameter "resolver"

    .prologue
    .line 141
    const/4 v9, 0x0

    .line 142
    .local v9, file:Ljava/io/File;
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v12

    if-nez v12, :cond_2

    .line 143
    new-instance v9, Ljava/io/File;

    .end local v9           #file:Ljava/io/File;
    const-string v12, "last_thumb_camera"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .restart local v9       #file:Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v9, :cond_3

    .line 148
    const/4 v10, 0x0

    .line 181
    :cond_1
    :goto_1
    return-object v10

    .line 144
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 145
    new-instance v9, Ljava/io/File;

    .end local v9           #file:Ljava/io/File;
    const-string v12, "last_thumb_video"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v9       #file:Ljava/io/File;
    goto :goto_0

    .line 150
    :cond_3
    const/4 v11, 0x0

    .line 151
    .local v11, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 152
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 153
    .local v7, f:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 154
    .local v1, b:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 155
    .local v4, d:Ljava/io/DataInputStream;
    sget-object v13, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v13

    .line 157
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    .end local v7           #f:Ljava/io/FileInputStream;
    .local v8, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v12, 0x1000

    invoke-direct {v2, v8, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 159
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .local v2, b:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 160
    .end local v4           #d:Ljava/io/DataInputStream;
    .local v5, d:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 161
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 162
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    .line 163
    const/4 v10, 0x0

    .line 174
    :try_start_4
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 175
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 176
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 178
    :catchall_0
    move-exception v12

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v12

    .line 165
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :cond_4
    :try_start_6
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 166
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4

    .line 174
    :try_start_7
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 175
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 176
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 178
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 179
    const/4 v12, 0x0

    invoke-static {v11, v3, v12}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v10

    .line 180
    .local v10, thumbnail:Lcom/android/camera/Thumbnail;
    if-eqz v10, :cond_1

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/camera/Thumbnail;->setFromFile(Z)V

    goto :goto_1

    .line 167
    .end local v2           #b:Ljava/io/BufferedInputStream;
    .end local v5           #d:Ljava/io/DataInputStream;
    .end local v8           #f:Ljava/io/FileInputStream;
    .end local v10           #thumbnail:Lcom/android/camera/Thumbnail;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    .line 168
    .local v6, e:Ljava/io/IOException;
    :goto_3
    :try_start_8
    const-string v12, "Thumbnail"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to load bitmap. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 169
    const/4 v10, 0x0

    .line 174
    :try_start_9
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 175
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 176
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 178
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v12

    goto :goto_2

    .line 170
    :catch_1
    move-exception v6

    .line 171
    .local v6, e:Ljava/lang/OutOfMemoryError;
    :goto_4
    :try_start_a
    const-string v12, "Thumbnail"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OutOfMemoryError. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 172
    const/4 v10, 0x0

    .line 174
    :try_start_b
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 175
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 176
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v13

    goto/16 :goto_1

    .line 174
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :catchall_2
    move-exception v12

    :goto_5
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 175
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 176
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 174
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v12

    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v12

    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v12

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_5

    .line 170
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_4

    .line 167
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 15
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 263
    sget-object v13, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 265
    .local v13, baseUri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v9, "1"

    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 266
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "_data"

    aput-object v0, v2, v11

    const-string v0, "datetaken"

    aput-object v0, v2, v12

    .line 268
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/camera/Storage;->VIDEO_BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 271
    .local v5, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 273
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 274
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastVideoThumbnail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 277
    .local v7, id:J
    new-instance v6, Lcom/android/camera/Thumbnail$Media;

    const/4 v9, 0x0

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    if-eqz v14, :cond_0

    .line 282
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 285
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 281
    :cond_1
    if-eqz v14, :cond_0

    .line 282
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_2

    .line 282
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/high16 v3, 0x3f00

    .line 82
    if-eqz p1, :cond_1

    .line 84
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 89
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 93
    .local v7, rotated:Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotated:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v7

    .line 95
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 96
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "Thumbnail"

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_1
    move-object v7, p0

    .line 99
    goto :goto_0
.end method


# virtual methods
.method public fromFile()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public saveLastThumbnailToFile(Ljava/io/File;)V
    .locals 1
    .parameter "filesDir"

    .prologue
    .line 104
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;I)V

    .line 105
    return-void
.end method

.method public saveLastThumbnailToFile(Ljava/io/File;I)V
    .locals 12
    .parameter "filesDir"
    .parameter "mode"

    .prologue
    .line 108
    const/4 v7, 0x0

    .line 109
    .local v7, file:Ljava/io/File;
    if-nez p2, :cond_1

    .line 110
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    const-string v8, "last_thumb_camera"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .restart local v7       #file:Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v7, :cond_2

    .line 136
    :goto_1
    return-void

    .line 111
    :cond_1
    const/4 v8, 0x1

    if-ne p2, v8, :cond_0

    .line 112
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    const-string v8, "last_thumb_video"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v7       #file:Ljava/io/File;
    goto :goto_0

    .line 117
    :cond_2
    const/4 v5, 0x0

    .line 118
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 119
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 120
    .local v2, d:Ljava/io/DataOutputStream;
    sget-object v9, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 122
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v8, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 126
    iget-object v8, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v8, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 127
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 131
    :try_start_4
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 135
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_3
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 128
    :catch_0
    move-exception v4

    .line 129
    .local v4, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v8, "Thumbnail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to store bitmap. path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 131
    :try_start_7
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 131
    .end local v4           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v8

    :goto_5
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 135
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 131
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v8

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v8

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v8

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 128
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public setFromFile(Z)V
    .locals 0
    .parameter "fromFile"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    .line 75
    return-void
.end method

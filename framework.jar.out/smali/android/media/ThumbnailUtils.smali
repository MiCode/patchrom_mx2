.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$1;,
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4000

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 517
    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 393
    if-nez p0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 327
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 328
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 330
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 332
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 336
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 347
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 330
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 332
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 341
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 343
    goto :goto_2

    .line 344
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 347
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 309
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 313
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 314
    const/4 v1, 0x1

    .line 315
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 316
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 322
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .parameter "kind"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createImageThumbnail(Ljava/lang/String;I[I)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "filePath"
    .parameter "kind"
    .parameter "res"

    .prologue
    .line 99
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    const/4 v11, 0x1

    .line 100
    .local v11, wantMini:Z
    :goto_0
    if-eqz v11, :cond_4

    const/16 v10, 0x140

    .line 103
    .local v10, targetSize:I
    :goto_1
    if-eqz v11, :cond_5

    const/high16 v7, 0x3

    .line 106
    .local v7, maxPixels:I
    :goto_2
    new-instance v9, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .line 107
    .local v9, sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v1, 0x0

    .line 108
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v4

    .line 109
    .local v4, fileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v4, :cond_0

    iget v12, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v13, 0x1f

    if-ne v12, v13, :cond_0

    .line 110
    move-object/from16 v0, p2

    invoke-static {p0, v10, v7, v9, v0}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;[I)V

    .line 111
    iget-object v1, v9, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    :cond_0
    if-nez v1, :cond_8

    .line 115
    const/4 v5, 0x0

    .line 117
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 120
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    const/4 v12, 0x1

    :try_start_1
    iput v12, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 121
    const/4 v12, 0x1

    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 123
    const/4 v12, 0x0

    invoke-static {v6, v12, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 124
    iget-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v12, :cond_1

    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    .line 126
    :cond_1
    const/4 v12, 0x0

    .line 153
    if-eqz v6, :cond_2

    .line 155
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    .end local v6           #is:Ljava/io/FileInputStream;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_3
    return-object v12

    .line 99
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #fileType:Landroid/media/MediaFile$MediaFileType;
    .end local v7           #maxPixels:I
    .end local v9           #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .end local v10           #targetSize:I
    .end local v11           #wantMini:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 100
    .restart local v11       #wantMini:Z
    :cond_4
    const/16 v10, 0x60

    goto :goto_1

    .line 103
    .restart local v10       #targetSize:I
    :cond_5
    const/16 v7, 0x4000

    goto :goto_2

    .line 156
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #fileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v7       #maxPixels:I
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v9       #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    :catch_0
    move-exception v2

    .line 157
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 128
    .end local v2           #e:Ljava/io/IOException;
    :cond_6
    if-eqz p2, :cond_7

    :try_start_3
    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v13, 0x2

    if-lt v12, v13, :cond_7

    .line 129
    const/4 v12, 0x0

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v13, p2, v12

    .line 130
    const/4 v12, 0x1

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v13, p2, v12

    .line 133
    :cond_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->markSupported()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 134
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/io/FileInputStream;->mark(I)V

    .line 135
    invoke-virtual {v6}, Ljava/io/FileInputStream;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v5, v6

    .line 142
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :goto_4
    :try_start_4
    invoke-static {v8, v10, v7}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v12

    iput v12, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 144
    const/4 v12, 0x0

    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 146
    const/4 v12, 0x0

    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 147
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v12, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 149
    const/4 v12, 0x0

    invoke-static {v5, v12, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    .line 153
    if-eqz v5, :cond_8

    .line 155
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 163
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_8
    :goto_5
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_9

    .line 165
    const/16 v12, 0x60

    const/16 v13, 0x60

    const/4 v14, 0x2

    invoke-static {v1, v12, v13, v14}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_9
    move-object v12, v1

    .line 169
    goto :goto_3

    .line 138
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_a
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 139
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_4

    .line 156
    :catch_1
    move-exception v2

    .line 157
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 150
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v3

    .line 151
    .local v3, ex:Ljava/io/IOException;
    :goto_6
    :try_start_7
    const-string v12, "ThumbnailUtils"

    const-string v13, ""

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 153
    if-eqz v5, :cond_8

    .line 155
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    .line 156
    :catch_3
    move-exception v2

    .line 157
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 153
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v5, :cond_b

    .line 155
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 158
    :cond_b
    :goto_8
    throw v12

    .line 156
    :catch_4
    move-exception v2

    .line 157
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 153
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_7

    .line 150
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;[I)V
    .locals 13
    .parameter "filePath"
    .parameter "targetSize"
    .parameter "maxPixels"
    .parameter "sizedThumbBitmap"
    .parameter "res"

    .prologue
    .line 531
    if-nez p0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const/4 v2, 0x0

    .line 534
    .local v2, exif:Landroid/media/ExifInterface;
    const/4 v9, 0x0

    .line 536
    .local v9, thumbData:[B
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    if-eqz v3, :cond_2

    .line 538
    :try_start_1
    invoke-virtual {v3}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    :cond_2
    move-object v2, v3

    .line 544
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_1
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 545
    .local v6, fullOptions:Landroid/graphics/BitmapFactory$Options;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 546
    .local v4, exifOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    .line 547
    .local v5, exifThumbWidth:I
    const/4 v7, 0x0

    .line 550
    .local v7, fullThumbWidth:I
    if-eqz v9, :cond_3

    .line 551
    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 552
    const/4 v11, 0x0

    array-length v12, v9

    invoke-static {v9, v11, v12, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 553
    invoke-static {v4, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v11

    iput v11, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 554
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v11, v12

    .line 558
    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 559
    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 560
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    array-length v11, v0

    const/4 v12, 0x2

    if-lt v11, v12, :cond_4

    .line 561
    const/4 v11, 0x0

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v12, p4, v11

    .line 562
    const/4 v11, 0x1

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v12, p4, v11

    .line 564
    :cond_4
    invoke-static {v6, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v11

    iput v11, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 565
    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v7, v11, v12

    .line 568
    if-eqz v9, :cond_5

    if-lt v5, v7, :cond_5

    .line 569
    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 570
    .local v10, width:I
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 571
    .local v8, height:I
    const/4 v11, 0x0

    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 572
    const/4 v11, 0x0

    array-length v12, v9

    invoke-static {v9, v11, v12, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p3

    iput-object v11, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 574
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    .line 575
    move-object/from16 v0, p3

    iput-object v9, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 576
    move-object/from16 v0, p3

    iput v10, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 577
    move-object/from16 v0, p3

    iput v8, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    goto :goto_0

    .line 540
    .end local v4           #exifOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #exifThumbWidth:I
    .end local v6           #fullOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #fullThumbWidth:I
    .end local v8           #height:I
    .end local v10           #width:I
    :catch_0
    move-exception v1

    .line 541
    .local v1, ex:Ljava/io/IOException;
    :goto_2
    const-string v11, "ThumbnailUtils"

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 580
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #exifOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #exifThumbWidth:I
    .restart local v6       #fullOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v7       #fullThumbWidth:I
    :cond_5
    const/4 v11, 0x0

    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 581
    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p3

    iput-object v11, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 540
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v4           #exifOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #exifThumbWidth:I
    .end local v6           #fullOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #fullThumbWidth:I
    .restart local v3       #exif:Landroid/media/ExifInterface;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/16 v11, 0x60

    const/4 v10, 0x1

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 211
    .local v4, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 212
    const-wide/16 v8, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 221
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 227
    :goto_0
    if-nez v0, :cond_0

    const/4 v8, 0x0

    .line 246
    :goto_1
    return-object v8

    .line 213
    :catch_0
    move-exception v8

    .line 221
    :try_start_2
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 222
    :catch_1
    move-exception v8

    goto :goto_0

    .line 215
    :catch_2
    move-exception v8

    .line 221
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 222
    :catch_3
    move-exception v8

    goto :goto_0

    .line 217
    :catch_4
    move-exception v8

    .line 221
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_0

    .line 222
    :catch_5
    move-exception v8

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v8

    .line 221
    :try_start_5
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7

    .line 224
    :goto_2
    throw v8

    .line 229
    :cond_0
    if-ne p1, v10, :cond_2

    .line 231
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 232
    .local v7, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 233
    .local v2, height:I
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 234
    .local v3, max:I
    const/16 v8, 0x200

    if-le v3, v8, :cond_1

    .line 235
    const/high16 v8, 0x4400

    int-to-float v9, v3

    div-float v5, v8, v9

    .line 236
    .local v5, scale:F
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 237
    .local v6, w:I
    int-to-float v8, v2

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 238
    .local v1, h:I
    invoke-static {v0, v6, v1, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1           #h:I
    .end local v2           #height:I
    .end local v3           #max:I
    .end local v5           #scale:F
    .end local v6           #w:I
    .end local v7           #width:I
    :cond_1
    :goto_3
    move-object v8, v0

    .line 246
    goto :goto_1

    .line 240
    :cond_2
    const/4 v8, 0x3

    if-ne p1, v8, :cond_1

    .line 241
    const/4 v8, 0x2

    invoke-static {v0, v11, v11, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 222
    :catch_6
    move-exception v8

    goto :goto_0

    :catch_7
    move-exception v9

    goto :goto_2
.end method

.method public static createVideoThumbnailPassException(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/16 v4, 0x60

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 178
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 179
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 186
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 191
    :goto_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 192
    const/4 v2, 0x2

    invoke-static {v0, v4, v4, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    :cond_0
    return-object v0

    .line 180
    :catch_0
    move-exception v2

    .line 186
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 187
    :catch_1
    move-exception v2

    goto :goto_0

    .line 182
    :catch_2
    move-exception v2

    .line 186
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 187
    :catch_3
    move-exception v2

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v2

    .line 186
    :try_start_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 189
    :goto_1
    throw v2

    .line 187
    :catch_4
    move-exception v2

    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_1
.end method

.method public static cropFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v5, 0x1

    .line 585
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 586
    :cond_0
    const-string v5, "ThumbnailUtil"

    const-string v6, "cropFromBitmap : invalid param"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v1, 0x0

    .line 602
    :goto_0
    return-object v1

    .line 590
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 591
    .local v4, width:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 593
    .local v2, height:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 594
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 595
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 596
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 598
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 599
    .local v1, croppedImage:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 600
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, p1, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "source"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    .line 271
    if-nez p0, :cond_0

    .line 272
    const/4 v2, 0x0

    .line 285
    :goto_0
    return-object v2

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 277
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 281
    .local v1, scale:F
    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 282
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 283
    or-int/lit8 v3, p3, 0x1

    invoke-static {v0, p0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 285
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 279
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #scale:F
    .end local v2           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .restart local v1       #scale:F
    goto :goto_1
.end method

.method public static getOrientFromInputStream(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 734
    const/4 v2, 0x0

    .line 735
    .local v2, ret:I
    const/4 v1, 0x0

    .line 737
    .local v1, ipStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 742
    if-nez v1, :cond_0

    .line 743
    const-string v4, "ThumbnailUtils"

    const-string v5, "getOrientFromInputStream ipStream  null "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 752
    .end local v2           #ret:I
    .local v3, ret:I
    :goto_0
    return v3

    .line 738
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :catch_0
    move-exception v0

    .line 739
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "ThumbnailUtils"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 740
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 746
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_0
    invoke-static {v1}, Landroid/media/ThumbnailUtils;->getOrientFromInputStream(Ljava/io/InputStream;)I

    move-result v2

    .line 748
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v3, v2

    .line 752
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 749
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :catch_1
    move-exception v0

    .line 750
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ThumbnailUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOrientFromInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getOrientFromInputStream(Ljava/io/InputStream;)I
    .locals 15
    .parameter "ipStream"

    .prologue
    const/4 v14, 0x6

    const/4 v13, 0x4

    const/4 v12, 0x2

    .line 606
    const/4 v7, 0x0

    .line 607
    .local v7, orient:I
    if-nez p0, :cond_0

    move v8, v7

    .line 730
    .end local v7           #orient:I
    .local v8, orient:I
    :goto_0
    return v8

    .line 610
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_0
    new-array v2, v14, [B

    .line 614
    .local v2, headerData:[B
    const/4 v10, 0x0

    const/4 v11, 0x4

    :try_start_0
    invoke-virtual {p0, v2, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v13, :cond_1

    move v8, v7

    .line 615
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto :goto_0

    .line 617
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_1
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    const/16 v11, -0x28

    if-ne v10, v11, :cond_2

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x3

    aget-byte v10, v2, v10

    const/16 v11, -0x1f

    if-eq v10, v11, :cond_3

    :cond_2
    move v8, v7

    .line 618
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto :goto_0

    .line 621
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v2, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v12, v10, :cond_4

    move v8, v7

    .line 622
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto :goto_0

    .line 623
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_4
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    add-int v4, v10, v11

    .line 627
    .local v4, length:I
    const/16 v10, 0x8

    if-ge v4, v10, :cond_5

    move v8, v7

    .line 628
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto :goto_0

    .line 629
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_5
    add-int/lit8 v4, v4, -0x8

    .line 631
    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {p0, v2, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v14, v10, :cond_6

    move v8, v7

    .line 632
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto :goto_0

    .line 635
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_6
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    const/16 v11, 0x45

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_7

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    const/16 v11, 0x69

    if-ne v10, v11, :cond_7

    const/4 v10, 0x3

    aget-byte v10, v2, v10

    const/16 v11, 0x66

    if-ne v10, v11, :cond_7

    const/4 v10, 0x4

    aget-byte v10, v2, v10

    if-nez v10, :cond_7

    const/4 v10, 0x5

    aget-byte v10, v2, v10

    if-eqz v10, :cond_8

    :cond_7
    move v8, v7

    .line 636
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto :goto_0

    .line 638
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_8
    new-array v1, v4, [B

    .line 641
    .local v1, exifData:[B
    const/16 v10, 0xc

    if-lt v4, v10, :cond_9

    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v4, v10, :cond_a

    :cond_9
    move v8, v7

    .line 642
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 647
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_a
    const/4 v10, 0x0

    aget-byte v10, v1, v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_c

    const/4 v10, 0x1

    aget-byte v10, v1, v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_c

    .line 648
    const/4 v3, 0x0

    .line 656
    .local v3, is_motorola:Z
    :goto_1
    if-eqz v3, :cond_e

    .line 657
    const/4 v10, 0x2

    aget-byte v10, v1, v10

    if-nez v10, :cond_b

    const/4 v10, 0x3

    aget-byte v10, v1, v10

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_10

    :cond_b
    move v8, v7

    .line 658
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 649
    .end local v3           #is_motorola:Z
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_c
    const/4 v10, 0x0

    aget-byte v10, v1, v10

    const/16 v11, 0x4d

    if-ne v10, v11, :cond_d

    const/4 v10, 0x1

    aget-byte v10, v1, v10

    const/16 v11, 0x4d

    if-ne v10, v11, :cond_d

    .line 650
    const/4 v3, 0x1

    .restart local v3       #is_motorola:Z
    goto :goto_1

    .end local v3           #is_motorola:Z
    :cond_d
    move v8, v7

    .line 652
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 660
    .end local v8           #orient:I
    .restart local v3       #is_motorola:Z
    .restart local v7       #orient:I
    :cond_e
    const/4 v10, 0x3

    aget-byte v10, v1, v10

    if-nez v10, :cond_f

    const/4 v10, 0x2

    aget-byte v10, v1, v10

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_10

    :cond_f
    move v8, v7

    .line 661
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 667
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_10
    if-eqz v3, :cond_13

    .line 668
    const/4 v10, 0x4

    aget-byte v10, v1, v10

    if-nez v10, :cond_11

    const/4 v10, 0x5

    aget-byte v10, v1, v10

    if-eqz v10, :cond_12

    :cond_11
    move v8, v7

    .line 669
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 670
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_12
    const/4 v10, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x7

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    .line 677
    .local v6, offset:I
    :goto_2
    add-int/lit8 v10, v4, -0x2

    if-le v6, v10, :cond_16

    move v8, v7

    .line 678
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 672
    .end local v6           #offset:I
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_13
    const/4 v10, 0x7

    aget-byte v10, v1, v10

    if-nez v10, :cond_14

    const/4 v10, 0x6

    aget-byte v10, v1, v10

    if-eqz v10, :cond_15

    :cond_14
    move v8, v7

    .line 673
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 674
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_15
    const/4 v10, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x4

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    .restart local v6       #offset:I
    goto :goto_2

    .line 682
    :cond_16
    if-eqz v3, :cond_17

    .line 683
    aget-byte v10, v1, v6

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    add-int v5, v10, v11

    .line 688
    .local v5, number_of_tags:I
    :goto_3
    if-nez v5, :cond_18

    move v8, v7

    .line 689
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 685
    .end local v5           #number_of_tags:I
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_17
    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    aget-byte v11, v1, v6

    and-int/lit16 v11, v11, 0xff

    add-int v5, v10, v11

    .restart local v5       #number_of_tags:I
    goto :goto_3

    .line 691
    :cond_18
    add-int/lit8 v6, v6, 0x2

    .line 695
    :goto_4
    add-int/lit8 v10, v4, -0xc

    if-le v6, v10, :cond_19

    move v8, v7

    .line 696
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 699
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_19
    if-eqz v3, :cond_1a

    .line 700
    aget-byte v10, v1, v6

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    add-int v9, v10, v11

    .line 705
    .local v9, tagnum:I
    :goto_5
    const/16 v10, 0x112

    if-ne v9, v10, :cond_1b

    .line 715
    if-eqz v3, :cond_1e

    .line 716
    add-int/lit8 v10, v6, 0x8

    aget-byte v10, v1, v10

    if-eqz v10, :cond_1d

    move v8, v7

    .line 717
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 702
    .end local v8           #orient:I
    .end local v9           #tagnum:I
    .restart local v7       #orient:I
    :cond_1a
    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    aget-byte v11, v1, v6

    and-int/lit16 v11, v11, 0xff

    add-int v9, v10, v11

    .restart local v9       #tagnum:I
    goto :goto_5

    .line 708
    :cond_1b
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_1c

    move v8, v7

    .line 709
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 710
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_1c
    add-int/lit8 v6, v6, 0xc

    goto :goto_4

    .line 718
    :cond_1d
    add-int/lit8 v10, v6, 0x9

    aget-byte v10, v1, v10

    and-int/lit16 v7, v10, 0xff

    .end local v1           #exifData:[B
    .end local v3           #is_motorola:Z
    .end local v4           #length:I
    .end local v5           #number_of_tags:I
    .end local v6           #offset:I
    .end local v9           #tagnum:I
    :goto_6
    move v8, v7

    .line 730
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 720
    .end local v8           #orient:I
    .restart local v1       #exifData:[B
    .restart local v3       #is_motorola:Z
    .restart local v4       #length:I
    .restart local v5       #number_of_tags:I
    .restart local v6       #offset:I
    .restart local v7       #orient:I
    .restart local v9       #tagnum:I
    :cond_1e
    add-int/lit8 v10, v6, 0x9

    aget-byte v10, v1, v10

    if-eqz v10, :cond_1f

    move v8, v7

    .line 721
    .end local v7           #orient:I
    .restart local v8       #orient:I
    goto/16 :goto_0

    .line 722
    .end local v8           #orient:I
    .restart local v7       #orient:I
    :cond_1f
    add-int/lit8 v10, v6, 0x8

    aget-byte v10, v1, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v7, v10, 0xff

    goto :goto_6

    .line 725
    .end local v1           #exifData:[B
    .end local v3           #is_motorola:Z
    .end local v4           #length:I
    .end local v5           #number_of_tags:I
    .end local v6           #offset:I
    .end local v9           #tagnum:I
    :catch_0
    move-exception v0

    .line 726
    .local v0, e:Ljava/io/IOException;
    const-string v10, "ThumbnailUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOrientFromInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 727
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 728
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "ThumbnailUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOrientFromInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "uri"
    .parameter "cr"
    .parameter "pfd"
    .parameter "options"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 365
    :cond_0
    if-nez p4, :cond_1

    .line 387
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 389
    :goto_0
    return-object v4

    .line 366
    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    .line 368
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p5
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 369
    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v5, 0x1

    iput v5, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 370
    const/4 v5, 0x1

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 371
    const/4 v5, 0x0

    invoke-static {v2, v5, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 372
    iget-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_3

    iget v5, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v6, :cond_3

    iget v5, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v5, v6, :cond_4

    .line 387
    :cond_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 376
    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 378
    const/4 v5, 0x0

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 380
    const/4 v5, 0x0

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 381
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 382
    const/4 v5, 0x0

    invoke-static {v2, v5, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 387
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 389
    goto :goto_0

    .line 383
    .end local v2           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 384
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v5, "ThumbnailUtils"

    const-string v6, "Got oom exception "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 404
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 406
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 30
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "options"

    .prologue
    .line 418
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    const/16 v27, 0x1

    .line 419
    .local v27, scaleUp:Z
    :goto_0
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_4

    const/16 v25, 0x1

    .line 421
    .local v25, recycle:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 422
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 423
    .local v18, deltaY:I
    if-nez v27, :cond_5

    if-ltz v16, :cond_0

    if-gez v18, :cond_5

    .line 430
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 432
    .local v11, b2:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 434
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 435
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 436
    .local v19, deltaYHalf:I
    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 441
    .local v28, src:Landroid/graphics/Rect;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 442
    .local v21, dstX:I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 443
    .local v22, dstY:I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 448
    .local v20, dst:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 449
    if-eqz v25, :cond_1

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 452
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 506
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v17           #deltaXHalf:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v21           #dstX:I
    .end local v22           #dstY:I
    .end local v28           #src:Landroid/graphics/Rect;
    :cond_2
    :goto_2
    return-object v11

    .line 418
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v16           #deltaX:I
    .end local v18           #deltaY:I
    .end local v25           #recycle:Z
    .end local v27           #scaleUp:Z
    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 419
    .restart local v27       #scaleUp:Z
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 455
    .restart local v16       #deltaX:I
    .restart local v18       #deltaY:I
    .restart local v25       #recycle:Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 456
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 458
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 459
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v29, v3, v4

    .line 461
    .local v29, viewAspect:F
    cmpl-float v3, v12, v29

    if-lez v3, :cond_a

    .line 462
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v26, v3, v13

    .line 463
    .local v26, scale:F
    const v3, 0x3f666666

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x3f80

    cmpl-float v3, v26, v3

    if-lez v3, :cond_9

    .line 464
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 478
    :goto_3
    if-eqz p0, :cond_d

    .line 480
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 486
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v25, :cond_7

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_7

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 490
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 491
    .local v23, dx1:I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 493
    .local v24, dy1:I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 500
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_2

    .line 501
    if-nez v25, :cond_8

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_2

    .line 502
    :cond_8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 466
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v23           #dx1:I
    .end local v24           #dy1:I
    :cond_9
    const/16 p0, 0x0

    goto :goto_3

    .line 469
    .end local v26           #scale:F
    :cond_a
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v26, v3, v14

    .line 470
    .restart local v26       #scale:F
    const v3, 0x3f666666

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_b

    const/high16 v3, 0x3f80

    cmpl-float v3, v26, v3

    if-lez v3, :cond_c

    .line 471
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_3

    .line 473
    :cond_c
    const/16 p0, 0x0

    goto :goto_3

    .line 483
    :cond_d
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto :goto_4
.end method

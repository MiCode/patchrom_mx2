.class public Lcom/android/gallery3d/photoeditor/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final IMAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/photoeditor/BitmapUtils;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/BitmapUtils;->context:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 64
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "m"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private decodeBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 114
    const/4 v5, 0x0

    .line 115
    .local v5, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 119
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->getBitmapBounds(Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v2

    .line 120
    .local v2, bounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int v11, v11, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int v12, v12, p3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 121
    .local v8, sampleSize:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int v11, v11, p3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int v12, v12, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 124
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 128
    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 130
    const/4 v11, 0x0

    :try_start_1
    invoke-static {v5, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 137
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 141
    .end local v2           #bounds:Landroid/graphics/Rect;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #sampleSize:I
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v11, v12, :cond_0

    .line 142
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 143
    .local v3, copy:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    move-object v1, v3

    .line 147
    .end local v3           #copy:Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v1, :cond_1

    .line 149
    move/from16 v0, p2

    int-to-float v11, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    move/from16 v0, p3

    int-to-float v12, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 151
    .local v9, scale:F
    move/from16 v0, p3

    int-to-float v11, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    move/from16 v0, p2

    int-to-float v12, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 153
    const/high16 v11, 0x3f80

    cmpg-float v11, v9, v11

    if-gez v11, :cond_1

    .line 154
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 155
    .local v6, m:Landroid/graphics/Matrix;
    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 156
    invoke-static {v1, v6}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 157
    .local v10, transformed:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    .end local v6           #m:Landroid/graphics/Matrix;
    .end local v9           #scale:F
    .end local v10           #transformed:Landroid/graphics/Bitmap;
    :goto_2
    return-object v10

    .line 131
    .restart local v2       #bounds:Landroid/graphics/Rect;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #sampleSize:I
    :catch_0
    move-exception v4

    .line 132
    .local v4, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v11, "BitmapUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "outOfMemory error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 134
    .end local v2           #bounds:Landroid/graphics/Rect;
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #sampleSize:I
    :catch_1
    move-exception v4

    .line 135
    .local v4, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v11, "BitmapUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    invoke-direct {p0, v5}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    invoke-direct {p0, v5}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    throw v11

    :cond_1
    move-object v10, v1

    .line 161
    goto :goto_2
.end method

.method private getBitmapBounds(Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 5
    .parameter "uri"

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 76
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 77
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 78
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 81
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 82
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 89
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    throw v4
.end method

.method private getOrientation(Landroid/net/Uri;)I
    .locals 8
    .parameter "uri"

    .prologue
    .line 93
    const/4 v7, 0x0

    .line 94
    .local v7, orientation:I
    const/4 v6, 0x0

    .line 96
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/photoeditor/BitmapUtils;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 103
    :cond_0
    if-eqz v6, :cond_1

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_1
    :goto_0
    return v7

    .line 100
    :catch_0
    move-exception v0

    .line 103
    if-eqz v6, :cond_1

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public getBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->decodeBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->getOrientation(Landroid/net/Uri;)I

    move-result v2

    .line 173
    .local v2, orientation:I
    if-eqz v2, :cond_0

    .line 174
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 175
    .local v1, m:Landroid/graphics/Matrix;
    int-to-float v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 176
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 177
    .local v3, transformed:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    .end local v1           #m:Landroid/graphics/Matrix;
    .end local v2           #orientation:I
    .end local v3           #transformed:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .locals 7
    .parameter "bitmap"
    .parameter "directory"
    .parameter "filename"
    .parameter "format"

    .prologue
    .line 190
    if-nez p2, :cond_1

    .line 191
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    .line 199
    :cond_0
    const/4 v1, 0x0

    .line 200
    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 203
    .local v3, os:Ljava/io/OutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p4, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 204
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    const/16 v5, 0x5a

    :try_start_2
    invoke-virtual {p1, p4, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    invoke-direct {p0, v4}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    move-object v1, v2

    .line 212
    .end local v2           #file:Ljava/io/File;
    .end local v3           #os:Ljava/io/OutputStream;
    :goto_1
    return-object v1

    .line 194
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    const/4 v1, 0x0

    goto :goto_1

    .line 203
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #os:Ljava/io/OutputStream;
    :cond_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p3

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    invoke-direct {p0, v3}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_3

    .end local v1           #file:Ljava/io/File;
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_3

    .line 207
    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_2

    .end local v1           #file:Ljava/io/File;
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_2
.end method

.class public Lcom/android/gallery3d/common/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 285
    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2
    .parameter "bitmap"
    .parameter "quality"

    .prologue
    .line 289
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 290
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 291
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static computeInitialSampleSize(IIII)I
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 73
    if-ne p3, v4, :cond_1

    if-ne p2, v4, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    if-ne p3, v4, :cond_2

    .line 79
    .local v0, lowerBound:I
    :goto_1
    if-eq p2, v4, :cond_0

    .line 82
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 83
    .local v1, sampleSize:I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 76
    .end local v0           #lowerBound:I
    .end local v1           #sampleSize:I
    :cond_2
    mul-int v2, p0, p1

    int-to-float v2, v2

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    goto :goto_1
.end method

.method public static computeSampleSize(F)I
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v2, 0x1

    .line 111
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 112
    const/high16 v1, 0x3f80

    div-float/2addr v1, p0

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 113
    .local v0, initialSize:I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_1
    return v1

    .line 111
    .end local v0           #initialSize:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    .restart local v0       #initialSize:I
    :cond_1
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_1
.end method

.method public static computeSampleSize(IIII)I
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/common/BitmapUtils;->computeInitialSampleSize(IIII)I

    move-result v0

    .line 66
    .local v0, initialSize:I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x1

    .line 101
    const/high16 v2, 0x3f80

    div-float/2addr v2, p0

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v0, v2

    .line 102
    .local v0, initialSize:I
    if-gt v0, v1, :cond_0

    .line 104
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"

    .prologue
    const/4 v1, 0x1

    .line 91
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 92
    .local v0, initialSize:I
    if-gt v0, v1, :cond_0

    .line 94
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x0

    .line 236
    const/4 v2, 0x0

    .line 238
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_e

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 275
    if-eqz v1, :cond_0

    .line 276
    :try_start_1
    const-string v3, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    throw v0

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_20

    :cond_0
    :goto_0
    move-object v0, v1

    .line 281
    :cond_1
    :goto_1
    return-object v0

    .line 242
    :cond_2
    :try_start_2
    const-string v0, "android.media.MediaMetadataRetriever"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_e

    move-result-object v3

    .line 243
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_11

    move-result-object v2

    .line 245
    :try_start_4
    const-string v0, "setDataSource"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 246
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-gt v0, v4, :cond_3

    .line 250
    const-string v0, "captureFrame"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1c
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_12

    .line 275
    if-eqz v2, :cond_1

    .line 276
    :try_start_5
    const-string v1, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 278
    :catch_0
    move-exception v1

    goto :goto_1

    .line 252
    :cond_3
    :try_start_6
    const-string v0, "getEmbeddedPicture"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 253
    if-eqz v0, :cond_4

    .line 254
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1c
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_12

    move-result-object v0

    .line 255
    if-eqz v0, :cond_4

    .line 275
    if-eqz v2, :cond_1

    .line 276
    :try_start_7
    const-string v1, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 278
    :catch_1
    move-exception v1

    goto :goto_1

    .line 257
    :cond_4
    :try_start_8
    const-string v0, "getFrameAtTime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_12

    .line 275
    if-eqz v2, :cond_1

    .line 276
    :try_start_9
    const-string v1, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 278
    :catch_2
    move-exception v1

    goto/16 :goto_1

    .line 259
    :catch_3
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 275
    :goto_2
    if-eqz v0, :cond_5

    .line 276
    :try_start_a
    const-string v3, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1d

    :cond_5
    :goto_3
    move-object v0, v1

    .line 281
    goto/16 :goto_1

    .line 261
    :catch_4
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 275
    :goto_4
    if-eqz v2, :cond_5

    .line 276
    :try_start_b
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_3

    .line 278
    :catch_5
    move-exception v0

    goto :goto_3

    .line 263
    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 264
    :goto_5
    :try_start_c
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 275
    if-eqz v2, :cond_5

    .line 276
    :try_start_d
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_3

    .line 278
    :catch_7
    move-exception v0

    goto :goto_3

    .line 265
    :catch_8
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 266
    :goto_6
    :try_start_e
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 275
    if-eqz v2, :cond_5

    .line 276
    :try_start_f
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_3

    .line 278
    :catch_9
    move-exception v0

    goto :goto_3

    .line 267
    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 268
    :goto_7
    :try_start_10
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 275
    if-eqz v2, :cond_5

    .line 276
    :try_start_11
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_3

    .line 278
    :catch_b
    move-exception v0

    goto :goto_3

    .line 269
    :catch_c
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 270
    :goto_8
    :try_start_12
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 275
    if-eqz v2, :cond_5

    .line 276
    :try_start_13
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    goto/16 :goto_3

    .line 278
    :catch_d
    move-exception v0

    goto/16 :goto_3

    .line 271
    :catch_e
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 272
    :goto_9
    :try_start_14
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 275
    if-eqz v2, :cond_5

    .line 276
    :try_start_15
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    goto/16 :goto_3

    .line 278
    :catch_f
    move-exception v0

    goto/16 :goto_3

    .line 274
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 275
    :goto_a
    if-eqz v2, :cond_6

    .line 276
    :try_start_16
    const-string v1, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10

    .line 279
    :cond_6
    :goto_b
    throw v0

    .line 278
    :catch_10
    move-exception v1

    goto :goto_b

    .line 274
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    .line 271
    :catch_11
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_12
    move-exception v0

    goto :goto_9

    .line 269
    :catch_13
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_14
    move-exception v0

    goto :goto_8

    .line 267
    :catch_15
    move-exception v0

    move-object v2, v1

    goto/16 :goto_7

    :catch_16
    move-exception v0

    goto/16 :goto_7

    .line 265
    :catch_17
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catch_18
    move-exception v0

    goto/16 :goto_6

    .line 263
    :catch_19
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catch_1a
    move-exception v0

    goto/16 :goto_5

    .line 261
    :catch_1b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    :catch_1c
    move-exception v0

    goto/16 :goto_4

    .line 278
    :catch_1d
    move-exception v0

    goto/16 :goto_3

    .line 259
    :catch_1e
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_2

    :catch_1f
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_2

    .line 278
    :catch_20
    move-exception v0

    goto/16 :goto_0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 135
    .local v0, config:Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 136
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 138
    :cond_0
    return-object v0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 302
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    .line 303
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 304
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 295
    if-nez p0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 297
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "image/gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tiff"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resizeAndCropBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "bitmap"
    .parameter "maxLength"
    .parameter "recycle"

    .prologue
    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 174
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 175
    .local v5, height:I
    move/from16 v0, p1

    if-ne v13, v0, :cond_0

    move/from16 v0, p1

    if-ne v5, v0, :cond_0

    .line 202
    .end local p0
    :goto_0
    return-object p0

    .line 177
    .restart local p0
    :cond_0
    move v12, v13

    .line 178
    .local v12, w:I
    move v4, v5

    .line 180
    .local v4, h:I
    int-to-float v14, v12

    int-to-float v15, v4

    div-float v7, v14, v15

    .line 181
    .local v7, ratio:F
    const v14, 0x3fcccccd

    cmpl-float v14, v7, v14

    if-lez v14, :cond_3

    .line 182
    int-to-float v14, v4

    const v15, 0x3fcccccd

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 187
    :cond_1
    :goto_1
    move/from16 v0, p1

    int-to-float v14, v0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    div-float v8, v14, v15

    .line 189
    .local v8, scale:F
    int-to-float v14, v12

    mul-float/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 190
    .local v10, sw:I
    int-to-float v14, v4

    mul-float/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 192
    .local v9, sh:I
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v10, v9, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 194
    .local v11, target:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    .local v1, canvas:Landroid/graphics/Canvas;
    int-to-float v14, v13

    mul-float/2addr v14, v8

    int-to-float v15, v10

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    neg-int v2, v14

    .line 196
    .local v2, dx:I
    int-to-float v14, v5

    mul-float/2addr v14, v8

    int-to-float v15, v9

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    neg-int v3, v14

    .line 197
    .local v3, dy:I
    int-to-float v14, v2

    int-to-float v15, v3

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    invoke-virtual {v1, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 199
    new-instance v6, Landroid/graphics/Paint;

    const/4 v14, 0x6

    invoke-direct {v6, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 200
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v14, v15, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    if-eqz p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object/from16 p0, v11

    .line 202
    goto :goto_0

    .line 183
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #dx:I
    .end local v3           #dy:I
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v8           #scale:F
    .end local v9           #sh:I
    .end local v10           #sw:I
    .end local v11           #target:Landroid/graphics/Bitmap;
    :cond_3
    const/high16 v14, 0x3f20

    cmpg-float v14, v7, v14

    if-gez v14, :cond_1

    .line 184
    int-to-float v14, v12

    const v15, 0x3fcccccd

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_1
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "scale"
    .parameter "recycle"

    .prologue
    const/4 v6, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 121
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 122
    .local v1, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 130
    .end local p0
    :goto_0
    return-object p0

    .line 124
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 125
    .local v3, target:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 127
    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 128
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v3

    .line 130
    goto :goto_0
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "maxLength"
    .parameter "recycle"

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 144
    .local v2, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 145
    .local v1, srcHeight:I
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 147
    .local v0, scale:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 148
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "source"
    .parameter "rotation"
    .parameter "recycle"

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 229
    .end local p0
    :goto_0
    return-object p0

    .line 216
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 217
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 218
    .local v4, h:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 220
    .local v5, m:Landroid/graphics/Matrix;
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    .line 221
    const/high16 v0, 0x42b4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 222
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 223
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    move-object v11, v5

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 228
    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v6

    .line 229
    goto :goto_0

    .line 225
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 226
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    move-object v7, p0

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

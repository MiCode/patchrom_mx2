.class public Lcom/android/gallery3d/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final IS_DEBUG_BUILD:Z

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 44
    new-array v6, v10, [J

    sput-object v6, Lcom/android/gallery3d/common/Utils;->sCrcTable:[J

    .line 46
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "userdebug"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/android/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_4

    .line 155
    int-to-long v2, v0

    .line 156
    .local v2, part:J
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    const/16 v6, 0x8

    if-ge v1, v6, :cond_3

    .line 157
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const-wide v4, -0x6a536cd653b4364bL

    .line 158
    .local v4, x:J
    :goto_3
    shr-long v8, v2, v7

    xor-long v2, v8, v4

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 46
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #part:J
    .end local v4           #x:J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 157
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #part:J
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 160
    :cond_3
    sget-object v6, Lcom/android/gallery3d/common/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    .end local v1           #j:I
    .end local v2           #part:J
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method public static ceilLog2(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 198
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-ltz v1, :cond_1

    .line 200
    :cond_0
    return v0

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_0
    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 116
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 118
    .end local p2
    :goto_0
    return p2

    .line 117
    .restart local p2
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 118
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 109
    if-le p0, p2, :cond_0

    .line 111
    .end local p2
    :goto_0
    return p2

    .line 110
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 111
    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 123
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    .line 125
    .end local p4
    :goto_0
    return-wide p4

    .line 124
    .restart local p4
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    move-wide p4, p2

    goto :goto_0

    :cond_1
    move-wide p4, p0

    .line 125
    goto :goto_0
.end method

.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 221
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 213
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 183
    if-nez p0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 192
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .locals 2
    .parameter "in"

    .prologue
    .line 145
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    const-wide/16 v0, 0x0

    .line 148
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final crc64Long([B)J
    .locals 8
    .parameter "buffer"

    .prologue
    .line 165
    const-wide/16 v0, -0x1

    .line 166
    .local v0, crc:J
    const/4 v2, 0x0

    .local v2, k:I
    array-length v3, p0

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 167
    sget-object v4, Lcom/android/gallery3d/common/Utils;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-wide v0
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "value"

    .prologue
    .line 246
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 81
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0
    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .restart local p0
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static fitRectFInto(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 9
    .parameter "src"
    .parameter "dst"
    .parameter "out"

    .prologue
    const/4 v8, 0x0

    .line 351
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 355
    .local v5, srcWidth:F
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 356
    .local v4, srcHeight:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 357
    .local v1, dstWidth:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 359
    .local v0, dstHeight:F
    const/4 v3, 0x0

    .line 360
    .local v3, retWidth:F
    const/4 v2, 0x0

    .line 361
    .local v2, retHeight:F
    cmpl-float v6, v5, v8

    if-lez v6, :cond_0

    cmpl-float v6, v4, v8

    if-lez v6, :cond_0

    cmpl-float v6, v1, v8

    if-lez v6, :cond_0

    cmpl-float v6, v0, v8

    if-lez v6, :cond_0

    .line 363
    mul-float v6, v5, v0

    mul-float v7, v4, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 364
    mul-float v6, v5, v0

    div-float v3, v6, v4

    .line 365
    move v2, v0

    .line 371
    :goto_1
    invoke-virtual {p2, v8, v8, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 367
    :cond_2
    mul-float v6, v4, v1

    div-float v2, v6, v5

    .line 368
    move v3, v1

    goto :goto_1
.end method

.method public static fitRectInto(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .parameter "src"
    .parameter "dst"
    .parameter "out"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 388
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v5, v6

    .line 392
    .local v5, srcWidth:F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v4, v6

    .line 393
    .local v4, srcHeight:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v1, v6

    .line 394
    .local v1, dstWidth:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v0, v6

    .line 396
    .local v0, dstHeight:F
    const/4 v3, 0x0

    .line 397
    .local v3, retWidth:F
    const/4 v2, 0x0

    .line 398
    .local v2, retHeight:F
    cmpl-float v6, v5, v7

    if-lez v6, :cond_0

    cmpl-float v6, v4, v7

    if-lez v6, :cond_0

    cmpl-float v6, v1, v7

    if-lez v6, :cond_0

    cmpl-float v6, v0, v7

    if-lez v6, :cond_0

    .line 400
    mul-float v6, v5, v0

    mul-float v7, v4, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 401
    mul-float v6, v5, v0

    div-float v3, v6, v4

    .line 402
    move v2, v0

    .line 408
    :goto_1
    float-to-int v6, v3

    float-to-int v7, v2

    invoke-virtual {p2, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 404
    :cond_2
    mul-float v6, v4, v1

    div-float v2, v6, v5

    .line 405
    move v3, v1

    goto :goto_1
.end method

.method public static floorLog2(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 206
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_1

    .line 208
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 174
    .local v6, result:[B
    const/4 v4, 0x0

    .line 175
    .local v4, output:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #output:I
    .local v5, output:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 176
    .local v1, ch:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #output:I
    .restart local v4       #output:I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 177
    add-int/lit8 v5, v4, 0x1

    .end local v4           #output:I
    .restart local v5       #output:I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v1           #ch:C
    :cond_0
    return-object v6
.end method

.method public static getFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 413
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 414
    .local v0, dot:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 415
    .local v1, pathLength:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 416
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 418
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTime(J)Ljava/lang/String;
    .locals 13
    .parameter "seconds"

    .prologue
    .line 422
    move-wide v0, p0

    .line 426
    .local v0, duration:J
    const-wide/16 v9, 0xe10

    div-long v3, v0, v9

    .line 427
    .local v3, hour:J
    const-wide/16 v9, 0xe10

    rem-long/2addr v0, v9

    .line 428
    const-wide/16 v9, 0x3c

    div-long v5, v0, v9

    .line 429
    .local v5, minute:J
    const-wide/16 v9, 0x3c

    rem-long/2addr v0, v9

    .line 430
    move-wide v7, v0

    .line 432
    .local v7, second:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-eqz v9, :cond_0

    .line 433
    const-string v9, "%d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, durationString:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 435
    .end local v2           #durationString:Ljava/lang/String;
    :cond_0
    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #durationString:Ljava/lang/String;
    goto :goto_0
.end method

.method public static isFileNameLegal(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 442
    if-nez p0, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 446
    :goto_0
    return v0

    :cond_0
    const-string v0, "[^|\\/:?*\"<>]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isOpaque(I)Z
    .locals 2
    .parameter "color"

    .prologue
    .line 129
    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "info"

    .prologue
    .line 339
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 342
    :cond_0
    :goto_0
    return-object v1

    .line 340
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 342
    .local v0, length:I
    sget-boolean v2, Lcom/android/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    if-nez v2, :cond_0

    const-string v2, "********************************"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 89
    if-lez p0, :cond_0

    const/high16 v0, 0x4000

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 90
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 91
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 92
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 93
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 94
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 95
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 96
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 103
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static swap([III)V
    .locals 2
    .parameter "array"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 133
    aget v0, p0, p1

    .line 134
    .local v0, temp:I
    aget v1, p0, p2

    aput v1, p0, p1

    .line 135
    aput v0, p0, p2

    .line 136
    return-void
.end method

.method public static truncateString(Ljava/lang/String;FFLandroid/text/TextUtils$TruncateAt;)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "textSize"
    .parameter "freeSpace"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 376
    if-eqz p0, :cond_1

    move-object v1, p0

    .line 377
    .local v1, resultStr:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 378
    .local v0, paint:Landroid/text/TextPaint;
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 379
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 380
    cmpg-float v3, p1, v4

    if-lez v3, :cond_0

    cmpg-float v3, p2, v4

    if-gtz v3, :cond_2

    :cond_0
    move-object v2, v1

    .line 384
    .end local v1           #resultStr:Ljava/lang/String;
    .local v2, resultStr:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 376
    .end local v0           #paint:Landroid/text/TextPaint;
    .end local v2           #resultStr:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 383
    .restart local v0       #paint:Landroid/text/TextPaint;
    .restart local v1       #resultStr:Ljava/lang/String;
    :cond_2
    invoke-static {v1, v0, p2, p3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 384
    .end local v1           #resultStr:Ljava/lang/String;
    .restart local v2       #resultStr:Ljava/lang/String;
    goto :goto_1
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 273
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected interrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class public Lcom/android/gallery3d/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# static fields
.field public static ACTIONBAR_HEIGHT:I

.field public static BOTTOMBAR_HEIGHT:I

.field public static CROP_BOTTOMBAR_HEIGHT:I

.field public static HAS_PERMANENT_MENU_KEY:Z

.field public static HUDVIEW_HEIGHT:I

.field public static INFOBAR_COUNT_SIZE:I

.field public static INFOBAR_HEIGHT:I

.field public static INFOBAR_TITLE_SIZE:I

.field public static STATUS_BAR_HEIGHT:I

.field public static TOPBAR_HEIGHT:I

.field public static VIDEO_INFO_SIZE:I

.field public static VIDEO_STRING_INTERVAL1:I

.field public static VIDEO_STRING_INTERVAL2:I

.field public static VIDEO_TITLE_SIZE:I

.field private static sAppBrightness:I

.field private static sCameraAvailableInitialized:Z

.field private static sCommonValueInited:Z

.field private static volatile sCurrentThread:Ljava/lang/Thread;

.field private static sHasInitBrightness:Z

.field private static sPixelDensity:F

.field private static sSystemBrightness:I

.field private static volatile sWarned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const/high16 v0, -0x4080

    sput v0, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    .line 93
    sput-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    .line 121
    sput-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->sCommonValueInited:Z

    .line 125
    sput-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->sHasInitBrightness:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accurateDistanceMeters(DDDD)D
    .locals 14
    .parameter "lat1"
    .parameter "lng1"
    .parameter "lat2"
    .parameter "lng2"

    .prologue
    .line 207
    const-wide/high16 v6, 0x3fe0

    sub-double v8, p4, p0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 208
    .local v0, dlat:D
    const-wide/high16 v6, 0x3fe0

    sub-double v8, p6, p2

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 209
    .local v2, dlng:D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 210
    .local v4, x:D
    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x415849c600000000L

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public static assertNotInRenderThread()V
    .locals 3

    .prologue
    .line 171
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->sWarned:Z

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->sWarned:Z

    .line 174
    const-string v0, "GalleryUtils"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Should not do this in render thread"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_0
    return-void
.end method

.method public static determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, typeBits:I
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, type:Ljava/lang/String;
    const-string v2, "*/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    const/4 v1, 0x3

    .line 365
    :goto_0
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    or-int/lit8 v1, v1, 0x8

    .line 369
    :cond_0
    return v1

    .line 355
    :cond_1
    const-string v2, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 358
    :cond_3
    const-string v2, "video/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 360
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 362
    :cond_5
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static dpToPixel(F)F
    .locals 1
    .parameter "dp"

    .prologue
    .line 138
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpToPixel(I)I
    .locals 1
    .parameter "dp"

    .prologue
    .line 142
    int-to-float v0, p0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static fastDistanceMeters(DDDD)D
    .locals 12
    .parameter "latRad1"
    .parameter "lngRad1"
    .parameter "latRad2"
    .parameter "lngRad2"

    .prologue
    .line 184
    sub-double v8, p0, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    sub-double v8, p2, p6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 186
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/android/gallery3d/util/GalleryUtils;->accurateDistanceMeters(DDDD)D

    move-result-wide v8

    .line 202
    :goto_0
    return-wide v8

    .line 189
    :cond_1
    sub-double v2, p0, p4

    .line 192
    .local v2, sineLat:D
    sub-double v4, p2, p6

    .line 196
    .local v4, sineLng:D
    add-double v8, p0, p4

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 197
    .local v0, cosTerms:D
    mul-double/2addr v0, v0

    .line 198
    mul-double v8, v2, v2

    mul-double v10, v0, v4

    mul-double/2addr v10, v4

    add-double v6, v8, v10

    .line 199
    .local v6, trigTerm:D
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 202
    const-wide v8, 0x415849c600000000L

    mul-double/2addr v8, v6

    goto :goto_0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "duration"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 337
    div-int/lit16 v1, p1, 0xe10

    .line 338
    .local v1, h:I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    .line 339
    .local v2, m:I
    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    sub-int v3, p1, v4

    .line 341
    .local v3, s:I
    if-nez v1, :cond_0

    .line 342
    const v4, 0x7f0a0137

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, durationValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 344
    .end local v0           #durationValue:Ljava/lang/String;
    :cond_0
    const v4, 0x7f0a0138

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 4
    .parameter "format"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 292
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppBrightnessValue()I
    .locals 1

    .prologue
    .line 413
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->sAppBrightness:I

    return v0
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 152
    .local v6, result:[B
    const/4 v4, 0x0

    .line 153
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

    .line 154
    .local v1, ch:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #output:I
    .restart local v4       #output:I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 155
    add-int/lit8 v5, v4, 0x1

    .end local v4           #output:I
    .restart local v5       #output:I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v1           #ch:C
    :cond_0
    return-object v6
.end method

.method public static getCurrentScreenBrightness()I
    .locals 4

    .prologue
    const/16 v2, 0xff

    .line 430
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 432
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 433
    invoke-interface {v1}, Landroid/os/IPowerManager;->getSettingsBrightnessMeizu()I

    move-result v3

    sput v3, Lcom/android/gallery3d/util/GalleryUtils;->sSystemBrightness:I

    .line 434
    sget v2, Lcom/android/gallery3d/util/GalleryUtils;->sSystemBrightness:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return v2

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, doe:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getHasInitBrigtnessFlag()Z
    .locals 1

    .prologue
    .line 425
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->sHasInitBrightness:Z

    return v0
.end method

.method public static getRotatedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v11, 0x400

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 665
    .line 670
    if-nez p1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-object v1

    .line 673
    :cond_1
    invoke-static {p0, p1}, Landroid/media/ThumbnailUtils;->getOrientFromInputStream(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v3, v0

    .line 689
    :goto_1
    cmpl-float v0, v3, v0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 695
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 700
    :goto_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 701
    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 702
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 703
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v7, -0x1

    const/high16 v8, 0x40

    invoke-static {v5, v6, v7, v8}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v5

    .line 704
    if-eqz v0, :cond_2

    .line 706
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    :cond_2
    :goto_3
    :try_start_2
    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 717
    :goto_4
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 718
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 719
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 720
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 724
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 726
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 727
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 730
    if-gt v2, v11, :cond_3

    if-le v5, v11, :cond_4

    .line 731
    :cond_3
    invoke-static {v6, v7, v6}, Lcom/android/gallery3d/common/Utils;->fitRectInto(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 732
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v0, v2, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 733
    if-eq v2, v0, :cond_8

    .line 734
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v2

    .line 739
    :cond_4
    :goto_5
    float-to-int v2, v3

    invoke-static {v0, v2, v10}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 742
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 744
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 749
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 750
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 753
    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {v3, v0, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 754
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 762
    if-eqz v2, :cond_6

    .line 764
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 765
    if-eqz v3, :cond_6

    .line 766
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 774
    :cond_6
    :goto_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 775
    const-string v1, "_data"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 679
    :pswitch_1
    const/high16 v2, 0x42b4

    move v3, v2

    .line 680
    goto/16 :goto_1

    .line 682
    :pswitch_2
    const/high16 v2, 0x4334

    move v3, v2

    .line 683
    goto/16 :goto_1

    .line 685
    :pswitch_3
    const/high16 v2, 0x4387

    move v3, v2

    goto/16 :goto_1

    .line 696
    :catch_0
    move-exception v0

    .line 697
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_2

    .line 707
    :catch_1
    move-exception v6

    .line 708
    const-string v7, "GalleryUtils"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 714
    :catch_2
    move-exception v6

    .line 715
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 755
    :catch_3
    move-exception v0

    move-object v2, v1

    .line 756
    :goto_7
    :try_start_6
    const-string v4, "GalleryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRotatedUri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 762
    if-eqz v2, :cond_0

    .line 764
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 765
    if-eqz v3, :cond_0

    .line 766
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 767
    :catch_4
    move-exception v0

    .line 768
    const-string v2, "GalleryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRotatedUri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 758
    :catch_5
    move-exception v0

    move-object v2, v1

    .line 759
    :goto_9
    :try_start_8
    const-string v4, "GalleryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRotatedUri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 762
    if-eqz v2, :cond_0

    .line 764
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 765
    if-eqz v3, :cond_0

    .line 766
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    .line 767
    :catch_6
    move-exception v0

    .line 768
    const-string v2, "GalleryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRotatedUri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 762
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_a
    if-eqz v2, :cond_7

    .line 764
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 765
    if-eqz v3, :cond_7

    .line 766
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 762
    :cond_7
    :goto_b
    throw v0

    .line 767
    :catch_7
    move-exception v1

    .line 768
    const-string v2, "GalleryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRotatedUri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 767
    :catch_8
    move-exception v0

    .line 768
    const-string v1, "GalleryUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRotatedUri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 762
    :catchall_1
    move-exception v0

    goto :goto_a

    .line 758
    :catch_9
    move-exception v0

    goto/16 :goto_9

    .line 755
    :catch_a
    move-exception v0

    goto/16 :goto_7

    :cond_8
    move-object v0, v2

    goto/16 :goto_5

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getRotatedUri(Landroid/content/Context;Lcom/android/gallery3d/data/LocalImage;)Landroid/net/Uri;
    .locals 26
    .parameter "context"
    .parameter "localImage"

    .prologue
    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/LocalImage;->getFullImageRotation()I

    move-result v7

    .line 596
    .local v7, rotation:I
    if-nez v7, :cond_0

    .line 597
    const/4 v4, 0x0

    .line 661
    :goto_0
    return-object v4

    .line 599
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/RotatedTemp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 600
    .local v16, dstDir:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .local v15, dir:Ljava/io/File;
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 603
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .local v12, arr$:[Ljava/io/File;
    array-length v0, v12

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v23, v12, v19

    .line 604
    .local v23, sub:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 603
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 608
    .end local v12           #arr$:[Ljava/io/File;
    .end local v19           #i$:I
    .end local v20           #len$:I
    .end local v23           #sub:Ljava/io/File;
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 614
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 615
    .local v2, filePath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/LocalImage;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 616
    .local v17, dstPath:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v13, candidate:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 618
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 621
    :cond_4
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 627
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 628
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 633
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 639
    .local v10, fos:Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/LocalImage;->getWidth()I

    move-result v22

    .line 640
    .local v22, srcWidth:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/LocalImage;->getHeight()I

    move-result v21

    .line 641
    .local v21, srcHeight:I
    rem-int/lit16 v4, v7, 0xb4

    if-eqz v4, :cond_5

    .line 642
    move/from16 v24, v21

    .local v24, t:I
    move/from16 v21, v22

    move/from16 v22, v24

    .line 644
    .end local v24           #t:I
    :cond_5
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 645
    .local v3, srcRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 647
    .local v6, destRect:Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v8, 0x0

    const/16 v9, 0x5a

    const/16 v11, 0x1000

    new-array v11, v11, [B

    invoke-static/range {v2 .. v11}, Lcom/android/gallery3d/app/CropImage;->nativeSaveFromFile(Ljava/lang/String;Landroid/graphics/Rect;IILandroid/graphics/Rect;IIILjava/io/OutputStream;[B)Z

    .line 649
    if-eqz v10, :cond_6

    .line 651
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 658
    :cond_6
    :goto_3
    new-instance v25, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 659
    .local v25, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 661
    .local v14, cr:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 622
    .end local v3           #srcRect:Landroid/graphics/Rect;
    .end local v6           #destRect:Landroid/graphics/Rect;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v14           #cr:Landroid/content/ContentResolver;
    .end local v21           #srcHeight:I
    .end local v22           #srcWidth:I
    .end local v25           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v18

    .line 623
    .local v18, e:Ljava/io/IOException;
    const-string v4, "Gallery2"

    const-string v5, "create file failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 634
    .end local v18           #e:Ljava/io/IOException;
    :catch_1
    move-exception v18

    .line 635
    .local v18, e:Ljava/io/FileNotFoundException;
    const-string v4, "Gallery2"

    const-string v5, "open fos failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 652
    .end local v18           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #srcRect:Landroid/graphics/Rect;
    .restart local v6       #destRect:Landroid/graphics/Rect;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v21       #srcHeight:I
    .restart local v22       #srcWidth:I
    :catch_2
    move-exception v18

    .line 653
    .local v18, e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 610
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #srcRect:Landroid/graphics/Rect;
    .end local v6           #destRect:Landroid/graphics/Rect;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v13           #candidate:Ljava/io/File;
    .end local v17           #dstPath:Ljava/lang/String;
    .end local v18           #e:Ljava/io/IOException;
    .end local v21           #srcHeight:I
    .end local v22           #srcWidth:I
    :catch_3
    move-exception v4

    goto/16 :goto_2
.end method

.method public static getSelectionModePrompt(I)I
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 373
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 374
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f0a014b

    .line 378
    :goto_0
    return v0

    .line 374
    :cond_0
    const v0, 0x7f0a014c

    goto :goto_0

    .line 378
    :cond_1
    const v0, 0x7f0a014a

    goto :goto_0
.end method

.method public static getShareIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 530
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 531
    .local v5, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_0

    .line 532
    const/4 v1, 0x0

    .line 590
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 534
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x0

    .local v4, mimeImage:Z
    const/4 v6, 0x0

    .local v6, mimeVideo:Z
    const/4 v3, 0x0

    .line 535
    .local v3, mimeAll:Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v11, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/Path;

    .line 537
    .local v8, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v7

    .line 538
    .local v7, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v7, :cond_2

    .line 539
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    .line 540
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_2

    .line 541
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .end local v10           #uri:Landroid/net/Uri;
    :cond_2
    instance-of v12, v7, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v12, :cond_1

    .line 545
    check-cast v7, Lcom/android/gallery3d/data/MediaItem;

    .end local v7           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v9

    .line 546
    .local v9, type:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 547
    const-string v12, "image"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 548
    const/4 v4, 0x1

    goto :goto_1

    .line 549
    :cond_3
    const-string v12, "image"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 550
    const/4 v6, 0x1

    goto :goto_1

    .line 551
    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 552
    const/4 v3, 0x1

    goto :goto_1

    .line 558
    .end local v8           #path:Lcom/android/gallery3d/data/Path;
    .end local v9           #type:Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    .line 559
    :cond_6
    const-string v5, "*/*"

    .line 569
    :goto_2
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 571
    const-string v12, "android.intent.action.SEND"

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const/4 v10, 0x0

    .line 573
    .restart local v10       #uri:Landroid/net/Uri;
    if-eqz p0, :cond_7

    .line 574
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/Path;

    .line 575
    .restart local v8       #path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v7

    .line 576
    .restart local v7       #object:Lcom/android/gallery3d/data/MediaObject;
    instance-of v12, v7, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v12, :cond_7

    move-object v2, v7

    .line 577
    check-cast v2, Lcom/android/gallery3d/data/LocalImage;

    .line 578
    .local v2, item:Lcom/android/gallery3d/data/LocalImage;
    invoke-static {p0, v2}, Lcom/android/gallery3d/util/GalleryUtils;->getRotatedUri(Landroid/content/Context;Lcom/android/gallery3d/data/LocalImage;)Landroid/net/Uri;

    move-result-object v10

    .line 581
    .end local v2           #item:Lcom/android/gallery3d/data/LocalImage;
    .end local v7           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v8           #path:Lcom/android/gallery3d/data/Path;
    :cond_7
    if-nez v10, :cond_8

    .line 582
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #uri:Landroid/net/Uri;
    check-cast v10, Landroid/net/Uri;

    .line 584
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_8
    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 589
    .end local v10           #uri:Landroid/net/Uri;
    :goto_3
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 560
    :cond_9
    if-nez v4, :cond_a

    if-eqz v6, :cond_c

    .line 561
    :cond_a
    if-eqz v4, :cond_b

    .line 562
    const-string v5, "image/*"

    goto :goto_2

    .line 564
    :cond_b
    const-string v5, "video/*"

    goto :goto_2

    .line 567
    :cond_c
    const-string v5, "*/*"

    goto :goto_2

    .line 586
    :cond_d
    const-string v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public static getShareIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/gallery3d/util/GalleryUtils;->getShareIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemBrightnessValue()I
    .locals 1

    .prologue
    .line 417
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->sSystemBrightness:I

    return v0
.end method

.method public static getSystemMaxBrightness()I
    .locals 1

    .prologue
    .line 495
    const/16 v0, 0xff

    return v0
.end method

.method public static getSystemMinBrightness()I
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x2

    return v0
.end method

.method public static hasSpaceForSize(J)Z
    .locals 9
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 382
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v4

    .line 387
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, path:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 390
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    cmp-long v5, v5, p0

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 391
    .end local v2           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "GalleryUtils"

    const-string v6, "Fail to access external storage"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static initCommonValue(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f0901df

    const/4 v2, 0x1

    .line 503
    sget-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->sCommonValueInited:Z

    if-nez v1, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->BOTTOMBAR_HEIGHT:I

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->HUDVIEW_HEIGHT:I

    .line 507
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->CROP_BOTTOMBAR_HEIGHT:I

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->TOPBAR_HEIGHT:I

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->INFOBAR_TITLE_SIZE:I

    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->INFOBAR_COUNT_SIZE:I

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->VIDEO_TITLE_SIZE:I

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->VIDEO_INFO_SIZE:I

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->VIDEO_STRING_INTERVAL1:I

    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->VIDEO_STRING_INTERVAL2:I

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    .line 516
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10500a3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->ACTIONBAR_HEIGHT:I

    .line 517
    sget v1, Lcom/android/gallery3d/util/GalleryUtils;->ACTIONBAR_HEIGHT:I

    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->INFOBAR_HEIGHT:I

    .line 518
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 519
    .local v0, viewConfiguration:Landroid/view/ViewConfiguration;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPhysicalMenuKey()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->HAS_PERMANENT_MENU_KEY:Z

    .line 520
    sput-boolean v2, Lcom/android/gallery3d/util/GalleryUtils;->sCommonValueInited:Z

    .line 522
    .end local v0           #viewConfiguration:Landroid/view/ViewConfiguration;
    :cond_0
    return-void

    .line 519
    .restart local v0       #viewConfiguration:Landroid/view/ViewConfiguration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initGalleryBrightness(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 469
    const-string v3, "com.android.gallery3d_preferences"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 471
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "light-brightness"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 472
    .local v0, appBrightness:I
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getCurrentScreenBrightness()I

    move-result v1

    .line 473
    .local v1, curSysBri:I
    if-eq v0, v5, :cond_0

    if-le v0, v1, :cond_0

    move-object v3, p0

    .line 474
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    .line 479
    :goto_0
    sput v1, Lcom/android/gallery3d/util/GalleryUtils;->sSystemBrightness:I

    .line 480
    sput v0, Lcom/android/gallery3d/util/GalleryUtils;->sAppBrightness:I

    .line 481
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lcom/android/gallery3d/util/GalleryUtils;->sAppBrightness:I

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    .line 482
    return-void

    .restart local p0
    :cond_0
    move-object v3, p0

    .line 476
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    .line 477
    move v0, v1

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 128
    sget v2, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 129
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 132
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    .line 135
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public static isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "mimeType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 232
    invoke-static {p0}, Lcom/android/gallery3d/app/PackagesMonitor;->getPackagesVersion(Landroid/content/Context;)I

    move-result v5

    .line 234
    .local v5, version:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "editor-update-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, updateKey:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "has-editor-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, hasKey:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 238
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v5, :cond_1

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 240
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v2, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    move v6, v7

    :cond_0
    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    .end local v1           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    return v6
.end method

.method public static isPanorama(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 398
    if-nez p0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v2

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    .line 400
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 401
    .local v0, h:I
    if-lez v0, :cond_0

    div-int v3, v1, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isValidLocation(DD)Z
    .locals 3
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const-wide/16 v1, 0x0

    .line 285
    cmpl-double v0, p0, v1

    if-nez v0, :cond_0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static meterToPixel(F)I
    .locals 2
    .parameter "meter"

    .prologue
    .line 147
    const v0, 0x421d7ae1

    mul-float/2addr v0, p0

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static saveGalleryBrightness(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 485
    const-string v1, "com.android.gallery3d_preferences"

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    .local v0, pref:Landroid/content/SharedPreferences;
    sget v1, Lcom/android/gallery3d/util/GalleryUtils;->sAppBrightness:I

    sget v2, Lcom/android/gallery3d/util/GalleryUtils;->sSystemBrightness:I

    if-gt v1, v2, :cond_0

    .line 488
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "light-brightness"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "light-brightness"

    sget v3, Lcom/android/gallery3d/util/GalleryUtils;->sAppBrightness:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setAppBrightnessValue(I)V
    .locals 0
    .parameter "brightness"

    .prologue
    .line 409
    sput p0, Lcom/android/gallery3d/util/GalleryUtils;->sAppBrightness:I

    .line 410
    return-void
.end method

.method public static setHasInitBrigtnessFlag(Z)V
    .locals 0
    .parameter "hasInit"

    .prologue
    .line 421
    sput-boolean p0, Lcom/android/gallery3d/util/GalleryUtils;->sHasInitBrightness:Z

    .line 422
    return-void
.end method

.method public static setRenderThread()V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    .line 168
    return-void
.end method

.method public static setViewPointMatrix([FFFF)V
    .locals 4
    .parameter "matrix"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v3, 0x0

    .line 324
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 325
    const/4 v0, 0x5

    const/16 v1, 0xf

    neg-float v2, p3

    aput v2, p0, v1

    aput v2, p0, v0

    aput v2, p0, v3

    .line 326
    const/16 v0, 0x8

    aput p1, p0, v0

    .line 327
    const/16 v0, 0x9

    aput p2, p0, v0

    .line 328
    const/16 v0, 0xa

    const/16 v1, 0xb

    const/high16 v2, 0x3f80

    aput v2, p0, v1

    aput v2, p0, v0

    .line 329
    return-void
.end method

.method public static setWindowBrightness(Landroid/view/Window;I)V
    .locals 1
    .parameter "win"
    .parameter "brightness"

    .prologue
    .line 444
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;IZ)V

    .line 445
    return-void
.end method

.method public static setWindowBrightness(Landroid/view/Window;IZ)V
    .locals 4
    .parameter "win"
    .parameter "brightness"
    .parameter "needUpdateAppBrightness"

    .prologue
    .line 448
    if-eqz p0, :cond_4

    .line 449
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 450
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getCurrentScreenBrightness()I

    move-result p1

    .line 452
    :cond_0
    const/16 v2, 0xff

    if-le p1, v2, :cond_1

    .line 453
    const/16 p1, 0xff

    .line 455
    :cond_1
    if-gez p1, :cond_2

    .line 456
    const/4 p1, 0x0

    .line 458
    :cond_2
    if-eqz p2, :cond_3

    .line 459
    sput p1, Lcom/android/gallery3d/util/GalleryUtils;->sAppBrightness:I

    .line 461
    :cond_3
    int-to-float v2, p1

    const/high16 v3, 0x437f

    div-float v0, v2, v3

    .line 462
    .local v0, brightnessRatio:F
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 463
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 464
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 466
    .end local v0           #brightnessRatio:F
    .end local v1           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    return-void
.end method

.method public static showOnMap(Landroid/content/Context;DD)V
    .locals 8
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 301
    :try_start_0
    const-string v5, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    invoke-static {v5, p1, p2, p3, p4}, Lcom/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.google.android.apps.maps"

    const-string v6, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 307
    .local v2, mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v3           #uri:Ljava/lang/String;
    :goto_0
    return-void

    .line 308
    .end local v2           #mapsIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 310
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "GalleryUtils"

    const-string v6, "GMM activity not found!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    const-string v5, "geo:%f,%f"

    invoke-static {v5, p1, p2, p3, p4}, Lcom/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, url:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    .restart local v2       #mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static final toMile(D)D
    .locals 2
    .parameter "meter"

    .prologue
    .line 216
    const-wide v0, 0x4099240000000000L

    div-double v0, p0, v0

    return-wide v0
.end method

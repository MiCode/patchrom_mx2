.class public Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;
.super Lcom/android/gallery3d/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;

.field private mSupportFullImage:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IJLjava/lang/String;Z)V
    .locals 7
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "dateModifiedInSec"
    .parameter "localFilePath"
    .parameter "supportFullImage"

    .prologue
    .line 172
    invoke-static {p3, p7}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(IZ)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IJI)V

    .line 173
    iput-object p6, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 174
    iput-boolean p7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mSupportFullImage:Z

    .line 175
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 179
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 180
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 181
    iget-boolean v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mSupportFullImage:Z

    invoke-static {p2, v7}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(IZ)I

    move-result v5

    .line 184
    .local v5, targetSize:I
    const/4 v7, 0x2

    if-ne p2, v7, :cond_1

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, exif:Landroid/media/ExifInterface;
    const/4 v6, 0x0

    .line 188
    .local v6, thumbData:[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 190
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_0
    move-object v1, v2

    .line 195
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v6, :cond_1

    .line 196
    invoke-static {p1, v6, v3, v5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 202
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v6           #thumbData:[B
    :goto_1
    return-object v0

    .line 192
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .restart local v6       #thumbData:[B
    :catch_0
    move-exception v4

    .line 193
    .local v4, t:Ljava/lang/Throwable;
    :goto_2
    const-string v7, "LocalImage"

    const-string v8, "fail to get exif thumb"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v4           #t:Ljava/lang/Throwable;
    .end local v6           #thumbData:[B
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v7, v3, v5, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 192
    .restart local v2       #exif:Landroid/media/ExifInterface;
    .restart local v6       #thumbData:[B
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

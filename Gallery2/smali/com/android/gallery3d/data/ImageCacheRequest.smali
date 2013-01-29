.class abstract Lcom/android/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mDateModifiedInSec:J

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IJI)V
    .locals 0
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "dateModifiedInSec"
    .parameter "targetSize"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 40
    iput-object p2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 41
    iput p3, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    .line 42
    iput-wide p4, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    .line 43
    iput p6, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 44
    return-void
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "jc"

    .prologue
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const-string v3, "THUMB"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 51
    .local v21, debugTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v2

    .line 53
    .local v2, cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/BytesBufferPool;->get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v7

    .line 55
    .local v7, buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;IJLcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v22

    .line 56
    .local v22, found:Z
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/16 v20, 0x0

    .line 74
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 99
    :goto_1
    return-object v20

    .line 48
    .end local v2           #cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    .end local v7           #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    .end local v21           #debugTag:Ljava/lang/String;
    .end local v22           #found:Z
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    const-string v3, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v3, "?"

    goto :goto_0

    .line 57
    .restart local v2       #cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    .restart local v7       #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    .restart local v21       #debugTag:Ljava/lang/String;
    .restart local v22       #found:Z
    :cond_2
    if-eqz v22, :cond_5

    .line 58
    :try_start_1
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 59
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 61
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 62
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v8

    iget-object v10, v7, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v11, v7, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v12, v7, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/data/BitmapPool;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 68
    .local v20, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-nez v20, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 69
    const-string v3, "ImageCacheRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode cached failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_1

    .line 65
    .end local v20           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v8

    iget-object v10, v7, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v11, v7, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v12, v7, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/data/BitmapPool;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v20

    .restart local v20       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 74
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 76
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 77
    .restart local v20       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v20, 0x0

    goto/16 :goto_1

    .line 74
    .end local v20           #bitmap:Landroid/graphics/Bitmap;
    .end local v22           #found:Z
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v3

    .line 79
    .restart local v20       #bitmap:Landroid/graphics/Bitmap;
    .restart local v22       #found:Z
    :cond_6
    if-nez v20, :cond_7

    .line 80
    const-string v3, "ImageCacheRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode orig failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 84
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 86
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 93
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v20, 0x0

    goto/16 :goto_1

    .line 91
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v20

    goto :goto_3

    .line 95
    :cond_9
    invoke-static/range {v20 .. v20}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v19

    .line 96
    .local v19, array:[B
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v20, 0x0

    goto/16 :goto_1

    .line 98
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    move-wide/from16 v17, v0

    move-object v14, v2

    invoke-virtual/range {v14 .. v19}, Lcom/android/gallery3d/data/ImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;IJ[B)V

    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/gallery3d/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/ui/TileImageView$Model;


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mLevelCount:I

.field protected mOwnScreenNail:Z

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field protected mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 2
    .parameter "bitmap"
    .parameter "regionDecoder"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 44
    iput-object p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 45
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 46
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 48
    return-void
.end method

.method private calculateLevelCount()I
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V
    .locals 1
    .parameter "screenNail"
    .parameter "own"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mOwnScreenNail:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 82
    iput-boolean p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mOwnScreenNail:Z

    .line 83
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"

    .prologue
    .line 111
    shl-int v1, p5, p1

    .line 112
    .local v1, b:I
    shl-int v7, p4, p1

    .line 114
    .local v7, t:I
    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, p2, v1

    sub-int v10, p3, v1

    add-int v11, p2, v7

    add-int/2addr v11, v1

    add-int v12, p3, v7

    add-int/2addr v12, v1

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    .local v8, wantRegion:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 119
    .local v5, regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 121
    if-nez v5, :cond_1

    const/4 v2, 0x0

    monitor-exit p0

    .line 158
    :cond_0
    :goto_0
    return-object v2

    .line 125
    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v13, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v3, 0x1

    .line 127
    .local v3, needClear:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-nez p6, :cond_6

    const/4 v2, 0x0

    .line 130
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v2, :cond_7

    .line 131
    if-eqz v3, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 137
    :cond_2
    :goto_3
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 138
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 139
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 140
    const/4 v9, 0x1

    shl-int/2addr v9, p1

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 141
    iput-object v2, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 145
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 146
    :try_start_2
    invoke-virtual {v5, v8, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 147
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v9, v2, :cond_4

    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_4

    .line 150
    if-eqz p6, :cond_3

    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 151
    :cond_3
    const/4 v9, 0x0

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 155
    :cond_4
    if-nez v2, :cond_0

    .line 156
    const-string v9, "TileImageViewAdapter"

    const-string v10, "fail in decoding region"

    invoke-static {v9, v10}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #needClear:Z
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 129
    .restart local v3       #needClear:Z
    :cond_6
    invoke-virtual/range {p6 .. p6}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 133
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    mul-int/lit8 v9, p5, 0x2

    add-int v6, p4, v9

    .line 134
    .local v6, s:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 147
    .end local v6           #s:I
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 149
    :catchall_2
    move-exception v9

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v10, v2, :cond_9

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_9

    .line 150
    if-eqz p6, :cond_8

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 151
    :cond_8
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_9
    throw v9
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 87
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 88
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 89
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenNail(Landroid/graphics/Bitmap;II)V
    .locals 2
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 61
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 62
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V
    .locals 1
    .parameter "screenNail"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 71
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 72
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

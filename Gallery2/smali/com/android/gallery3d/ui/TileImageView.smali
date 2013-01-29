.class public Lcom/android/gallery3d/ui/TileImageView;
.super Lcom/android/gallery3d/ui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/TileImageView$1;,
        Lcom/android/gallery3d/ui/TileImageView$TileDecoder;,
        Lcom/android/gallery3d/ui/TileImageView$TileQueue;,
        Lcom/android/gallery3d/ui/TileImageView$Tile;,
        Lcom/android/gallery3d/ui/TileImageView$TileUploader;,
        Lcom/android/gallery3d/ui/TileImageView$Model;
    }
.end annotation


# static fields
.field private static final sTilePool:Lcom/android/gallery3d/data/BitmapPool;


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/gallery3d/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private mTileDecoder:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileUploader:Lcom/android/gallery3d/ui/TileImageView$TileUploader;

.field private final mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

.field private mUploadQuota:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 50
    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    const/16 v1, 0x80

    invoke-direct {v0, v2, v2, v1}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    sput-object v0, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryContext;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 149
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 88
    iput v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 101
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    .line 104
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/android/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    .line 105
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/android/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    .line 106
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/android/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    .line 109
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 110
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 121
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileUploader:Lcom/android/gallery3d/ui/TileImageView$TileUploader;

    .line 150
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    .line 152
    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/TileImageView;III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/TileImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method private activateTile(III)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 524
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v0

    .line 525
    .local v0, key:J
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 526
    .local v2, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-eqz v2, :cond_1

    .line 527
    iget v3, v2, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 528
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->obtainTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v2

    .line 533
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method static drawTile(Lcom/android/gallery3d/ui/TileImageView$Tile;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 6
    .parameter "tile"
    .parameter "canvas"
    .parameter "source"
    .parameter "target"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x437e

    const/high16 v3, 0x4000

    .line 611
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {p2, v5, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 614
    invoke-interface {p1, p0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 615
    const/4 v1, 0x1

    .line 620
    :goto_1
    return v1

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView$Tile;->getParentTile()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    .line 620
    .local v0, parent:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 621
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 622
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 623
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 628
    :goto_2
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 629
    iget v1, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 630
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 635
    :goto_3
    move-object p0, v0

    .line 636
    goto :goto_0

    .line 625
    :cond_2
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 626
    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 632
    :cond_3
    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 633
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 25
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 292
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 293
    .local v9, radians:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 294
    .local v16, w:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v5, v0

    .line 296
    .local v5, h:D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 297
    .local v3, cos:D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 298
    .local v12, sin:D
    mul-double v19, v3, v16

    mul-double v21, v12, v5

    sub-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v3, v16

    mul-double v23, v12, v5

    add-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v18, v0

    .line 300
    .local v18, width:I
    mul-double v19, v12, v16

    mul-double v21, v3, v5

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v12, v16

    mul-double v23, v3, v5

    sub-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 303
    .local v7, height:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v8, v0

    .line 304
    .local v8, left:I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 305
    .local v15, top:I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->ceil(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 306
    .local v11, right:I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->ceil(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v2, v0

    .line 309
    .local v2, bottom:I
    const/16 v19, 0xfe

    shl-int v14, v19, p4

    .line 310
    .local v14, size:I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 311
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 315
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 316
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 7
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "rotation"

    .prologue
    .line 280
    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 281
    return-void
.end method

.method private getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/TileImageView$Tile;

    return-object v0
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->isAnimating()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTiles(IIFI)V
    .locals 24
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v21

    .line 197
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v14

    .line 205
    .local v14, height:I
    const/high16 v3, 0x3f80

    div-float v3, v3, p3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    .line 210
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    if-eq v3, v5, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 212
    .local v4, range:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 213
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v5, p1

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    .line 214
    int-to-float v3, v14

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, p2

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    .line 215
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    shl-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, p3

    const/high16 v5, 0x3f40

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 223
    .end local v4           #range:Landroid/graphics/Rect;
    .local v13, fromLevel:I
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 224
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 226
    .local v12, endLevel:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 227
    .local v4, range:[Landroid/graphics/Rect;
    move v9, v13

    .local v9, i:I
    :goto_1
    if-ge v9, v12, :cond_2

    .line 228
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V

    .line 227
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 215
    .end local v9           #i:I
    .end local v12           #endLevel:I
    .end local v13           #fromLevel:I
    .local v4, range:Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    goto :goto_0

    .line 218
    .end local v4           #range:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 219
    .restart local v13       #fromLevel:I
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    move/from16 v0, p1

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    .line 220
    int-to-float v3, v14

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    move/from16 v0, p2

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    goto :goto_0

    .line 232
    .local v4, range:[Landroid/graphics/Rect;
    .restart local v9       #i:I
    .restart local v12       #endLevel:I
    :cond_2
    rem-int/lit8 v3, p4, 0x5a

    if-eqz v3, :cond_3

    .line 265
    :goto_2
    return-void

    .line 234
    :cond_3
    monitor-enter p0

    .line 235
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 237
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v16

    .line 242
    .local v16, n:I
    const/4 v9, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 244
    .local v20, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 245
    .local v15, level:I
    if-lt v15, v13, :cond_4

    if-ge v15, v12, :cond_4

    sub-int v3, v15, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 247
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 248
    add-int/lit8 v9, v9, -0x1

    .line 249
    add-int/lit8 v16, v16, -0x1

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->recycleTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    .line 242
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 253
    .end local v15           #level:I
    .end local v20           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    move v9, v13

    :goto_4
    if-ge v9, v12, :cond_9

    .line 256
    const/16 v3, 0xfe

    shl-int v19, v3, v9

    .line 257
    .local v19, size:I
    sub-int v3, v9, v13

    aget-object v17, v4, v3

    .line 258
    .local v17, r:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .local v23, y:I
    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, bottom:I
    :goto_5
    move/from16 v0, v23

    if-ge v0, v11, :cond_8

    .line 259
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .local v22, x:I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .local v18, right:I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 260
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v9}, Lcom/android/gallery3d/ui/TileImageView;->activateTile(III)V

    .line 259
    add-int v22, v22, v19

    goto :goto_6

    .line 253
    .end local v11           #bottom:I
    .end local v16           #n:I
    .end local v17           #r:Landroid/graphics/Rect;
    .end local v18           #right:I
    .end local v19           #size:I
    .end local v22           #x:I
    .end local v23           #y:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 258
    .restart local v11       #bottom:I
    .restart local v16       #n:I
    .restart local v17       #r:Landroid/graphics/Rect;
    .restart local v18       #right:I
    .restart local v19       #size:I
    .restart local v22       #x:I
    .restart local v23       #y:I
    :cond_7
    add-int v23, v23, v19

    goto :goto_5

    .line 255
    .end local v18           #right:I
    .end local v22           #x:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 264
    .end local v11           #bottom:I
    .end local v17           #r:Landroid/graphics/Rect;
    .end local v19           #size:I
    .end local v23           #y:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    goto/16 :goto_2
.end method

.method private static makeTileKey(III)J
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    const/16 v6, 0x10

    .line 541
    int-to-long v0, p0

    .line 542
    .local v0, result:J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 543
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 544
    return-wide v0
.end method

.method private declared-synchronized obtainTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    .line 502
    .local v0, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-eqz v0, :cond_0

    .line 503
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 504
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v0           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .end local v0           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView$Tile;-><init>(Lcom/android/gallery3d/ui/TileImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private uploadBackgroundTiles(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 455
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 456
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 457
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 458
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 459
    .local v2, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/TileImageView;->queueForDecode(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    .line 457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .end local v2           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_1
    return-void
.end method


# virtual methods
.method decodeTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z
    .locals 4
    .parameter "tile"

    .prologue
    const/4 v1, 0x0

    .line 480
    monitor-enter p0

    .line 481
    :try_start_0
    iget v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    monitor-exit p0

    move v0, v1

    .line 496
    :goto_0
    return v0

    .line 482
    :cond_0
    const/4 v2, 0x4

    iput v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 483
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->decode()Z

    move-result v0

    .line 485
    .local v0, decodeComplete:Z
    monitor-enter p0

    .line 486
    :try_start_1
    iget v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 487
    const/16 v2, 0x40

    iput v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 488
    iget-object v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 489
    sget-object v2, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    iget-object v3, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 490
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z

    .line 493
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    .line 483
    .end local v0           #decodeComplete:Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 495
    .restart local v0       #decodeComplete:Z
    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 496
    monitor-exit p0

    goto :goto_0

    .line 497
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 495
    :cond_3
    const/16 v1, 0x10

    goto :goto_1
.end method

.method public drawTile(Lcom/android/gallery3d/ui/GLCanvas;IIIFFF)V
    .locals 12
    .parameter "canvas"
    .parameter "tx"
    .parameter "ty"
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "length"

    .prologue
    .line 575
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 576
    .local v5, source:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 577
    .local v6, target:Landroid/graphics/RectF;
    add-float v8, p5, p7

    add-float v9, p6, p7

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 578
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x437e

    const/high16 v11, 0x437e

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 580
    move/from16 v0, p4

    invoke-direct {p0, p2, p3, v0}, Lcom/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v7

    .line 581
    .local v7, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-eqz v7, :cond_4

    .line 582
    invoke-virtual {v7}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 583
    iget v8, v7, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 584
    iget v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    if-lez v8, :cond_2

    .line 585
    iget v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 586
    invoke-virtual {v7, p1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 595
    :cond_0
    :goto_0
    invoke-static {v7, p1, v5, v6}, Lcom/android/gallery3d/ui/TileImageView;->drawTile(Lcom/android/gallery3d/ui/TileImageView$Tile;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 605
    :cond_1
    :goto_1
    return-void

    .line 588
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    .line 590
    :cond_3
    iget v8, v7, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v9, 0x10

    if-eq v8, v9, :cond_0

    .line 591
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    .line 592
    invoke-virtual {p0, v7}, Lcom/android/gallery3d/ui/TileImageView;->queueForDecode(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 597
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v8, :cond_1

    .line 598
    const/16 v8, 0xfe

    shl-int v4, v8, p4

    .line 599
    .local v4, size:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v8}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 600
    .local v2, scaleX:F
    iget-object v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v8}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 601
    .local v3, scaleY:F
    int-to-float v8, p2

    mul-float/2addr v8, v2

    int-to-float v9, p3

    mul-float/2addr v9, v3

    add-int v10, p2, v4

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-int v11, p3, v4

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 603
    iget-object v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v8, p1, v5, v6}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public freeTextures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 355
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 357
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    if-eqz v4, :cond_0

    .line 358
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 359
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    .line 360
    iput-object v6, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    .line 363
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 364
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 365
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 366
    .local v2, texture:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v2           #texture:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    .line 369
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 373
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 374
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    .line 375
    .local v3, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :goto_1
    if-eqz v3, :cond_2

    .line 376
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 377
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_1

    .line 379
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 381
    sget-object v4, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 382
    return-void

    .line 379
    .end local v3           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected declared-synchronized invalidateTiles()V
    .locals 4

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 269
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 271
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 272
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 274
    .local v2, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/TileImageView;->recycleTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v2           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 268
    .end local v0           #i:I
    .end local v1           #n:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidateTiles()V

    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 167
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 168
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 169
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    .line 176
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 177
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    .line 178
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 183
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 184
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 185
    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 385
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v2, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    .line 388
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    if-eqz v1, :cond_1

    .line 389
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 391
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 393
    :cond_1
    return-void

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized queueForDecode(Lcom/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 474
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 475
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queueForUpload(Lcom/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 3
    .parameter "tile"

    .prologue
    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z

    .line 466
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileUploader:Lcom/android/gallery3d/ui/TileImageView$TileUploader;

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileUploader:Lcom/android/gallery3d/ui/TileImageView$TileUploader;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 470
    :cond_0
    return-void

    .line 466
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized recycleTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 512
    const/16 v0, 0x20

    iput v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :goto_0
    monitor-exit p0

    return-void

    .line 515
    :cond_0
    const/16 v0, 0x40

    :try_start_1
    iput v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 516
    iget-object v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 517
    sget-object v0, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    iget-object v1, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 397
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 398
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    .line 400
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    .line 401
    .local v6, level:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    move/from16 v22, v0

    .line 402
    .local v22, rotation:I
    const/16 v18, 0x0

    .line 403
    .local v18, flags:I
    if-eqz v22, :cond_0

    or-int/lit8 v18, v18, 0x2

    .line 405
    :cond_0
    if-eqz v18, :cond_1

    .line 406
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 407
    if-eqz v22, :cond_1

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .local v16, centerX:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v2

    div-int/lit8 v17, v2, 0x2

    .line 409
    .local v17, centerY:I
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 410
    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v10, v11}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 411
    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v17

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 415
    .end local v16           #centerX:I
    .end local v17           #centerY:I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    if-eq v6, v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v2

    if-nez v2, :cond_4

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->noDraw()V

    .line 420
    :cond_2
    const/16 v2, 0xfe

    shl-int v23, v2, v6

    .line 421
    .local v23, size:I
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    mul-float v9, v2, v3

    .line 422
    .local v9, length:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 424
    .local v21, r:Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .local v5, ty:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v2, :cond_5

    .line 425
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    int-to-float v2, v2

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v8, v2, v3

    .line 426
    .local v8, y:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .local v4, tx:I
    const/16 v20, 0x0

    .local v20, j:I
    :goto_1
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v4, v2, :cond_3

    .line 427
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    int-to-float v2, v2

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v7, v2, v3

    .local v7, x:F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 428
    invoke-virtual/range {v2 .. v9}, Lcom/android/gallery3d/ui/TileImageView;->drawTile(Lcom/android/gallery3d/ui/GLCanvas;IIIFFF)V

    .line 426
    add-int v4, v4, v23

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 424
    .end local v7           #x:F
    :cond_3
    add-int v5, v5, v23

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 431
    .end local v4           #tx:I
    .end local v5           #ty:I
    .end local v8           #y:F
    .end local v9           #length:F
    .end local v19           #i:I
    .end local v20           #j:I
    .end local v21           #r:Landroid/graphics/Rect;
    .end local v23           #size:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_5

    .line 432
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_5
    if-eqz v18, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 443
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    if-eqz v2, :cond_9

    .line 444
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    if-nez v2, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/ui/TileImageView;->uploadBackgroundTiles(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 448
    :cond_7
    :goto_2
    return-void

    .line 440
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    :cond_8
    throw v2

    .line 446
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    goto :goto_2
.end method

.method public setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 157
    :cond_0
    return-void
.end method

.method public setPosition(IIFI)Z
    .locals 1
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 343
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    if-ne v0, p4, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0

    .line 345
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    .line 346
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    .line 347
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    .line 348
    iput p4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    .line 349
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 350
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    .line 351
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 161
    return-void
.end method

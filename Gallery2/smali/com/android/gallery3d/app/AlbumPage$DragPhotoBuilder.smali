.class Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragPhotoBuilder"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mState:I

.field private final mWidth:I

.field private final mX:I

.field private final mY:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;IIII)V
    .locals 15
    .parameter
    .parameter "entry"
    .parameter "width"
    .parameter "height"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2423
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    .line 2424
    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 2421
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mState:I

    .line 2426
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 2427
    move/from16 v0, p3

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mWidth:I

    .line 2428
    move/from16 v0, p4

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mHeight:I

    .line 2429
    move/from16 v0, p5

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mX:I

    .line 2430
    move/from16 v0, p6

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mY:I

    .line 2432
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v11, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mPaint:Landroid/graphics/Paint;

    .line 2433
    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2434
    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2436
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v6

    .line 2437
    .local v6, lockState:I
    if-lez v6, :cond_4

    .line 2438
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    if-eqz v11, :cond_3

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    .line 2439
    .local v8, rect:Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 2440
    .local v10, w:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2441
    .local v3, h:I
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    div-int/lit8 v11, v11, 0x5a

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 2442
    move v9, v10

    .local v9, t:I
    move v10, v3

    move v3, v9

    .line 2445
    .end local v9           #t:I
    :cond_0
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2446
    .local v1, bm:Landroid/graphics/Bitmap;
    const v11, -0xddddde

    invoke-virtual {v1, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2448
    const/16 v11, 0x10

    if-eq v6, v11, :cond_2

    .line 2449
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2450
    .local v2, canvas:Landroid/graphics/Canvas;
    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mLockIcon:Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/app/AlbumPage;->access$7700(Lcom/android/gallery3d/app/AlbumPage;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 2451
    .local v5, iconWidth:I
    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mLockIcon:Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/app/AlbumPage;->access$7700(Lcom/android/gallery3d/app/AlbumPage;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2452
    .local v4, iconHeight:I
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    div-int/lit8 v11, v11, 0x5a

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1

    .line 2453
    move v9, v5

    .restart local v9       #t:I
    move v5, v4

    move v4, v9

    .line 2455
    .end local v9           #t:I
    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2456
    .local v7, r:Landroid/graphics/Rect;
    sub-int v11, v10, v5

    div-int/lit8 v11, v11, 0x2

    iput v11, v7, Landroid/graphics/Rect;->left:I

    .line 2457
    sub-int v11, v3, v4

    div-int/lit8 v11, v11, 0x2

    iput v11, v7, Landroid/graphics/Rect;->top:I

    .line 2458
    iget v11, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v5

    iput v11, v7, Landroid/graphics/Rect;->right:I

    .line 2459
    iget v11, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v4

    iput v11, v7, Landroid/graphics/Rect;->bottom:I

    .line 2460
    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mLockIcon:Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/app/AlbumPage;->access$7700(Lcom/android/gallery3d/app/AlbumPage;)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    rsub-int v13, v13, 0x168

    invoke-static {v2, v11, v12, v13, v7}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawRotatedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;ILandroid/graphics/Rect;)V

    .line 2462
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v4           #iconHeight:I
    .end local v5           #iconWidth:I
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_2
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 2467
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v8           #rect:Landroid/graphics/Rect;
    .end local v10           #w:I
    :goto_1
    return-void

    .line 2438
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mWidth:I

    iget v14, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mHeight:I

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 2464
    :cond_4
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v11

    sget-object v12, Lcom/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v11, v12}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    iput-object v11, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 2477
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget v1, v3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    .line 2479
    .local v1, rotation:I
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, v3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v0, v3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    .line 2481
    .local v0, destRect:Landroid/graphics/Rect;
    :goto_0
    if-eqz v1, :cond_2

    const/16 v3, 0x168

    if-eq v1, v3, :cond_2

    .line 2482
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v3, v4, v1, v0}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawRotatedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;ILandroid/graphics/Rect;)V

    .line 2488
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mState:I

    if-nez v3, :cond_3

    .line 2489
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mNormal:Landroid/graphics/NinePatch;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$7800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/graphics/NinePatch;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2493
    :cond_0
    :goto_2
    return-void

    .line 2479
    .end local v0           #destRect:Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mWidth:I

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mHeight:I

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 2484
    .restart local v0       #destRect:Landroid/graphics/Rect;
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2485
    .local v2, srcRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 2490
    .end local v2           #srcRect:Landroid/graphics/Rect;
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2491
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mWarning:Landroid/graphics/NinePatch;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$7900(Lcom/android/gallery3d/app/AlbumPage;)Landroid/graphics/NinePatch;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 2471
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2472
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mX:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mY:I

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2473
    return-void
.end method

.method public setDragingState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 2496
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mState:I

    if-eq v0, p1, :cond_0

    .line 2497
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->mState:I

    .line 2498
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage;->mDelayUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2500
    :cond_0
    return-void
.end method

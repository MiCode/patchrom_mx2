.class Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragAlbumBuilder"
.end annotation


# instance fields
.field private final mBitmap:[Landroid/graphics/Bitmap;

.field private final mCovers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mState:I

.field private final mWidth:I

.field private final mX:I

.field private final mY:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;IIII)V
    .locals 17
    .parameter
    .parameter "entry"
    .parameter "width"
    .parameter "height"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1489
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    .line 1490
    invoke-direct/range {p0 .. p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 1487
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mState:I

    .line 1492
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mCovers:Ljava/util/ArrayList;

    .line 1493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mCovers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mBitmap:[Landroid/graphics/Bitmap;

    .line 1494
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mWidth:I

    .line 1495
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mHeight:I

    .line 1496
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mX:I

    .line 1497
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mY:I

    .line 1499
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mPaint:Landroid/graphics/Paint;

    .line 1500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mPaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mPaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1503
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mBitmap:[Landroid/graphics/Bitmap;

    array-length v14, v14

    if-ge v6, v14, :cond_3

    .line 1504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mCovers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 1505
    .local v4, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v14, v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v8

    .line 1506
    .local v8, lockState:I
    if-lez v8, :cond_2

    .line 1507
    iget-object v11, v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    .line 1508
    .local v11, rect:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 1509
    .local v13, w:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1510
    .local v5, h:I
    iget v14, v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rotation:I

    div-int/lit8 v14, v14, 0x5a

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_0

    .line 1511
    move v12, v13

    .local v12, t:I
    move v13, v5

    move v5, v12

    .line 1514
    .end local v12           #t:I
    :cond_0
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v5, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1515
    .local v2, bm:Landroid/graphics/Bitmap;
    const v14, -0xddddde

    invoke-virtual {v2, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1517
    const/16 v14, 0x10

    if-eq v8, v14, :cond_1

    .line 1518
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1519
    .local v3, canvas:Landroid/graphics/Canvas;
    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3600(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1520
    .local v9, lockWidth:I
    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3600(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1521
    .local v7, iconHeight:I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1522
    .local v10, r:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v14, v9

    div-int/lit8 v14, v14, 0x2

    iput v14, v10, Landroid/graphics/Rect;->left:I

    .line 1523
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v14, v7

    div-int/lit8 v14, v14, 0x2

    iput v14, v10, Landroid/graphics/Rect;->top:I

    .line 1524
    iget v14, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v9

    iput v14, v10, Landroid/graphics/Rect;->right:I

    .line 1525
    iget v14, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v7

    iput v14, v10, Landroid/graphics/Rect;->bottom:I

    .line 1526
    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3600(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mPaint:Landroid/graphics/Paint;

    iget v0, v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rotation:I

    move/from16 v16, v0

    move/from16 v0, v16

    rsub-int v0, v0, 0x168

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v14, v15, v0, v10}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawRotatedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;ILandroid/graphics/Rect;)V

    .line 1528
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v7           #iconHeight:I
    .end local v9           #lockWidth:I
    .end local v10           #r:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mBitmap:[Landroid/graphics/Bitmap;

    aput-object v2, v14, v6

    .line 1503
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v5           #h:I
    .end local v11           #rect:Landroid/graphics/Rect;
    .end local v13           #w:I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1530
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mBitmap:[Landroid/graphics/Bitmap;

    iget-object v14, v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v14

    sget-object v16, Lcom/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    aput-object v14, v15, v6

    goto :goto_1

    .line 1534
    .end local v4           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v8           #lockState:I
    :cond_3
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 1544
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1545
    .local v7, srcRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1547
    .local v6, shadowRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mBitmap:[Landroid/graphics/Bitmap;

    array-length v9, v9

    if-ge v4, v9, :cond_4

    .line 1548
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v9, v4

    .line 1550
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1551
    .local v8, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1553
    .local v3, height:I
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mCovers:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 1554
    .local v1, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget v5, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rotation:I

    .line 1556
    .local v5, rotation:I
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mCovers:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    iget-object v2, v9, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    .line 1558
    .local v2, destRect:Landroid/graphics/Rect;
    if-eqz v5, :cond_2

    const/16 v9, 0x168

    if-eq v5, v9, :cond_2

    .line 1559
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v9, v5, v2}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawRotatedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;ILandroid/graphics/Rect;)V

    .line 1565
    :goto_1
    iget v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mState:I

    if-nez v9, :cond_3

    .line 1566
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mNormal:Landroid/graphics/NinePatch;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3700(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;

    move-result-object v9

    invoke-virtual {v9, p1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1571
    :cond_0
    :goto_2
    iget v9, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    if-lez v9, :cond_1

    .line 1572
    iget v9, v2, Landroid/graphics/Rect;->right:I

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 1573
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    sub-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 1574
    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3900(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 1575
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 1576
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3900(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10}, Landroid/graphics/NinePatch;->setPaint(Landroid/graphics/Paint;)V

    .line 1577
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3900(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;

    move-result-object v9

    invoke-virtual {v9, p1, v6}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1547
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1561
    :cond_2
    invoke-virtual {v7, v11, v11, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1562
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1567
    :cond_3
    iget v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 1568
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mWarning:Landroid/graphics/NinePatch;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3800(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;

    move-result-object v9

    invoke-virtual {v9, p1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 1580
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v2           #destRect:Landroid/graphics/Rect;
    .end local v3           #height:I
    .end local v5           #rotation:I
    .end local v8           #width:I
    :cond_4
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 1538
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 1539
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mX:I

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mY:I

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 1540
    return-void
.end method

.method public setDragingState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1583
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mState:I

    if-eq v0, p1, :cond_0

    .line 1584
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->mState:I

    .line 1585
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumSetPage;->mDelayUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1587
    :cond_0
    return-void
.end method

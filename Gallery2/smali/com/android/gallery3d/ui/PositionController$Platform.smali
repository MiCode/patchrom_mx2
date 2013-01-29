.class Lcom/android/gallery3d/ui/PositionController$Platform;
.super Lcom/android/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Platform"
.end annotation


# instance fields
.field public mCurrentX:I

.field public mCurrentY:I

.field public mDefaultX:I

.field public mDefaultY:I

.field public mFlingOffset:I

.field public mFromX:I

.field public mFromY:I

.field public mToX:I

.field public mToY:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PositionController;)V
    .locals 1
    .parameter

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/android/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1450
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Platform;-><init>(Lcom/android/gallery3d/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1450
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v0

    return v0
.end method

.method private doAnimation(III)Z
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "kind"

    .prologue
    const/4 v0, 0x0

    .line 1522
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-ne v1, p2, :cond_0

    .line 1532
    :goto_0
    return v0

    .line 1523
    :cond_0
    iput p3, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    .line 1524
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1525
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    .line 1526
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1527
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    .line 1528
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1529
    invoke-static {}, Lcom/android/gallery3d/ui/PositionController;->access$2500()[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    .line 1530
    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1531
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    .line 1532
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingFilm(F)Z
    .locals 4
    .parameter "progress"

    .prologue
    .line 1547
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1548
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1550
    const/4 v0, -0x1

    .line 1551
    .local v0, dir:I
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ge v2, v3, :cond_2

    .line 1552
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$1200(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1553
    const/4 v0, 0x3

    .line 1560
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1561
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 1562
    .local v1, v:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    .line 1563
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1564
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1566
    .end local v1           #v:I
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    return v2

    .line 1555
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-le v2, v3, :cond_0

    .line 1556
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$1300(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1557
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingPage(F)Z
    .locals 8
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f00

    .line 1570
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/ui/FlingScroller;->computeScrollOffset(F)V

    .line 1571
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1572
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V
    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/PositionController;->access$2800(Lcom/android/gallery3d/ui/PositionController;F)V

    .line 1574
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1575
    .local v1, oldX:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/FlingScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1578
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$1800(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-le v1, v5, :cond_1

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$1800(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1579
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 1580
    .local v2, v:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    .line 1586
    .end local v2           #v:I
    :cond_0
    :goto_0
    const/high16 v5, 0x3f80

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    :goto_1
    return v3

    .line 1581
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$1900(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-ge v1, v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$1900(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1582
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 1583
    .restart local v2       #v:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0

    .end local v2           #v:I
    :cond_2
    move v3, v4

    .line 1586
    goto :goto_1
.end method

.method private interpolateLinear(F)Z
    .locals 6
    .parameter "progress"

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1591
    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1592
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1593
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 1604
    :cond_0
    :goto_0
    return v0

    .line 1596
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v2, v5, :cond_2

    .line 1597
    invoke-static {p1}, Lcom/android/gallery3d/ui/CaptureAnimation;->calculateSlide(F)F

    move-result p1

    .line 1599
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1600
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 1601
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v2, v5, :cond_3

    move v0, v1

    .line 1602
    goto :goto_0

    .line 1604
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 2
    .parameter "progress"

    .prologue
    .line 1537
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1538
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Platform;->interpolateFlingPage(F)Z

    move-result v0

    .line 1542
    :goto_0
    return v0

    .line 1539
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1540
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Platform;->interpolateFlingFilm(F)Z

    move-result v0

    goto :goto_0

    .line 1542
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Platform;->interpolateLinear(F)Z

    move-result v0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 1457
    iget-wide v9, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return v8

    .line 1458
    :cond_1
    iget v9, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/gallery3d/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1460
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mInScale:Z
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$800(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1462
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1463
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$1000(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const v10, 0x3f333333

    mul-float v5, v9, v10

    .line 1465
    .local v5, scaleMin:F
    :goto_1
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$1000(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    const v10, 0x3fb33333

    mul-float v4, v9, v10

    .line 1467
    .local v4, scaleMax:F
    :goto_2
    iget v9, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v9, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 1468
    .local v2, scale:F
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1469
    .local v6, x:I
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    .line 1470
    .local v7, y:I
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$1100(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1471
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1472
    .local v1, defaultX:I
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$1200(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1473
    :cond_3
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$1300(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1491
    .end local v1           #defaultX:I
    :cond_4
    :goto_3
    iget v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v9, v6, :cond_5

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-eq v9, v7, :cond_0

    .line 1492
    :cond_5
    const/4 v8, 0x2

    invoke-direct {p0, v6, v7, v8}, Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v8

    goto :goto_0

    .line 1463
    .end local v2           #scale:F
    .end local v4           #scaleMax:F
    .end local v5           #scaleMin:F
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_6
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    goto :goto_1

    .line 1465
    .restart local v5       #scaleMin:F
    :cond_7
    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    goto :goto_2

    .line 1475
    .restart local v2       #scale:F
    .restart local v4       #scaleMax:F
    .restart local v6       #x:I
    .restart local v7       #y:I
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    invoke-static {}, Lcom/android/gallery3d/ui/PositionController;->access$1400()I

    move-result v10

    #calls: Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V
    invoke-static {v9, v2, v10}, Lcom/android/gallery3d/ui/PositionController;->access$1500(Lcom/android/gallery3d/ui/PositionController;FI)V

    .line 1485
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #calls: Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z
    invoke-static {v9, v2}, Lcom/android/gallery3d/ui/PositionController;->access$1600(Lcom/android/gallery3d/ui/PositionController;F)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1486
    iget v9, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    sub-float v3, v9, v2

    .line 1487
    .local v3, scaleDiff:F
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFocusX:F
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$1700(Lcom/android/gallery3d/ui/PositionController;)F

    move-result v9

    mul-float/2addr v9, v3

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v6, v9

    .line 1489
    .end local v3           #scaleDiff:F
    :cond_9
    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$1800(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v10}, Lcom/android/gallery3d/ui/PositionController;->access$1900(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v10

    invoke-static {v6, v9, v10}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v6

    goto :goto_3
.end method

.method public updateDefaultXY()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1505
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2000(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2100(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1506
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2100(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mViewW:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$2200(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1507
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$1100(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    .line 1518
    :goto_1
    return-void

    .line 1507
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PositionController;->access$2100(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mViewH:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2300(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1510
    :cond_1
    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1511
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$1100(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mViewW:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2200(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mViewH:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$2300(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1512
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mActionbarHeight:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/PositionController;->access$2400(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v0

    sget v1, Lcom/android/gallery3d/util/GalleryUtils;->STATUS_BAR_HEIGHT:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    goto :goto_1

    .line 1514
    :cond_2
    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    goto :goto_1
.end method

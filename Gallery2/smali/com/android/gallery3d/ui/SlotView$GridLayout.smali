.class public Lcom/android/gallery3d/ui/SlotView$GridLayout;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$Layout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridLayout"
.end annotation


# instance fields
.field private mActionBarHeight:I

.field private mBottomBarHeight:I

.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mPadding:I

.field private mPaddingHori:I

.field private mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGapH:I

.field private mSlotGapV:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 484
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    .line 510
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    return-void
.end method

.method private initLayoutParameters()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 627
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v6, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 628
    .local v6, rows:I
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 629
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    .line 630
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    .line 631
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->padding:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPadding:I

    .line 632
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapV:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    .line 633
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    .line 634
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->paddingHori:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPaddingHori:I

    .line 642
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 646
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 652
    .local v5, padding:[I
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mWidth:I

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->initLayoutParameters(IIII[I)V

    .line 653
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 654
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    const/4 v1, 0x0

    aget v1, v5, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 656
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->updateVisibleSlotRange()V

    .line 657
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    .line 658
    return-void

    .line 627
    .end local v5           #padding:[I
    .end local v6           #rows:I
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v6, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    goto :goto_0

    .line 636
    .restart local v6       #rows:I
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    .line 637
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    .line 638
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v6

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    .line 639
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    goto :goto_1
.end method

.method private initLayoutParameters(IIII[I)V
    .locals 9
    .parameter "majorLength"
    .parameter "minorLength"
    .parameter "majorUnitSize"
    .parameter "minorUnitSize"
    .parameter "padding"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 591
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v5, p4

    div-int v2, v4, v5

    .line 592
    .local v2, unitCount:I
    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 593
    :cond_0
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    .line 596
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    div-int v1, v4, v5

    .line 597
    .local v1, count:I
    mul-int v4, v1, p3

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mContentLength:I

    .line 599
    sget v4, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    if-le v4, v8, :cond_2

    .line 603
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    if-le v4, v8, :cond_1

    .line 604
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPaddingHori:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    .line 609
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mContentLength:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mContentLength:I

    .line 610
    aput v7, p5, v7

    .line 611
    aput v7, p5, v8

    .line 623
    :goto_1
    return-void

    .line 606
    :cond_1
    iput v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    goto :goto_0

    .line 614
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 615
    .local v0, availableUnits:I
    mul-int v4, v0, p4

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 617
    .local v3, usedMinorLength:I
    sub-int v4, p2, v3

    div-int/lit8 v4, v4, 0x2

    aput v4, p5, v7

    .line 621
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mContentLength:I

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v8

    goto :goto_1
.end method

.method private setVisibleRange(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 697
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    if-ge p1, p2, :cond_2

    .line 699
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    .line 700
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    .line 704
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    .line 702
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 669
    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mScrollPosition:I

    .line 679
    .local v2, position:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mActionBarHeight:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v6, v7

    div-int v4, v5, v6

    .line 680
    .local v4, startRow:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 681
    .local v3, start:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mBottomBarHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    .line 683
    .local v1, endRow:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 684
    .local v0, end:I
    invoke-direct {p0, v3, v0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->setVisibleRange(II)V

    .line 686
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2
    .parameter "animTime"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 780
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mContentLength:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    sub-int v0, v1, v2

    .line 781
    .local v0, limit:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #limit:I
    :cond_0
    return v0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF[I)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "pointInSlot"

    .prologue
    .line 721
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/lit8 v0, v7, 0x0

    .line 722
    .local v0, absoluteX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mScrollPosition:I

    add-int v1, v7, v8

    .line 724
    .local v1, absoluteY:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v7

    sub-int/2addr v0, v7

    .line 725
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v7

    sub-int/2addr v1, v7

    .line 727
    sget v7, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 732
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPadding:I

    sub-int/2addr v1, v7

    .line 733
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPaddingHori:I

    sub-int/2addr v0, v7

    .line 737
    :cond_0
    if-eqz p3, :cond_1

    array-length v7, p3

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    .line 738
    const/4 v7, 0x0

    const/4 v8, -0x1

    aput v8, p3, v7

    .line 739
    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, p3, v7

    .line 742
    :cond_1
    if-ltz v0, :cond_2

    if-gez v1, :cond_4

    .line 743
    :cond_2
    const/4 v3, -0x1

    .line 775
    :cond_3
    :goto_0
    return v3

    .line 746
    :cond_4
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    add-int/2addr v7, v8

    div-int v2, v0, v7

    .line 747
    .local v2, columnIdx:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v7, v8

    div-int v4, v1, v7

    .line 749
    .local v4, rowIdx:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    if-lt v2, v7, :cond_5

    .line 750
    const/4 v3, -0x1

    goto :goto_0

    .line 757
    :cond_5
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    add-int/2addr v7, v8

    rem-int v5, v0, v7

    .line 758
    .local v5, xInSlot:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    if-lt v5, v7, :cond_6

    .line 759
    const/4 v3, -0x1

    goto :goto_0

    .line 762
    :cond_6
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v7, v8

    rem-int v6, v1, v7

    .line 763
    .local v6, yInSlot:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    if-lt v6, v7, :cond_7

    .line 764
    const/4 v3, -0x1

    goto :goto_0

    .line 767
    :cond_7
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    mul-int/2addr v7, v4

    add-int v3, v7, v2

    .line 771
    .local v3, index:I
    if-eqz p3, :cond_8

    array-length v7, p3

    const/4 v8, 0x2

    if-lt v7, v8, :cond_8

    .line 772
    const/4 v7, 0x0

    aput v5, p3, v7

    .line 773
    const/4 v7, 0x1

    aput v6, p3, v7

    .line 775
    :cond_8
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    if-lt v3, v7, :cond_3

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .parameter "index"
    .parameter "rect"

    .prologue
    .line 546
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    div-int v1, p1, v4

    .line 547
    .local v1, row:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 550
    .local v0, col:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int v2, v4, v5

    .line 551
    .local v2, x:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int v3, v4, v5

    .line 552
    .local v3, y:I
    sget v4, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 557
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPadding:I

    add-int/2addr v3, v4

    .line 558
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPaddingHori:I

    add-int/2addr v2, v4

    .line 561
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 562
    return-object p2
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    return v0
.end method

.method public setActionBarHeight(I)V
    .locals 0
    .parameter "actionBarheight"

    .prologue
    .line 797
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mActionBarHeight:I

    .line 798
    return-void
.end method

.method public setBottomBarHeight(I)V
    .locals 0
    .parameter "bottomBarheight"

    .prologue
    .line 802
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mBottomBarHeight:I

    .line 803
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 690
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 694
    :goto_0
    return-void

    .line 691
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mScrollPosition:I

    .line 692
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->updateVisibleSlotRange()V

    .line 693
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 662
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mWidth:I

    .line 663
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    .line 664
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->initLayoutParameters()V

    .line 665
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onViewSizeChanged(II)V

    .line 666
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 5
    .parameter "slotCount"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 526
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    if-ne p1, v4, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v2

    .line 527
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    if-eqz v4, :cond_2

    .line 528
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 529
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 531
    :cond_2
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    .line 532
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 533
    .local v0, hPadding:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v1

    .line 534
    .local v1, vPadding:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->initLayoutParameters()V

    .line 535
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-eq v0, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    .line 522
    return-void
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 517
    return-void
.end method

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

    .line 485
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    .line 511
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    return-void
.end method

.method private initLayoutParameters()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 628
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v6, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 629
    .local v6, rows:I
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 630
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    .line 631
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    .line 632
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->padding:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPadding:I

    .line 633
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapV:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    .line 634
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    .line 635
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->paddingHori:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPaddingHori:I

    .line 643
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 647
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 653
    .local v5, padding:[I
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mWidth:I

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->initLayoutParameters(IIII[I)V

    .line 654
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 655
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    const/4 v1, 0x0

    aget v1, v5, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 657
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->updateVisibleSlotRange()V

    .line 658
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    .line 659
    return-void

    .line 628
    .end local v5           #padding:[I
    .end local v6           #rows:I
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v6, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    goto :goto_0

    .line 637
    .restart local v6       #rows:I
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    .line 638
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    .line 639
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v6

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    .line 640
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

    .line 592
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v5, p4

    div-int v2, v4, v5

    .line 593
    .local v2, unitCount:I
    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 594
    :cond_0
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    .line 597
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    div-int v1, v4, v5

    .line 598
    .local v1, count:I
    mul-int v4, v1, p3

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mContentLength:I

    .line 600
    sget v4, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    if-le v4, v8, :cond_2

    .line 604
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    if-le v4, v8, :cond_1

    .line 605
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

    .line 610
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mContentLength:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mContentLength:I

    .line 611
    aput v7, p5, v7

    .line 612
    aput v7, p5, v8

    .line 624
    :goto_1
    return-void

    .line 607
    :cond_1
    iput v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    goto :goto_0

    .line 615
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 616
    .local v0, availableUnits:I
    mul-int v4, v0, p4

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 618
    .local v3, usedMinorLength:I
    sub-int v4, p2, v3

    div-int/lit8 v4, v4, 0x2

    aput v4, p5, v7

    .line 622
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
    .line 698
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    if-ge p1, p2, :cond_2

    .line 700
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    .line 701
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    .line 705
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    .line 703
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 670
    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mScrollPosition:I

    .line 680
    .local v2, position:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mActionBarHeight:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v6, v7

    div-int v4, v5, v6

    .line 681
    .local v4, startRow:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 682
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

    .line 684
    .local v1, endRow:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 685
    .local v0, end:I
    invoke-direct {p0, v3, v0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->setVisibleRange(II)V

    .line 687
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2
    .parameter "animTime"

    .prologue
    .line 788
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 781
    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mContentLength:I

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    sub-int v3, v2, v3

    sget-boolean v2, Lcom/android/gallery3d/util/GalleryUtils;->HAS_PERMANENT_MENU_KEY:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/gallery3d/util/GalleryUtils;->BOTTOMBAR_HEIGHT:I

    :goto_0
    add-int v0, v3, v2

    .line 782
    .local v0, limit:I
    if-gtz v0, :cond_0

    move v0, v1

    .end local v0           #limit:I
    :cond_0
    return v0

    :cond_1
    move v2, v1

    .line 781
    goto :goto_0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF[I)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "pointInSlot"

    .prologue
    .line 722
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/lit8 v0, v7, 0x0

    .line 723
    .local v0, absoluteX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mScrollPosition:I

    add-int v1, v7, v8

    .line 725
    .local v1, absoluteY:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v7

    sub-int/2addr v0, v7

    .line 726
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v7

    sub-int/2addr v1, v7

    .line 728
    sget v7, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 733
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPadding:I

    sub-int/2addr v1, v7

    .line 734
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPaddingHori:I

    sub-int/2addr v0, v7

    .line 738
    :cond_0
    if-eqz p3, :cond_1

    array-length v7, p3

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    .line 739
    const/4 v7, 0x0

    const/4 v8, -0x1

    aput v8, p3, v7

    .line 740
    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, p3, v7

    .line 743
    :cond_1
    if-ltz v0, :cond_2

    if-gez v1, :cond_4

    .line 744
    :cond_2
    const/4 v3, -0x1

    .line 776
    :cond_3
    :goto_0
    return v3

    .line 747
    :cond_4
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    add-int/2addr v7, v8

    div-int v2, v0, v7

    .line 748
    .local v2, columnIdx:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v7, v8

    div-int v4, v1, v7

    .line 750
    .local v4, rowIdx:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    if-lt v2, v7, :cond_5

    .line 751
    const/4 v3, -0x1

    goto :goto_0

    .line 758
    :cond_5
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    add-int/2addr v7, v8

    rem-int v5, v0, v7

    .line 759
    .local v5, xInSlot:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    if-lt v5, v7, :cond_6

    .line 760
    const/4 v3, -0x1

    goto :goto_0

    .line 763
    :cond_6
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v7, v8

    rem-int v6, v1, v7

    .line 764
    .local v6, yInSlot:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    if-lt v6, v7, :cond_7

    .line 765
    const/4 v3, -0x1

    goto :goto_0

    .line 768
    :cond_7
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    mul-int/2addr v7, v4

    add-int v3, v7, v2

    .line 772
    .local v3, index:I
    if-eqz p3, :cond_8

    array-length v7, p3

    const/4 v8, 0x2

    if-lt v7, v8, :cond_8

    .line 773
    const/4 v7, 0x0

    aput v5, p3, v7

    .line 774
    const/4 v7, 0x1

    aput v6, p3, v7

    .line 776
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
    .line 547
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    div-int v1, p1, v4

    .line 548
    .local v1, row:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mUnitCount:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 551
    .local v0, col:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapH:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int v2, v4, v5

    .line 552
    .local v2, x:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotGapV:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int v3, v4, v5

    .line 553
    .local v3, y:I
    sget v4, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 558
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPadding:I

    add-int/2addr v3, v4

    .line 559
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mPaddingHori:I

    add-int/2addr v2, v4

    .line 562
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 563
    return-object p2
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVisibleStart:I

    return v0
.end method

.method public setActionBarHeight(I)V
    .locals 0
    .parameter "actionBarheight"

    .prologue
    .line 798
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mActionBarHeight:I

    .line 799
    return-void
.end method

.method public setBottomBarHeight(I)V
    .locals 0
    .parameter "bottomBarheight"

    .prologue
    .line 803
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mBottomBarHeight:I

    .line 804
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 691
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 695
    :goto_0
    return-void

    .line 692
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mScrollPosition:I

    .line 693
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->updateVisibleSlotRange()V

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onContentChangeEnded()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 663
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mWidth:I

    .line 664
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHeight:I

    .line 665
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->initLayoutParameters()V

    .line 666
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onViewSizeChanged(II)V

    .line 667
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 5
    .parameter "slotCount"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 527
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    if-ne p1, v4, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v2

    .line 528
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    if-eqz v4, :cond_2

    .line 529
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 530
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 532
    :cond_2
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSlotCount:I

    .line 533
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 534
    .local v0, hPadding:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v1

    .line 535
    .local v1, vPadding:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$GridLayout;->initLayoutParameters()V

    .line 536
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
    .line 522
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    .line 523
    return-void
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$GridLayout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 518
    return-void
.end method

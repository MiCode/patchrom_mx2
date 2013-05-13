.class public Lcom/meizu/widget/MzHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "MzHorizontalScrollView.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field protected mCurrentOverScrollDistance:I

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverFling:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/MzOverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/MzHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 153
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/MzHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 91
    iput-boolean v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsLayoutDirty:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 105
    iput-boolean v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    .line 121
    iput-boolean v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 126
    iput v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    .line 127
    iput-boolean v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverFling:Z

    .line 140
    const/4 v1, -0x1

    iput v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    .line 158
    invoke-direct {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->initScrollView()V

    .line 160
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 163
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->setFillViewport(Z)V

    .line 165
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-virtual {p0, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 264
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 266
    .end local v1           #childWidth:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1520
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1521
    :cond_0
    const/4 p1, 0x0

    .line 1526
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1523
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1524
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1046
    if-eqz p1, :cond_0

    .line 1047
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1048
    invoke-virtual {p0, p1, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->smoothScrollBy(II)V

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 789
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/meizu/widget/MzHorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 790
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 799
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 801
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 802
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 803
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 804
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 805
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 807
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 813
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 816
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 818
    move-object v1, v5

    .line 819
    move v3, v7

    .line 802
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 813
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 821
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 825
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 826
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 832
    move-object v1, v5

    goto :goto_2

    .line 821
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 835
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 837
    move-object v1, v5

    .line 838
    const/4 v3, 0x1

    goto :goto_2

    .line 839
    :cond_7
    if-eqz v6, :cond_0

    .line 844
    move-object v1, v5

    goto :goto_2

    .line 851
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 759
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 760
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 762
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 768
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 726
    const/4 v1, 0x0

    .line 727
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 728
    invoke-virtual {p0, v5}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 729
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 732
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 394
    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    .line 395
    .local v1, scrollX:I
    invoke-virtual {p0, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 401
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :cond_0
    return v2
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 208
    new-instance v1, Landroid/widget/MzOverScroller;

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MzOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    .line 209
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->setFocusable(Z)V

    .line 210
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->setDescendantFocusability(I)V

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->setWillNotDraw(Z)V

    .line 212
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 213
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTouchSlop:I

    .line 214
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mMinimumVelocity:I

    .line 215
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mMaximumVelocity:I

    .line 217
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverscrollDistance:I

    .line 218
    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverscrollDistance:I

    iput v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverflingDistance:I

    .line 219
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1025
    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/MzHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1407
    if-ne p1, p2, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return v1

    .line 1411
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1412
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/meizu/widget/MzHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1034
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/MzHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1036
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 663
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 664
    .local v1, pointerId:I
    iget v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 668
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 669
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mLastMotionX:F

    .line 670
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    .line 671
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 672
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 675
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 668
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 934
    const/4 v4, 0x1

    .line 936
    .local v4, handled:Z
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v6

    .line 937
    .local v6, width:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 938
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 939
    .local v1, containerRight:I
    const/16 v9, 0x11

    if-ne p1, v9, :cond_2

    move v3, v7

    .line 941
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/meizu/widget/MzHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 942
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 943
    move-object v5, p0

    .line 946
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 947
    const/4 v4, 0x0

    .line 953
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 954
    iput-boolean v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 955
    iput-boolean v8, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 958
    :cond_1
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v3, v8

    .line 939
    goto :goto_0

    .line 949
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 950
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 949
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1207
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1210
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1212
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1214
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1215
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollBy(II)V

    .line 1217
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1228
    invoke-virtual {p0, p1}, Lcom/meizu/widget/MzHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1229
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1230
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1231
    if-eqz p2, :cond_2

    .line 1232
    invoke-virtual {p0, v0, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollBy(II)V

    .line 1237
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1229
    goto :goto_0

    .line 1234
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MzHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MzHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 237
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MzHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MzHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 970
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 971
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 973
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 975
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 977
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/meizu/widget/MzHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 978
    iget-object v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 979
    iget-object v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/meizu/widget/MzHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 980
    iget-object v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/meizu/widget/MzHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 981
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/meizu/widget/MzHorizontalScrollView;->doScrollX(I)V

    .line 982
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1005
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/meizu/widget/MzHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1013
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/meizu/widget/MzHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1014
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->requestFocus()Z

    .line 1015
    invoke-virtual {p0, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1017
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 985
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 987
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 988
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v6

    .line 999
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1002
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/meizu/widget/MzHorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    .line 989
    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 991
    invoke-virtual {p0, v7}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 993
    .local v1, daRight:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 995
    .local v5, screenRight:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 996
    sub-int v6, v1, v5

    goto :goto_1

    .line 1002
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1121
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1101
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1102
    .local v1, count:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1103
    .local v0, contentWidth:I
    if-nez v1, :cond_0

    .line 1116
    .end local v0           #contentWidth:I
    :goto_0
    return v0

    .line 1107
    .restart local v0       #contentWidth:I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1108
    .local v3, scrollRange:I
    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    .line 1109
    .local v4, scrollX:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1110
    .local v2, overscrollRight:I
    if-gez v4, :cond_2

    .line 1111
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1116
    goto :goto_0

    .line 1112
    :cond_2
    if-le v4, v2, :cond_1

    .line 1113
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 1155
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v0}, Landroid/widget/MzOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1172
    iget v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    .line 1173
    .local v3, oldX:I
    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    .line 1174
    .local v4, oldY:I
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v0}, Landroid/widget/MzOverScroller;->getCurrX()I

    move-result v10

    .line 1175
    .local v10, x:I
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v0}, Landroid/widget/MzOverScroller;->getCurrY()I

    move-result v11

    .line 1177
    .local v11, y:I
    if-ne v3, v10, :cond_0

    if-eq v4, v11, :cond_1

    .line 1178
    :cond_0
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    invoke-direct {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollRange()I

    move-result v5

    iget v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/meizu/widget/MzHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1180
    iget v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/meizu/widget/MzHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->awakenScrollBars()Z

    .line 1197
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->postInvalidate()V

    .line 1199
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1249
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 1303
    :cond_0
    :goto_0
    return v5

    .line 1251
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1252
    .local v6, width:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1253
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1255
    .local v4, screenRight:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1258
    .local v1, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1259
    add-int/2addr v3, v1

    .line 1263
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1264
    sub-int/2addr v4, v1

    .line 1267
    :cond_3
    const/4 v5, 0x0

    .line 1269
    .local v5, scrollXDelta:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1274
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1276
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1283
    :goto_1
    invoke-virtual {p0, v7}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1284
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1285
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1287
    goto :goto_0

    .line 1279
    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1287
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1292
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1294
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1301
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 1297
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/meizu/widget/MzHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1487
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1517
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    .line 352
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 354
    invoke-direct {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 358
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 360
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 389
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 366
    :cond_2
    const/4 v1, 0x0

    .line 367
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 368
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 389
    goto :goto_0

    .line 370
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 371
    invoke-virtual {p0, v4}, Lcom/meizu/widget/MzHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 373
    :cond_4
    invoke-virtual {p0, v4}, Lcom/meizu/widget/MzHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 375
    goto :goto_1

    .line 377
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 378
    invoke-virtual {p0, v5}, Lcom/meizu/widget/MzHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 380
    :cond_5
    invoke-virtual {p0, v5}, Lcom/meizu/widget/MzHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 382
    goto :goto_1

    .line 384
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/meizu/widget/MzHorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 368
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 15
    .parameter "velocityX"

    .prologue
    .line 1423
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverFling:Z

    .line 1425
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingLeft:I

    sub-int v14, v0, v1

    .line 1426
    .local v14, width:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 1428
    .local v13, right:I
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    sub-int v6, v13, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    div-int/lit8 v9, v14, 0x2

    const/4 v10, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/MzOverScroller;->fling(IIIIIIIIII)V

    .line 1431
    if-lez p1, :cond_3

    const/4 v11, 0x1

    .line 1433
    .local v11, movingRight:Z
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v0}, Landroid/widget/MzOverScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 1436
    .local v12, newFocused:Landroid/view/View;
    if-nez v12, :cond_0

    .line 1437
    move-object v12, p0

    .line 1440
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_1

    if-eqz v11, :cond_4

    const/16 v0, 0x42

    :goto_1
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1446
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->invalidate()V

    .line 1448
    .end local v11           #movingRight:Z
    .end local v12           #newFocused:Landroid/view/View;
    .end local v13           #right:I
    .end local v14           #width:I
    :cond_2
    return-void

    .line 1431
    .restart local v13       #right:I
    .restart local v14       #width:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 1440
    .restart local v11       #movingRight:Z
    .restart local v12       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 903
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 904
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v3

    .line 906
    .local v3, width:I
    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 907
    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 909
    if-eqz v1, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 911
    .local v0, count:I
    if-lez v0, :cond_0

    .line 912
    invoke-virtual {p0, v4}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 913
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 914
    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 918
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 903
    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const/4 v1, 0x0

    .line 179
    :goto_0
    return v1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 175
    .local v0, length:I
    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 176
    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 179
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 203
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mRight:I

    iget v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 185
    const/4 v3, 0x0

    .line 195
    :goto_0
    return v3

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 189
    .local v0, length:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 190
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 191
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 192
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 195
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1126
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1131
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1134
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1136
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1137
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1142
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1144
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1147
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1150
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1151
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 418
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 491
    :goto_0
    return v0

    .line 422
    :cond_0
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 491
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 433
    :pswitch_1
    iget v8, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    .line 434
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_1

    .line 439
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 440
    .local v9, pointerIndex:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 441
    .local v10, x:F
    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mLastMotionX:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v11, v1

    .line 442
    .local v11, xDiff:I
    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTouchSlop:I

    if-le v11, v1, :cond_1

    .line 443
    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    .line 444
    iput v10, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mLastMotionX:F

    .line 445
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 451
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #x:F
    .end local v11           #xDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 452
    .restart local v10       #x:F
    float-to-int v1, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 453
    iput-boolean v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 461
    :cond_2
    iput v10, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mLastMotionX:F

    .line 462
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    .line 469
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v1}, Landroid/widget/MzOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v0

    :cond_3
    iput-boolean v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 476
    .end local v10           #x:F
    :pswitch_3
    iput-boolean v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    .line 477
    iput v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    .line 478
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/MzOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->invalidate()V

    goto :goto_1

    .line 483
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1373
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1376
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/meizu/widget/MzHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1379
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1382
    iget v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollTo(II)V

    .line 1383
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 311
    iget-boolean v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 316
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 321
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 323
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 326
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingTop:I

    iget v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 328
    .local v1, childHeightMeasureSpec:I
    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 329
    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 330
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 332
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 10
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v9, 0x0

    .line 682
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v6}, Landroid/widget/MzOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 683
    iput p1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    .line 684
    iput p2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    .line 685
    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverFling:Z

    if-nez v6, :cond_0

    .line 687
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverFling:Z

    .line 688
    invoke-direct {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 690
    .local v0, bottom:I
    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-gez v6, :cond_2

    .line 691
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    iget v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    iget v8, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverflingDistance:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v9, v8}, Landroid/widget/MzOverScroller;->notifyHorizontalEdgeReached(III)V

    .line 694
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->invalidate()V

    .line 701
    .end local v0           #bottom:I
    :cond_0
    :goto_1
    iput v9, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    .line 702
    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    if-gez v6, :cond_4

    .line 703
    iput p1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    .line 722
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->awakenScrollBars()Z

    .line 723
    return-void

    .line 693
    .restart local v0       #bottom:I
    :cond_2
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    iget v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    iget v8, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverflingDistance:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v0, v8}, Landroid/widget/MzOverScroller;->notifyHorizontalEdgeReached(III)V

    goto :goto_0

    .line 697
    .end local v0           #bottom:I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_1

    .line 704
    :cond_4
    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    if-lez v6, :cond_1

    .line 706
    invoke-virtual {p0, v9}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 707
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v5

    .line 710
    .local v5, width:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getPaddingLeft()I

    move-result v3

    .line 711
    .local v3, paddingLeft:I
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getPaddingRight()I

    move-result v4

    .line 712
    .local v4, paddingRight:I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 714
    .local v2, childWidth:I
    sub-int v6, v5, v3

    sub-int/2addr v6, v4

    if-le v2, v6, :cond_5

    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    neg-int v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v7, v5, v4

    if-ge v6, v7, :cond_5

    .line 716
    sub-int v6, v5, v4

    iget v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    neg-int v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    goto :goto_2

    .line 717
    :cond_5
    sub-int v6, v5, v3

    sub-int/2addr v6, v4

    if-gt v2, v6, :cond_1

    .line 718
    iget v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    iput v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    goto :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1333
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1334
    const/16 p1, 0x42

    .line 1339
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1344
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1352
    :cond_1
    :goto_2
    return v1

    .line 1335
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1336
    const/16 p1, 0x11

    goto :goto_0

    .line 1339
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1348
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/meizu/widget/MzHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1352
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1387
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1389
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1390
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    iget v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mRight:I

    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1395
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1396
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1397
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/widget/MzHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1398
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/meizu/widget/MzHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1399
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "ev"

    .prologue
    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    const/4 v3, 0x0

    .line 657
    :goto_0
    return v3

    .line 503
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 504
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 506
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    .line 510
    .local v21, action:I
    move/from16 v0, v21

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 657
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 512
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    .line 513
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 514
    const/4 v3, 0x0

    goto :goto_0

    .line 512
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 521
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v3}, Landroid/widget/MzOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v3}, Landroid/widget/MzOverScroller;->abortAnimation()V

    .line 526
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mLastMotionX:F

    .line 527
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    goto :goto_1

    .line 531
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 533
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 534
    .local v22, activePointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 535
    .local v29, x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mLastMotionX:F

    sub-float v3, v3, v29

    float-to-int v0, v3

    move/from16 v24, v0

    .line 536
    .local v24, deltaX:I
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/MzHorizontalScrollView;->mLastMotionX:F

    .line 538
    move/from16 v4, v24

    .line 540
    .local v4, incrementalDeltaX:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverscrollDistance:I

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 543
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    mul-int v3, v3, v24

    if-lez v3, :cond_b

    .line 545
    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverscrollDistance:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v23, v3, v5

    .line 546
    .local v23, coeff:F
    const/4 v3, 0x0

    cmpg-float v3, v23, v3

    if-gez v3, :cond_6

    const/16 v23, 0x0

    .line 547
    :cond_6
    int-to-float v3, v4

    mul-float v3, v3, v23

    float-to-int v4, v3

    .line 548
    if-lez v24, :cond_9

    .line 549
    if-nez v4, :cond_7

    const/4 v4, 0x1

    .line 557
    .end local v23           #coeff:F
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    move/from16 v26, v0

    .line 558
    .local v26, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    move/from16 v27, v0

    .line 559
    .local v27, oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollRange()I

    move-result v8

    .line 560
    .local v8, range:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/meizu/widget/MzHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 565
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->onScrollChanged(IIII)V

    goto/16 :goto_1

    .line 551
    .end local v8           #range:I
    .end local v26           #oldX:I
    .end local v27           #oldY:I
    .restart local v23       #coeff:F
    :cond_9
    if-nez v4, :cond_a

    const/4 v4, -0x1

    :cond_a
    goto :goto_3

    .line 554
    .end local v23           #coeff:F
    :cond_b
    div-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 591
    .end local v4           #incrementalDeltaX:I
    .end local v22           #activePointerIndex:I
    .end local v24           #deltaX:I
    .end local v29           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    .line 593
    .local v28, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 594
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v25, v0

    .line 597
    .local v25, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_c

    .line 598
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mMinimumVelocity:I

    if-le v3, v5, :cond_f

    .line 600
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-nez v3, :cond_e

    .line 602
    move/from16 v0, v25

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/meizu/widget/MzHorizontalScrollView;->fling(I)V

    .line 623
    :cond_c
    :goto_4
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    .line 624
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 628
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 630
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_1

    .line 607
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollRange()I

    move-result v13

    .line 608
    .local v13, bottom:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/MzOverScroller;->springBack(IIIIII)Z

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->invalidate()V

    goto :goto_4

    .line 613
    .end local v13           #bottom:I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_c

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollRange()I

    move-result v13

    .line 616
    .restart local v13       #bottom:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/MzOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->invalidate()V

    goto :goto_4

    .line 637
    .end local v13           #bottom:I
    .end local v25           #initialVelocity:I
    .end local v28           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 638
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollRange()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/widget/MzOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/MzHorizontalScrollView;->invalidate()V

    .line 641
    :cond_10
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mActivePointerId:I

    .line 642
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsBeingDragged:Z

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_11

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 645
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 647
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/MzHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_1

    .line 654
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/MzHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 867
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 868
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v3

    .line 870
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 871
    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 872
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 873
    .local v0, count:I
    if-lez v0, :cond_0

    .line 874
    invoke-virtual {p0, v4}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 875
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 876
    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 885
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 887
    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 867
    goto :goto_0

    .line 880
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 881
    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 882
    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1308
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1309
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1310
    invoke-direct {p0, p2}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1316
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1317
    return-void

    .line 1313
    :cond_1
    iput-object p2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1359
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1362
    invoke-direct {p0, p2, p3}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1368
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1369
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1458
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1459
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1460
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/meizu/widget/MzHorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1461
    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1462
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1465
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 287
    iput-boolean p1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mFillViewport:Z

    .line 288
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->requestLayout()V

    .line 290
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 1469
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1482
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1483
    return-void

    .line 1479
    :cond_0
    iput-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1480
    iput-object v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 305
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1062
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 1066
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1067
    .local v0, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1069
    .local v5, width:I
    invoke-virtual {p0, v10}, Lcom/meizu/widget/MzHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1070
    .local v3, right:I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1071
    .local v2, maxX:I
    iget v4, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    .line 1072
    .local v4, scrollX:I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1074
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    iget v7, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/MzOverScroller;->startScroll(IIII)V

    .line 1075
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalScrollView;->invalidate()V

    .line 1082
    .end local v2           #maxX:I
    .end local v3           #right:I
    .end local v4           #scrollX:I
    .end local v5           #width:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 1077
    :cond_1
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v6}, Landroid/widget/MzOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1078
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v6}, Landroid/widget/MzOverScroller;->abortAnimation()V

    .line 1080
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/meizu/widget/MzHorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1092
    iget v0, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/meizu/widget/MzHorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/MzHorizontalScrollView;->smoothScrollBy(II)V

    .line 1093
    return-void
.end method

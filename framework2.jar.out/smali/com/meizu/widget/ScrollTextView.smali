.class public Lcom/meizu/widget/ScrollTextView;
.super Landroid/widget/FrameLayout;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/ScrollTextView$scrollTouchListener;,
        Lcom/meizu/widget/ScrollTextView$IDataAdapter;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "ScrollTextView"


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mCount:I

.field mCurrentItem:I

.field mCycleEnabled:Z

.field mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

.field private mFillViewport:Z

.field mFlingStopYEnd:I

.field mFlingStopYStart:I

.field mFocusedView:Landroid/widget/TextView;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field mItemHeight:I

.field mItemPaddingBottom:I

.field mItemPaddingTop:I

.field mItemWidth:I

.field private mLastMotionY:F

.field private mLastScroll:J

.field mLineView:Landroid/widget/LinearLayout;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mOffsetY:I

.field mOneScreenCount:I

.field mScrollToYEnd:I

.field mScrollToYStart:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field mValidEnd:I

.field mValidStart:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    .line 71
    iput-boolean v2, p0, Lcom/meizu/widget/ScrollTextView;->mIsLayoutDirty:Z

    .line 78
    iput-object v3, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    .line 85
    iput-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    .line 101
    iput-boolean v2, p0, Lcom/meizu/widget/ScrollTextView;->mSmoothScrollingEnabled:Z

    .line 109
    iput-boolean v2, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    .line 110
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    .line 111
    iput-object v3, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 112
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    .line 113
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    .line 115
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    .line 116
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingTop:I

    .line 117
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingBottom:I

    .line 118
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    .line 119
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemWidth:I

    .line 122
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 224
    invoke-virtual {p0, v2}, Lcom/meizu/widget/ScrollTextView;->setVerticalFadingEdgeEnabled(Z)V

    .line 225
    iput-object p1, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    .line 226
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->initScrollView()V

    .line 227
    new-instance v0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;

    invoke-direct {v0, p0}, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;-><init>(Lcom/meizu/widget/ScrollTextView;)V

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ScrollTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 9
    .parameter "context"
    .parameter "dataAdapter"
    .parameter "lineOffset"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"
    .parameter "validStart"
    .parameter "validEnd"
    .parameter "cycleEnabled"

    .prologue
    .line 233
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 234
    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 236
    return-void
.end method

.method private SetCurrentPos()V
    .locals 2

    .prologue
    .line 404
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    .line 405
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ScrollTextView;->getStoppedPos(I)I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/ScrollTextView;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/ScrollTextView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/widget/ScrollTextView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 573
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 574
    const/4 v1, 0x1

    .line 576
    :cond_0
    return v1
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1546
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1562
    :cond_0
    const/4 p1, 0x0

    .line 1572
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1564
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1570
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1149
    if-eqz p1, :cond_0

    .line 1150
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1151
    invoke-virtual {p0, v1, p1}, Lcom/meizu/widget/ScrollTextView;->smoothScrollBy(II)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/meizu/widget/ScrollTextView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 887
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/meizu/widget/ScrollTextView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 888
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 897
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 899
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 900
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 901
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 902
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 903
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 905
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 910
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 912
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 914
    move-object v1, v5

    .line 915
    move v3, v8

    .line 900
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 910
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 917
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 920
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 921
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 926
    move-object v1, v5

    goto :goto_2

    .line 917
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 929
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 933
    move-object v1, v5

    .line 934
    const/4 v3, 0x1

    goto :goto_2

    .line 935
    :cond_7
    if-eqz v7, :cond_0

    .line 940
    move-object v1, v5

    goto :goto_2

    .line 947
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 857
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 858
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 860
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 865
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/meizu/widget/ScrollTextView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getAdjustedScrollPos(I)I
    .locals 5
    .parameter "posY"

    .prologue
    .line 410
    move v0, p1

    .line 412
    .local v0, scrollY:I
    iget-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-nez v1, :cond_2

    .line 413
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    if-ge v0, v1, :cond_0

    .line 414
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    .line 416
    :cond_0
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I

    if-le v0, v1, :cond_1

    .line 417
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I

    .line 428
    :cond_1
    :goto_0
    return v0

    .line 420
    :cond_2
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    if-ge v0, v1, :cond_3

    .line 421
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v3, v4

    rem-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 423
    :cond_3
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I

    if-le v0, v1, :cond_1

    .line 424
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 522
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    .line 523
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->setFocusable(Z)V

    .line 524
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->setDescendantFocusability(I)V

    .line 525
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->setWillNotDraw(Z)V

    .line 526
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 527
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mTouchSlop:I

    .line 528
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mMinimumVelocity:I

    .line 529
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mMaximumVelocity:I

    .line 530
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1127
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/ScrollTextView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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

    .line 1482
    if-ne p1, p2, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return v1

    .line 1486
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1487
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/meizu/widget/ScrollTextView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1136
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/ScrollTextView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1138
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1039
    const/4 v3, 0x1

    .line 1041
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getHeight()I

    move-result v4

    .line 1042
    .local v4, height:I
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v1

    .line 1043
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1044
    .local v0, containerBottom:I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_2

    move v6, v7

    .line 1046
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/meizu/widget/ScrollTextView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1047
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1048
    move-object v5, p0

    .line 1051
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1052
    const/4 v3, 0x0

    .line 1058
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1059
    iput-boolean v7, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    .line 1060
    iput-boolean v8, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    .line 1063
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    move v6, v8

    .line 1044
    goto :goto_0

    .line 1054
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1055
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/meizu/widget/ScrollTextView;->doScrollY(I)V

    goto :goto_1

    .line 1054
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1285
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/meizu/widget/ScrollTextView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1287
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1289
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1290
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/meizu/widget/ScrollTextView;->scrollBy(II)V

    .line 1292
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1305
    invoke-virtual {p0, p1}, Lcom/meizu/widget/ScrollTextView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1306
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1307
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1308
    if-eqz p2, :cond_2

    .line 1309
    invoke-virtual {p0, v2, v0}, Lcom/meizu/widget/ScrollTextView;->scrollBy(II)V

    .line 1314
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1306
    goto :goto_0

    .line 1311
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/meizu/widget/ScrollTextView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 539
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 548
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 566
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1074
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1075
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1076
    const/4 v0, 0x0

    .line 1078
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1080
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getMaxScrollAmount()I

    move-result v3

    .line 1082
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/meizu/widget/ScrollTextView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1083
    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1084
    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/meizu/widget/ScrollTextView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1085
    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/meizu/widget/ScrollTextView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1086
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/meizu/widget/ScrollTextView;->doScrollY(I)V

    .line 1087
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1111
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/meizu/widget/ScrollTextView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1115
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getDescendantFocusability()I

    move-result v2

    .line 1116
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/meizu/widget/ScrollTextView;->setDescendantFocusability(I)V

    .line 1117
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->requestFocus()Z

    .line 1118
    invoke-virtual {p0, v2}, Lcom/meizu/widget/ScrollTextView;->setDescendantFocusability(I)V

    .line 1120
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1090
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1092
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1093
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v6

    .line 1105
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1108
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/meizu/widget/ScrollTextView;->doScrollY(I)V

    goto :goto_0

    .line 1094
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1095
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1096
    invoke-virtual {p0, v7}, Lcom/meizu/widget/ScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1098
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getHeight()I

    move-result v9

    add-int v5, v8, v9

    .line 1100
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1101
    sub-int v6, v1, v5

    goto :goto_1

    .line 1108
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method clearCurrentViewState()V
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1595
    :goto_0
    return-void

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 1592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 1593
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->postInvalidate()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 1249
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1250
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    .line 1251
    .local v1, oldX:I
    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    .line 1252
    .local v2, oldY:I
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1253
    .local v3, x:I
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1254
    .local v4, y:I
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 1255
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/meizu/widget/ScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1256
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/meizu/widget/ScrollTextView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    .line 1257
    invoke-direct {p0, v4}, Lcom/meizu/widget/ScrollTextView;->getAdjustedScrollPos(I)I

    move-result v5

    iput v5, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    .line 1262
    .end local v0           #child:Landroid/view/View;
    :goto_0
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    if-eq v2, v5, :cond_1

    .line 1263
    :cond_0
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/meizu/widget/ScrollTextView;->onScrollChanged(IIII)V

    .line 1266
    :cond_1
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1267
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->doScrollStop()V

    .line 1271
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->postInvalidate()V

    .line 1273
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_3
    return-void

    .line 1259
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_4
    iput v3, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    .line 1260
    iput v4, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1327
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1380
    :cond_0
    :goto_0
    return v6

    .line 1330
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getHeight()I

    move-result v3

    .line 1331
    .local v3, height:I
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v5

    .line 1332
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1333
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1336
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1337
    add-int/2addr v5, v2

    .line 1341
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/meizu/widget/ScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1342
    sub-int/2addr v4, v2

    .line 1345
    :cond_3
    const/4 v6, 0x0

    .line 1347
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1352
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1354
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1361
    :goto_1
    invoke-virtual {p0, v7}, Lcom/meizu/widget/ScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1362
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1363
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1364
    goto :goto_0

    .line 1357
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1364
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1369
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1371
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1378
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1374
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    .line 1201
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 623
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 624
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 625
    const/4 v1, 0x1

    .line 627
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/ScrollTextView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method doScrollStop()V
    .locals 6

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1245
    :goto_0
    return-void

    .line 1231
    :cond_0
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->getStoppedPos(I)I

    move-result v0

    .line 1232
    .local v0, newScrollY:I
    iget-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1233
    if-nez v0, :cond_1

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    if-le v1, v2, :cond_1

    .line 1234
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1237
    :cond_1
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    add-int/2addr v0, v1

    .line 1240
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    if-eq v0, v1, :cond_2

    .line 1241
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_0

    .line 1243
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->setCurrentViewState()V

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 640
    iget-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 642
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 643
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 646
    const/4 v0, 0x0

    .line 647
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 649
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 678
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 655
    :cond_2
    const/4 v1, 0x0

    .line 656
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 657
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 678
    goto :goto_0

    .line 659
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 660
    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 662
    :cond_4
    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->fullScroll(I)Z

    move-result v1

    .line 664
    goto :goto_1

    .line 666
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 667
    invoke-virtual {p0, v5}, Lcom/meizu/widget/ScrollTextView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 669
    :cond_5
    invoke-virtual {p0, v5}, Lcom/meizu/widget/ScrollTextView;->fullScroll(I)Z

    move-result v1

    .line 671
    goto :goto_1

    .line 673
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/meizu/widget/ScrollTextView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 657
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 12
    .parameter "velocityY"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 1499
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1500
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-nez v0, :cond_3

    .line 1501
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    iget v7, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    iget v8, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I

    move v4, p1

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1507
    :goto_0
    if-lez p1, :cond_4

    move v9, v11

    .line 1509
    .local v9, movingDown:Z
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/meizu/widget/ScrollTextView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 1511
    .local v10, newFocused:Landroid/view/View;
    if-nez v10, :cond_0

    .line 1512
    move-object v10, p0

    .line 1515
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_1

    if-eqz v9, :cond_5

    const/16 v0, 0x82

    :goto_2
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1517
    iput-boolean v11, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    .line 1518
    iput-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    .line 1521
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ScrollTextView;->awakenScrollBars(I)Z

    .line 1522
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->invalidate()V

    .line 1524
    .end local v9           #movingDown:Z
    .end local v10           #newFocused:Landroid/view/View;
    :cond_2
    return-void

    .line 1504
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/lit8 v5, v5, 0x50

    sub-int v7, v4, v5

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/lit8 v5, v5, 0x50

    add-int v8, v4, v5

    move v4, p1

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_4
    move v9, v3

    .line 1507
    goto :goto_1

    .line 1515
    .restart local v9       #movingDown:Z
    .restart local v10       #newFocused:Landroid/view/View;
    :cond_5
    const/16 v0, 0x21

    goto :goto_2
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1003
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1004
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getHeight()I

    move-result v2

    .line 1006
    .local v2, height:I
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1007
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1009
    if-eqz v1, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    .line 1011
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1012
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1013
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1014
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1018
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/meizu/widget/ScrollTextView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1003
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 511
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method getCurrentItemId()I
    .locals 2

    .prologue
    .line 1580
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    if-nez v0, :cond_0

    .line 1581
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 1584
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ScrollTextView;->getStoppedPos(I)I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 518
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mBottom:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSelectedId()I
    .locals 1

    .prologue
    .line 1576
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    return v0
.end method

.method getStoppedPos(I)I
    .locals 5
    .parameter "posY"

    .prologue
    .line 433
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    if-nez v1, :cond_1

    .line 434
    const/4 v0, 0x0

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/ScrollTextView;->getAdjustedScrollPos(I)I

    move-result v0

    .line 438
    .local v0, scrollY:I
    if-ltz v0, :cond_3

    .line 439
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 444
    :goto_1
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int v0, v1, v2

    .line 447
    iget-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-nez v1, :cond_4

    .line 448
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    if-ge v0, v1, :cond_2

    .line 449
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    .line 451
    :cond_2
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    if-le v0, v1, :cond_0

    .line 452
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    goto :goto_0

    .line 441
    :cond_3
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_1

    .line 455
    :cond_4
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    if-ge v0, v1, :cond_5

    .line 456
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v3, v4

    rem-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 458
    :cond_5
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    if-le v0, v1, :cond_0

    .line 459
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x0

    .line 502
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1207
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mPaddingLeft:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/meizu/widget/ScrollTextView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1209
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1211
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1212
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
    .line 1217
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1218
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mPaddingLeft:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/meizu/widget/ScrollTextView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1220
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1223
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1224
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "hasFocus"
    .parameter "direction"
    .parameter "unused"

    .prologue
    .line 1622
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 694
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    iget-boolean v5, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    .line 749
    :goto_0
    return v3

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->canScroll()Z

    move-result v5

    if-nez v5, :cond_1

    .line 699
    iput-boolean v4, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    move v3, v4

    .line 700
    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 705
    .local v1, y:F
    packed-switch v0, :pswitch_data_0

    .line 749
    :goto_1
    iget-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    goto :goto_0

    .line 716
    :pswitch_0
    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    .line 717
    .local v2, yDiff:I
    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mTouchSlop:I

    if-le v2, v4, :cond_2

    .line 718
    iput-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    .line 721
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->clearCurrentViewState()V

    goto :goto_1

    .line 726
    .end local v2           #yDiff:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->clearCurrentViewState()V

    .line 728
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    .line 735
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 741
    :pswitch_2
    iput-boolean v4, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    goto :goto_1

    .line 705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
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
    .line 1443
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mIsLayoutDirty:Z

    .line 1446
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/meizu/widget/ScrollTextView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/widget/ScrollTextView;->scrollToChild(Landroid/view/View;)V

    .line 1449
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    .line 1451
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->SetCurrentPos()V

    .line 1452
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->setCurrentViewState()V

    .line 1455
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/ScrollTextView;->scrollTo(II)V

    .line 1456
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 475
    :cond_0
    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingTop:I

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingBottom:I

    .line 479
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    .line 480
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemWidth:I

    .line 482
    iget-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-nez v1, :cond_2

    .line 483
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    .line 484
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    .line 485
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    .line 486
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 488
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    .line 489
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    .line 490
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    .line 491
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    .end local v0           #view:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1406
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1407
    const/16 p1, 0x82

    .line 1412
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1416
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1424
    :cond_1
    :goto_2
    return v1

    .line 1408
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1409
    const/16 p1, 0x21

    goto :goto_0

    .line 1412
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1420
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/meizu/widget/ScrollTextView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1424
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1462
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1463
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/meizu/widget/ScrollTextView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1470
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1471
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/widget/ScrollTextView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1472
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/meizu/widget/ScrollTextView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1473
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/meizu/widget/ScrollTextView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v6

    if-eqz v6, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v5

    .line 762
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 766
    iget-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_2

    .line 767
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 769
    :cond_2
    iget-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 772
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 774
    .local v4, y:F
    packed-switch v0, :pswitch_data_0

    .line 827
    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 780
    :pswitch_0
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 781
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 784
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->clearCurrentViewState()V

    .line 787
    iput v4, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    goto :goto_1

    .line 791
    :pswitch_1
    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    sub-float/2addr v6, v4

    float-to-int v1, v6

    .line 792
    .local v1, deltaY:I
    iput v4, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    .line 793
    invoke-virtual {p0, v5, v1}, Lcom/meizu/widget/ScrollTextView;->scrollBy(II)V

    goto :goto_1

    .line 796
    .end local v1           #deltaY:I
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 797
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    if-nez v3, :cond_5

    .line 798
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->doScrollStop()V

    .line 799
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->postInvalidate()V

    goto :goto_1

    .line 802
    :cond_5
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 803
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v2, v5

    .line 805
    .local v2, initialVelocity:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mMinimumVelocity:I

    if-le v5, v6, :cond_6

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 806
    neg-int v5, v2

    invoke-virtual {p0, v5}, Lcom/meizu/widget/ScrollTextView;->fling(I)V

    .line 812
    :goto_2
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_3

    .line 813
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 814
    iput-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 808
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->doScrollStop()V

    .line 809
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->postInvalidate()V

    goto :goto_2

    .line 818
    .end local v2           #initialVelocity:I
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->doScrollStop()V

    .line 819
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->postInvalidate()V

    .line 821
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_3

    .line 822
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 823
    iput-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 965
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 966
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getHeight()I

    move-result v2

    .line 968
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 969
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 970
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v0

    .line 971
    .local v0, count:I
    if-lez v0, :cond_0

    .line 972
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 973
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 974
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 983
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 985
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/meizu/widget/ScrollTextView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 965
    goto :goto_0

    .line 978
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 979
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 980
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public refreshCount(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 305
    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/ScrollTextView;->refreshData(IIIIZ)V

    .line 306
    return-void
.end method

.method public refreshCountAndCurrent(II)V
    .locals 6
    .parameter "count"
    .parameter "current"

    .prologue
    .line 313
    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/ScrollTextView;->refreshData(IIIIZ)V

    .line 314
    return-void
.end method

.method public refreshCurrent(I)V
    .locals 6
    .parameter "current"

    .prologue
    .line 309
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/ScrollTextView;->refreshData(IIIIZ)V

    .line 310
    return-void
.end method

.method refreshData(IIIIZ)V
    .locals 9
    .parameter "count"
    .parameter "currentItem"
    .parameter "validStart"
    .parameter "validEnd"
    .parameter "needAdd"

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    .line 317
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v5, :cond_0

    .line 318
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 321
    :cond_0
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    if-gez p1, :cond_2

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 325
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 326
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 329
    :cond_3
    iput p1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    .line 330
    iput p3, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    .line 331
    iput p4, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    .line 333
    if-ne p5, v7, :cond_9

    .line 334
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 337
    const/4 v4, 0x0

    .line 338
    .local v4, view:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 340
    .local v3, txtHeight:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 342
    .local v2, p:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, p1, :cond_7

    .line 346
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 347
    .restart local v4       #view:Landroid/widget/TextView;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 348
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 350
    if-eqz v4, :cond_6

    .line 351
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v5, :cond_4

    .line 353
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    invoke-interface {v5, v4, v0}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->setViewData(Landroid/widget/TextView;I)V

    .line 354
    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 357
    :cond_4
    if-lt v0, p3, :cond_5

    if-le v0, p4, :cond_6

    .line 358
    :cond_5
    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    :cond_7
    iget-boolean v5, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-ne v7, v5, :cond_9

    .line 364
    const/4 v0, 0x0

    :goto_2
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    if-ge v0, v5, :cond_9

    .line 368
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 369
    .restart local v4       #view:Landroid/widget/TextView;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 370
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 372
    if-eqz v4, :cond_8

    .line 373
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v5, :cond_8

    .line 375
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    invoke-interface {v5, v4, v0}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->setViewData(Landroid/widget/TextView;I)V

    .line 376
    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 364
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 383
    .end local v0           #index:I
    .end local v2           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #txtHeight:I
    .end local v4           #view:Landroid/widget/TextView;
    :cond_9
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    if-eq p2, v5, :cond_d

    .line 384
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 385
    .local v1, oldCurrentItem:I
    iput p2, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 387
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    if-ge v5, v6, :cond_a

    .line 388
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    iput v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 391
    :cond_a
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    if-gt v5, v6, :cond_b

    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    if-lt v5, v6, :cond_c

    .line 392
    :cond_b
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    iput v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 395
    :cond_c
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v5, :cond_d

    .line 396
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    invoke-interface {v5, p0, v1, v6}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    .line 400
    .end local v1           #oldCurrentItem:I
    :cond_d
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->requestLayout()V

    goto/16 :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1385
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1386
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1387
    invoke-direct {p0, p2}, Lcom/meizu/widget/ScrollTextView;->scrollToChild(Landroid/view/View;)V

    .line 1393
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1394
    return-void

    .line 1390
    :cond_1
    iput-object p2, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1430
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

    .line 1432
    invoke-direct {p0, p2, p3}, Lcom/meizu/widget/ScrollTextView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mIsLayoutDirty:Z

    .line 1438
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1439
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1535
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1536
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/meizu/widget/ScrollTextView;->clamp(III)I

    move-result p1

    .line 1537
    invoke-direct {p0, p2}, Lcom/meizu/widget/ScrollTextView;->getAdjustedScrollPos(I)I

    move-result p2

    .line 1539
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1540
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1543
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method setCurrentViewState()V
    .locals 3

    .prologue
    .line 1598
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 1600
    .local v0, oldCurrent:I
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-nez v1, :cond_1

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1604
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 1607
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 1608
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getCurrentItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 1610
    :cond_3
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1611
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->setFocusedItem(Landroid/widget/TextView;)V

    .line 1614
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getCurrentItemId()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 1615
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    if-eq v1, v0, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    invoke-interface {v1, p0, v0, v2}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 10
    .parameter "dataAdapter"
    .parameter "lineOffset"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"
    .parameter "validStart"
    .parameter "validEnd"
    .parameter "cycleEnabled"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    .line 249
    iput p4, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    .line 250
    iput p5, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    .line 251
    move/from16 v0, p6

    iput v0, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    .line 252
    move/from16 v0, p7

    iput v0, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    .line 253
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 256
    const/high16 v1, -0x4080

    cmpl-float v1, p2, v1

    if-nez v1, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    .line 265
    :goto_0
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    if-lt p4, v1, :cond_0

    add-int/lit8 v1, p7, 0x1

    if-lt v1, p4, :cond_0

    if-lez p6, :cond_1

    .line 267
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->removeAllViews()V

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    .line 275
    :cond_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v9, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v9, p:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    .line 279
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 280
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v9}, Lcom/meizu/widget/ScrollTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    const/4 v6, 0x1

    move-object v1, p0

    move v2, p4

    move v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/widget/ScrollTextView;->refreshData(IIIIZ)V

    .line 284
    return-void

    .line 259
    .end local v9           #p:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 260
    .local v8, metrics:Landroid/util/DisplayMetrics;
    iget v7, v8, Landroid/util/DisplayMetrics;->density:F

    .line 261
    .local v7, density:F
    mul-float v1, p2, v7

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    goto :goto_0
.end method

.method public setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;III)V
    .locals 9
    .parameter "dataAdapter"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"

    .prologue
    .line 240
    const/high16 v2, -0x4080

    const/4 v6, 0x0

    add-int/lit8 v7, p3, -0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 242
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 598
    iput-boolean p1, p0, Lcom/meizu/widget/ScrollTextView;->mFillViewport:Z

    .line 599
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->requestLayout()V

    .line 601
    :cond_0
    return-void
.end method

.method setFocusedItem(Landroid/widget/TextView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    invoke-interface {v0, p1}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->setFocusedItemAction(Landroid/widget/TextView;)V

    .line 293
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 617
    iput-boolean p1, p0, Lcom/meizu/widget/ScrollTextView;->mSmoothScrollingEnabled:Z

    .line 618
    return-void
.end method

.method setUnfocusedItem(Landroid/widget/TextView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 298
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    invoke-interface {v0, p1}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->setUnfocusedItemAction(Landroid/widget/TextView;)V

    .line 302
    :cond_0
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1167
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/meizu/widget/ScrollTextView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1168
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1169
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1170
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/meizu/widget/ScrollTextView;->awakenScrollBars(I)Z

    .line 1171
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->invalidate()V

    .line 1178
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/widget/ScrollTextView;->mLastScroll:J

    .line 1179
    return-void

    .line 1173
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1174
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1176
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/meizu/widget/ScrollTextView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1190
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/ScrollTextView;->smoothScrollBy(II)V

    .line 1191
    return-void
.end method

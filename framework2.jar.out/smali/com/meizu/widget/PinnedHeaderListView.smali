.class public Lcom/meizu/widget/PinnedHeaderListView;
.super Lcom/meizu/widget/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/PinnedHeaderListView$1;,
        Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;,
        Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x1

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x14

.field private static final FADING:I = 0x2

.field private static final MAX_ALPHA:I = 0xff

.field private static final TOP:I


# instance fields
.field private mAdapter:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mClipRect:Landroid/graphics/Rect;

.field private mHeaderPaddingLeft:I

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 113
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    .line 106
    const/16 v0, 0x14

    iput v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 122
    invoke-super {p0, p0}, Lcom/meizu/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 123
    invoke-super {p0, p0}, Lcom/meizu/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 124
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;J)V
    .locals 7
    .parameter "canvas"
    .parameter "header"
    .parameter "currentTime"

    .prologue
    const/4 v6, 0x0

    .line 524
    iget-boolean v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v3, :cond_0

    .line 525
    iget-wide v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v3, p3

    long-to-int v1, v3

    .line 526
    .local v1, timeLeft:I
    if-gtz v1, :cond_3

    .line 527
    iget v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 528
    iget-boolean v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 529
    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 535
    .end local v1           #timeLeft:I
    :cond_0
    :goto_0
    iget-boolean v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_2

    .line 536
    iget-object v2, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 537
    .local v2, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 538
    .local v0, saveCount:I
    iget v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v3, v3

    iget v4, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 539
    iget v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 540
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaderWidth:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 541
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v5, 0x1f

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 543
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 544
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 546
    .end local v0           #saveCount:I
    .end local v2           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 531
    .restart local v1       #timeLeft:I
    :cond_3
    iget v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v4, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v5, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 8
    .parameter "viewIndex"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 355
    iget-object v5, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iget-object v3, v5, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 356
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 357
    iget v5, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 359
    .local v4, widthSpec:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 360
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_1

    .line 361
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 365
    .local v1, heightSpec:I
    :goto_0
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 366
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 367
    .local v0, height:I
    iget-object v5, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iput v0, v5, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 368
    iget v5, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-virtual {v3, v6, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 370
    .end local v0           #height:I
    .end local v1           #heightSpec:I
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #widthSpec:I
    :cond_0
    return-void

    .line 363
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #widthSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #heightSpec:I
    goto :goto_0
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    .line 461
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimating:Z

    .line 462
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_1

    .line 464
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimating:Z

    .line 465
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->invalidate()V

    .line 469
    :cond_0
    return-void

    .line 462
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private smoothScrollToPartition(I)Z
    .locals 5
    .parameter "partition"

    .prologue
    .line 443
    iget-object v4, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v4, p1}, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    .line 444
    .local v3, position:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 445
    const/4 v4, 0x0

    .line 457
    :goto_0
    return v4

    .line 448
    :cond_0
    const/4 v2, 0x0

    .line 449
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 450
    iget-object v4, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    .line 451
    .local v0, header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v4, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_1

    .line 452
    iget v4, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    .line 449
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    .end local v0           #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/meizu/widget/PinnedHeaderListView;->smoothScrollToPositionFromTop(II)V

    .line 457
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 473
    iget-boolean v8, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimating:Z

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 475
    .local v1, currentTime:J
    :goto_0
    const/4 v7, 0x0

    .line 476
    .local v7, top:I
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getBottom()I

    move-result v0

    .line 477
    .local v0, bottom:I
    const/4 v3, 0x0

    .line 478
    .local v3, hasVisibleHeaders:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget v8, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_4

    .line 479
    iget-object v8, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 480
    .local v4, header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_0

    .line 481
    const/4 v3, 0x1

    .line 482
    iget v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_2

    iget v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v8, v0, :cond_2

    .line 483
    iget v0, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 478
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 473
    .end local v0           #bottom:I
    .end local v1           #currentTime:J
    .end local v3           #hasVisibleHeaders:Z
    .end local v4           #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    .end local v5           #i:I
    .end local v7           #top:I
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 484
    .restart local v0       #bottom:I
    .restart local v1       #currentTime:J
    .restart local v3       #hasVisibleHeaders:Z
    .restart local v4       #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v5       #i:I
    .restart local v7       #top:I
    :cond_2
    iget v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_3

    iget v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_0

    .line 485
    :cond_3
    iget v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v9, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v6, v8, v9

    .line 486
    .local v6, newTop:I
    if-le v6, v7, :cond_0

    .line 487
    move v7, v6

    goto :goto_2

    .line 493
    .end local v4           #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    .end local v6           #newTop:I
    :cond_4
    if-eqz v3, :cond_5

    .line 494
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 495
    iget-object v8, p0, Lcom/meizu/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v10, v10, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 496
    iget-object v8, p0, Lcom/meizu/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 499
    :cond_5
    invoke-super {p0, p1}, Lcom/meizu/widget/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 501
    if-eqz v3, :cond_a

    .line 502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 505
    iget v5, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    .line 506
    iget-object v8, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 507
    .restart local v4       #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_6

    iget v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_7

    iget v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_6

    .line 508
    :cond_7
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/meizu/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_3

    .line 512
    .end local v4           #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    :cond_8
    const/4 v5, 0x0

    :goto_4
    iget v8, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_a

    .line 513
    iget-object v8, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 514
    .restart local v4       #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_9

    iget v8, v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_9

    .line 515
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/meizu/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;J)V

    .line 512
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 520
    .end local v4           #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    :cond_a
    invoke-direct {p0}, Lcom/meizu/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 521
    return-void
.end method

.method public getCurrentOverScrollDistance()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mCurrentOverScrollDistance:I

    return v0
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1
    .parameter "viewIndex"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/meizu/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 248
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPositionAt(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getChildCount()I

    move-result v0

    .line 401
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 402
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->isStackFromBottom()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 404
    invoke-virtual {p0, v1}, Lcom/meizu/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 405
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v1

    .line 420
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 403
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 411
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 412
    invoke-virtual {p0, v1}, Lcom/meizu/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 413
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_1

    .line 411
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 420
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/widget/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 4

    .prologue
    .line 376
    iget v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 377
    iget-object v2, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, v1

    .line 378
    .local v0, header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 379
    iget v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    .line 382
    .end local v0           #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 425
    iget v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mScrollState:I

    if-nez v3, :cond_2

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 427
    .local v2, y:I
    iget v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 428
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v3, v1

    .line 429
    .local v0, header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v3, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v3, v2, :cond_0

    iget v3, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v4, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 431
    invoke-direct {p0, v1}, Lcom/meizu/widget/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result v3

    .line 439
    .end local v0           #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    .end local v1           #i:I
    .end local v2           #y:I
    :goto_0
    return v3

    .line 433
    .restart local v0       #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v1       #i:I
    .restart local v2       #y:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 439
    .end local v0           #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    .end local v1           #i:I
    .end local v2           #y:I
    :cond_2
    invoke-super {p0, p1}, Lcom/meizu/widget/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getHeight()I

    move-result v7

    .line 210
    .local v7, height:I
    const/4 v11, 0x0

    .line 211
    .local v11, windowTop:I
    move v10, v7

    .line 213
    .local v10, windowBottom:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    if-ge v8, v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v6, v0, v8

    .line 215
    .local v6, header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v0, v6, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v0, :cond_0

    .line 216
    iget v0, v6, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v0, :cond_1

    .line 217
    iget v0, v6, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v6, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v11, v0, v1

    .line 213
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget v0, v6, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget v10, v6, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 225
    .end local v6           #header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 226
    .local v9, selectedView:Landroid/view/View;
    if-eqz v9, :cond_3

    .line 227
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v11, :cond_5

    .line 228
    invoke-virtual {p0, p3, v11}, Lcom/meizu/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    .line 234
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 237
    :cond_4
    return-void

    .line 229
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v10, :cond_3

    .line 230
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0, p3, v0}, Lcom/meizu/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 128
    invoke-super/range {p0 .. p5}, Lcom/meizu/widget/AutoScrollListView;->onLayout(ZIIII)V

    .line 129
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    .line 130
    sub-int v0, p4, p2

    iget v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaderWidth:I

    .line 131
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v5, 0x0

    .line 158
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v3, :cond_4

    .line 159
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    .line 160
    .local v0, count:I
    iget v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    if-eq v0, v3, :cond_0

    .line 161
    iput v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    .line 162
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    if-nez v3, :cond_2

    .line 163
    iget v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    .line 171
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    if-ge v2, v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/meizu/widget/PinnedHeaderListView$1;)V

    aput-object v4, v3, v2

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_0

    .line 165
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    .line 166
    .local v1, headers:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iget v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    .line 167
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 178
    .end local v1           #headers:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v2       #i:I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 179
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/meizu/widget/PinnedHeaderListView;)V

    .line 180
    invoke-direct {p0}, Lcom/meizu/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 183
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_4
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_5

    .line 184
    iget-object v3, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 186
    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 196
    iput p2, p0, Lcom/meizu/widget/PinnedHeaderListView;->mScrollState:I

    .line 197
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 200
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/meizu/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 139
    move-object v0, p1

    check-cast v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 140
    invoke-super {p0, p1}, Lcom/meizu/widget/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 7
    .parameter "viewIndex"
    .parameter "position"
    .parameter "fade"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/meizu/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 310
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {p0, v6}, Lcom/meizu/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 311
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v6, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v6, p1

    .line 314
    .local v2, header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 315
    const/4 v6, 0x2

    iput v6, v2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 316
    const/16 v6, 0xff

    iput v6, v2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 317
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 319
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v5

    .line 320
    .local v5, top:I
    iput v5, v2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 321
    if-eqz p3, :cond_0

    .line 322
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v6, v5

    .line 323
    .local v0, bottom:I
    iget v3, v2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 324
    .local v3, headerHeight:I
    if-ge v0, v3, :cond_0

    .line 325
    sub-int v4, v0, v3

    .line 326
    .local v4, portion:I
    add-int v6, v3, v4

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v6, v3

    iput v6, v2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 327
    add-int v6, v5, v4

    iput v6, v2, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5
    .parameter "viewIndex"
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 339
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 340
    .local v0, header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_2

    .line 341
    iget v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 342
    iget-boolean v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    .line 343
    iput-boolean v3, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 344
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 346
    :cond_1
    iput-boolean v3, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 347
    iget-wide v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 348
    iput-boolean v4, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_2
    iput-boolean v4, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    goto :goto_0
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 3
    .parameter "viewIndex"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/4 v2, 0x1

    .line 277
    invoke-direct {p0, p1}, Lcom/meizu/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 278
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 279
    .local v0, header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    iput v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 280
    iget-boolean v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 281
    iget-wide v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 282
    iget v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 283
    iput p2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 299
    :goto_0
    return-void

    .line 284
    :cond_0
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_3

    .line 285
    :cond_1
    iget-boolean v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    .line 286
    iget v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 291
    :goto_1
    iput-boolean v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 292
    iput-boolean v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 293
    iget-wide v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 294
    iput p2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_0

    .line 288
    :cond_2
    iput-boolean v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 289
    iget v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_1

    .line 296
    :cond_3
    iput-boolean v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 297
    iput p2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3
    .parameter "viewIndex"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-direct {p0, p1}, Lcom/meizu/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 260
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 261
    .local v0, header:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 262
    iput p2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 263
    iput v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 266
    iput-boolean v2, v0, Lcom/meizu/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 267
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 152
    invoke-super {p0, p0}, Lcom/meizu/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 153
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 146
    invoke-super {p0, p0}, Lcom/meizu/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 147
    return-void
.end method

.method public setPinnedHeaderAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 134
    iput p1, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 135
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 550
    iget-object v2, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    instance-of v2, v2, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;

    if-eqz v2, :cond_0

    .line 551
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    check-cast v0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;

    .line 552
    .local v0, indexerListAdapter:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getItemPlacementInSection(I)Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    move-result-object v1

    .line 553
    .local v1, placement:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;
    iget-boolean v2, v1, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/widget/PinnedHeaderListView;->mSize:I

    if-lez v2, :cond_0

    .line 555
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v2

    invoke-super {p0, p1, v2}, Lcom/meizu/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 561
    .end local v0           #indexerListAdapter:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;
    .end local v1           #placement:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/widget/AutoScrollListView;->setSelection(I)V

    goto :goto_0
.end method

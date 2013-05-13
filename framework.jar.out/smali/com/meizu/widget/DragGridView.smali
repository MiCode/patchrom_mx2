.class public Lcom/meizu/widget/DragGridView;
.super Landroid/view/ViewGroup;
.source "DragGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/DragGridView$1;,
        Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;,
        Lcom/meizu/widget/DragGridView$MoveForwardAnimator;,
        Lcom/meizu/widget/DragGridView$InnerShadowBuilder;,
        Lcom/meizu/widget/DragGridView$ItemDragShadowGetter;,
        Lcom/meizu/widget/DragGridView$InnerListenerImpl;,
        Lcom/meizu/widget/DragGridView$OnItemClickListener;,
        Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DELAY:I = 0x0

.field private static final ANIMATOR_DURATION:I = 0x96

.field private static final INVALID_POSITION:I = -0x1

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mChildHeight:I

.field private mChildWidth:I

.field private mChildren:[Landroid/view/View;

.field private mColumnWidth:I

.field private mCurrentEnterPosition:I

.field private mDragPosition:I

.field private mDragView:Landroid/view/View;

.field private mHorizontalSpacing:I

.field private final mInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mIsAnimating:Z

.field private mIsDraggable:Z

.field private mItemCount:I

.field private mMotionX:I

.field private mMotionY:I

.field private final mMoveBackwardRunnable:Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;

.field private final mMoveForwardRunnable:Lcom/meizu/widget/DragGridView$MoveForwardAnimator;

.field private mNumColumns:I

.field private mOnItemClickListener:Lcom/meizu/widget/DragGridView$OnItemClickListener;

.field private mOnItemPositionChangeListener:Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/meizu/widget/DragGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/widget/DragGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragGridView;->mIsDraggable:Z

    .line 252
    iput v1, p0, Lcom/meizu/widget/DragGridView;->mDragPosition:I

    .line 254
    new-instance v0, Lcom/meizu/widget/DragGridView$MoveForwardAnimator;

    invoke-direct {v0, p0, v2}, Lcom/meizu/widget/DragGridView$MoveForwardAnimator;-><init>(Lcom/meizu/widget/DragGridView;Lcom/meizu/widget/DragGridView$1;)V

    iput-object v0, p0, Lcom/meizu/widget/DragGridView;->mMoveForwardRunnable:Lcom/meizu/widget/DragGridView$MoveForwardAnimator;

    .line 256
    new-instance v0, Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;

    invoke-direct {v0, p0, v2}, Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;-><init>(Lcom/meizu/widget/DragGridView;Lcom/meizu/widget/DragGridView$1;)V

    iput-object v0, p0, Lcom/meizu/widget/DragGridView;->mMoveBackwardRunnable:Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;

    .line 258
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/DragGridView;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragGridView;->mIsAnimating:Z

    .line 269
    iput v1, p0, Lcom/meizu/widget/DragGridView;->mCurrentEnterPosition:I

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/widget/DragGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mChildWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/meizu/widget/DragGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mChildHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/widget/DragGridView;III)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/DragGridView;->getChildLayoutPoint(III)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/widget/DragGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mMotionX:I

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/widget/DragGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mMotionY:I

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/widget/DragGridView;III)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/DragGridView;->makeAnimator(III)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/widget/DragGridView;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/widget/DragGridView;->mChildren:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/widget/DragGridView;->mOnItemPositionChangeListener:Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/DragGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/meizu/widget/DragGridView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/widget/DragGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/meizu/widget/DragGridView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/widget/DragGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mCurrentEnterPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/widget/DragGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/widget/DragGridView;->mCurrentEnterPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/widget/DragGridView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/widget/DragGridView;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/widget/DragGridView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/widget/DragGridView;->mDragView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/widget/DragGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mDragPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/widget/DragGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/widget/DragGridView;->mDragPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$MoveForwardAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/widget/DragGridView;->mMoveForwardRunnable:Lcom/meizu/widget/DragGridView$MoveForwardAnimator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/widget/DragGridView;->mMoveBackwardRunnable:Lcom/meizu/widget/DragGridView$MoveBackwardAnimator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/DragGridView;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/widget/DragGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/DragGridView;)Lcom/meizu/widget/DragGridView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/widget/DragGridView;->mOnItemClickListener:Lcom/meizu/widget/DragGridView$OnItemClickListener;

    return-object v0
.end method

.method private getChildLayoutPoint(III)Landroid/graphics/Point;
    .locals 6
    .parameter "position"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 133
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 134
    .local v3, point:Landroid/graphics/Point;
    iget v5, p0, Lcom/meizu/widget/DragGridView;->mNumColumns:I

    rem-int v0, p1, v5

    .line 135
    .local v0, col:I
    iget v5, p0, Lcom/meizu/widget/DragGridView;->mNumColumns:I

    div-int v4, p1, v5

    .line 136
    .local v4, row:I
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->getPaddingLeft()I

    move-result v1

    .line 137
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->getPaddingTop()I

    move-result v2

    .line 139
    .local v2, paddingTop:I
    iget v5, p0, Lcom/meizu/widget/DragGridView;->mHorizontalSpacing:I

    add-int/2addr v5, p2

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 140
    iget v5, p0, Lcom/meizu/widget/DragGridView;->mVerticalSpacing:I

    add-int/2addr v5, p3

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 141
    return-object v3
.end method

.method private makeAnimator(III)Landroid/animation/ObjectAnimator;
    .locals 12
    .parameter "from"
    .parameter "to"
    .parameter "duration"

    .prologue
    .line 420
    iget-object v9, p0, Lcom/meizu/widget/DragGridView;->mChildren:[Landroid/view/View;

    aget-object v1, v9, p1

    .line 421
    .local v1, fromView:Landroid/view/View;
    iget-object v9, p0, Lcom/meizu/widget/DragGridView;->mChildren:[Landroid/view/View;

    aget-object v6, v9, p2

    .line 423
    .local v6, toView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    .line 424
    .local v2, fromX:F
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    .line 425
    .local v3, fromY:F
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    .line 426
    .local v7, toX:F
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v8

    .line 428
    .local v8, toY:F
    const-string/jumbo v9, "x"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 429
    .local v4, pvhLeft:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "y"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v11, 0x1

    aput v8, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 430
    .local v5, pvhTop:Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v1, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 431
    .local v0, animator:Landroid/animation/ObjectAnimator;
    int-to-long v9, p3

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 432
    const-wide/16 v9, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 433
    iget-object v9, p0, Lcom/meizu/widget/DragGridView;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/DragGridView;->mMotionX:I

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/DragGridView;->mMotionY:I

    .line 382
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mItemCount:I

    .line 107
    .local v0, N:I
    if-lez v0, :cond_0

    iget v6, p0, Lcom/meizu/widget/DragGridView;->mNumColumns:I

    if-gtz v6, :cond_1

    .line 130
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v6, p0, Lcom/meizu/widget/DragGridView;->mChildren:[Landroid/view/View;

    const/4 v7, 0x0

    aget-object v1, v6, v7

    .line 112
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 113
    .local v3, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 115
    .local v2, childHeight:I
    iget v6, p0, Lcom/meizu/widget/DragGridView;->mColumnWidth:I

    if-lez v6, :cond_2

    .line 116
    iget v3, p0, Lcom/meizu/widget/DragGridView;->mColumnWidth:I

    .line 119
    :cond_2
    iput v3, p0, Lcom/meizu/widget/DragGridView;->mChildWidth:I

    .line 120
    iput v2, p0, Lcom/meizu/widget/DragGridView;->mChildHeight:I

    .line 125
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 126
    iget-object v6, p0, Lcom/meizu/widget/DragGridView;->mChildren:[Landroid/view/View;

    aget-object v1, v6, v4

    .line 127
    invoke-direct {p0, v4, v3, v2}, Lcom/meizu/widget/DragGridView;->getChildLayoutPoint(III)Landroid/graphics/Point;

    move-result-object v5

    .line 128
    .local v5, point:Landroid/graphics/Point;
    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v2

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 125
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, 0x4000

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 229
    iget v7, p0, Lcom/meizu/widget/DragGridView;->mColumnWidth:I

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0, v7, p2}, Lcom/meizu/widget/DragGridView;->measureChildren(II)V

    .line 231
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->getPaddingTop()I

    move-result v5

    .line 232
    .local v5, paddingTop:I
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->getPaddingBottom()I

    move-result v4

    .line 233
    .local v4, paddingBottom:I
    iget v7, p0, Lcom/meizu/widget/DragGridView;->mItemCount:I

    iget v10, p0, Lcom/meizu/widget/DragGridView;->mNumColumns:I

    div-int v10, v7, v10

    iget v7, p0, Lcom/meizu/widget/DragGridView;->mItemCount:I

    iget v11, p0, Lcom/meizu/widget/DragGridView;->mNumColumns:I

    rem-int/2addr v7, v11

    if-eqz v7, :cond_0

    move v7, v8

    :goto_0
    add-int v3, v10, v7

    .line 234
    .local v3, numRows:I
    const/4 v6, 0x0

    .line 235
    .local v6, totalHeight:I
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mItemCount:I

    .line 236
    .local v0, N:I
    iget-object v7, p0, Lcom/meizu/widget/DragGridView;->mChildren:[Landroid/view/View;

    aget-object v1, v7, v9

    .line 237
    .local v1, child:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 238
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 237
    iget v7, p0, Lcom/meizu/widget/DragGridView;->mNumColumns:I

    add-int/2addr v2, v7

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #numRows:I
    .end local v6           #totalHeight:I
    :cond_0
    move v7, v9

    .line 233
    goto :goto_0

    .line 240
    .restart local v0       #N:I
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #i:I
    .restart local v3       #numRows:I
    .restart local v6       #totalHeight:I
    :cond_1
    add-int v7, v5, v4

    if-le v3, v8, :cond_2

    add-int/lit8 v3, v3, -0x1

    .end local v3           #numRows:I
    :cond_2
    iget v8, p0, Lcom/meizu/widget/DragGridView;->mVerticalSpacing:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 242
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, p1, v7}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 243
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    .line 181
    if-eqz p1, :cond_2

    .line 182
    iput-object p1, p0, Lcom/meizu/widget/DragGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 183
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->removeAllViews()V

    .line 185
    iget-object v4, p0, Lcom/meizu/widget/DragGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 187
    .local v0, SIZE:I
    new-array v4, v0, [Landroid/view/View;

    iput-object v4, p0, Lcom/meizu/widget/DragGridView;->mChildren:[Landroid/view/View;

    .line 188
    iput v0, p0, Lcom/meizu/widget/DragGridView;->mItemCount:I

    .line 190
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 193
    iget-object v4, p0, Lcom/meizu/widget/DragGridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, child:Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/widget/DragGridView;->mChildren:[Landroid/view/View;

    aput-object v1, v4, v2

    .line 196
    invoke-virtual {p0, v1}, Lcom/meizu/widget/DragGridView;->addView(Landroid/view/View;)V

    .line 198
    new-instance v3, Lcom/meizu/widget/DragGridView$InnerListenerImpl;

    invoke-direct {v3, p0, v2}, Lcom/meizu/widget/DragGridView$InnerListenerImpl;-><init>(Lcom/meizu/widget/DragGridView;I)V

    .line 199
    .local v3, listener:Lcom/meizu/widget/DragGridView$InnerListenerImpl;
    iget-boolean v4, p0, Lcom/meizu/widget/DragGridView;->mIsDraggable:Z

    if-eqz v4, :cond_0

    .line 202
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 206
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 210
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v1           #child:Landroid/view/View;
    .end local v3           #listener:Lcom/meizu/widget/DragGridView$InnerListenerImpl;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->requestLayout()V

    .line 215
    .end local v0           #SIZE:I
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 173
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mColumnWidth:I

    if-eq v0, p1, :cond_0

    .line 174
    iput p1, p0, Lcom/meizu/widget/DragGridView;->mColumnWidth:I

    .line 176
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->requestLayout()V

    .line 178
    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .parameter "draggable"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/meizu/widget/DragGridView;->mIsDraggable:Z

    .line 146
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "hSpacing"

    .prologue
    .line 157
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mHorizontalSpacing:I

    if-eq v0, p1, :cond_0

    .line 158
    iput p1, p0, Lcom/meizu/widget/DragGridView;->mHorizontalSpacing:I

    .line 160
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->requestLayout()V

    .line 162
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 149
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mNumColumns:I

    if-eq v0, p1, :cond_0

    .line 150
    iput p1, p0, Lcom/meizu/widget/DragGridView;->mNumColumns:I

    .line 152
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->requestLayout()V

    .line 154
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/meizu/widget/DragGridView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/meizu/widget/DragGridView;->mOnItemClickListener:Lcom/meizu/widget/DragGridView$OnItemClickListener;

    .line 223
    return-void
.end method

.method public setOnItemPositionChangeListener(Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/meizu/widget/DragGridView;->mOnItemPositionChangeListener:Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;

    .line 219
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "vSpacing"

    .prologue
    .line 165
    iget v0, p0, Lcom/meizu/widget/DragGridView;->mVerticalSpacing:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/meizu/widget/DragGridView;->mVerticalSpacing:I

    .line 168
    invoke-virtual {p0}, Lcom/meizu/widget/DragGridView;->requestLayout()V

    .line 170
    :cond_0
    return-void
.end method

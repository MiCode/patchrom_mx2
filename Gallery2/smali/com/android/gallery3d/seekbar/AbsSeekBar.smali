.class public abstract Lcom/android/gallery3d/seekbar/AbsSeekBar;
.super Lcom/android/gallery3d/seekbar/ProgressBar;
.source "AbsSeekBar.java"


# instance fields
.field private mDisabledAlpha:F

.field private mDragTouchDownX:F

.field private mDragTouchDownY:F

.field private mHalfThumbHeight:I

.field private mHalfThumbWidth:I

.field private mInDragoning:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field mIsVertical:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field protected mTouchScrollMode:I

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/gallery3d/seekbar/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    .line 49
    iput v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 695
    iput v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    .line 696
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchSlopSquare:I

    .line 698
    iput v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    .line 700
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    .line 701
    iput-boolean v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    .line 702
    iput v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbWidth:I

    .line 703
    iput v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbHeight:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/seekbar/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    .line 49
    iput v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 695
    iput v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    .line 696
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchSlopSquare:I

    .line 698
    iput v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    .line 700
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    .line 701
    iput-boolean v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    .line 702
    iput v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbWidth:I

    .line 703
    iput v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbHeight:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/seekbar/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v5, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    .line 44
    iput-boolean v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    .line 49
    iput v5, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 695
    iput v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    .line 696
    const/16 v3, 0x100

    iput v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchSlopSquare:I

    .line 698
    iput v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    .line 700
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    .line 701
    iput-boolean v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    .line 702
    iput v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbWidth:I

    .line 703
    iput v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbHeight:I

    .line 70
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 77
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setThumbOffset(I)V

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDisabledAlpha:F

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mScaledTouchSlop:I

    .line 86
    iget v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mScaledTouchSlop:I

    iget v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mScaledTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchSlopSquare:I

    .line 87
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 640
    :cond_0
    return-void
.end method

.method private getIntFromFloat(F)I
    .locals 1
    .parameter "num"

    .prologue
    .line 720
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getPosByProgress(I)I
    .locals 6
    .parameter "progress"

    .prologue
    .line 739
    iget-boolean v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v4, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 744
    .local v0, available:I
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    .line 745
    .local v2, x:I
    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    .line 746
    .local v3, y:I
    int-to-float v4, p1

    iget v5, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchProgressOffset:F

    sub-float v1, v4, v5

    .line 747
    .local v1, prog:F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 748
    iget-boolean v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v4, :cond_1

    move v4, v3

    .line 776
    :goto_1
    return v4

    .line 742
    .end local v0           #available:I
    .end local v1           #prog:F
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, v4, v5

    .restart local v0       #available:I
    goto :goto_0

    .restart local v1       #prog:F
    .restart local v2       #x:I
    .restart local v3       #y:I
    :cond_1
    move v4, v2

    .line 751
    goto :goto_1

    .line 755
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    .line 756
    iget-boolean v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v4, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int/2addr v4, v5

    goto :goto_1

    .line 759
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    goto :goto_1

    .line 763
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v4

    if-gtz v4, :cond_6

    .line 764
    iget-boolean v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v4, :cond_5

    move v4, v3

    .line 765
    goto :goto_1

    :cond_5
    move v4, v2

    .line 767
    goto :goto_1

    .line 771
    :cond_6
    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    .line 772
    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 773
    iget-boolean v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v4, :cond_7

    move v4, v3

    .line 774
    goto :goto_1

    :cond_7
    move v4, v2

    .line 776
    goto :goto_1
.end method

.method private getProgressByPos(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 726
    iget-boolean v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 728
    .local v0, available:I
    sub-int p1, v0, p1

    .line 732
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v2

    mul-int/2addr v2, p1

    div-int v1, v2, v0

    .line 733
    .local v1, progress:I
    int-to-float v2, v1

    iget v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchProgressOffset:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    return v2

    .line 730
    .end local v0           #available:I
    .end local v1           #progress:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, v2, v3

    .restart local v0       #available:I
    goto :goto_0
.end method

.method private setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V
    .locals 12
    .parameter "w"
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 318
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 319
    .local v8, thumbWidth:I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 320
    .local v6, thumbHeight:I
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_0

    .line 321
    iget v10, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int/2addr v10, v11

    sub-int v1, v10, v6

    .line 327
    .local v1, available:I
    :goto_0
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    .line 330
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_2

    .line 331
    const/high16 v10, 0x3f80

    sub-float v10, v10, p4

    int-to-float v11, v1

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .line 333
    .local v7, thumbPos:I
    const/high16 v10, -0x8000

    move/from16 v0, p5

    if-ne v0, v10, :cond_1

    .line 334
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 335
    .local v4, oldBounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 336
    .local v3, leftBound:I
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 343
    .end local v4           #oldBounds:Landroid/graphics/Rect;
    .local v5, rightBound:I
    :goto_1
    add-int v10, v7, v6

    invoke-virtual {p3, v3, v7, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    .end local v3           #leftBound:I
    .end local v5           #rightBound:I
    :goto_2
    return-void

    .line 323
    .end local v1           #available:I
    .end local v7           #thumbPos:I
    :cond_0
    iget v10, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int v10, p1, v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int/2addr v10, v11

    sub-int v1, v10, v8

    .restart local v1       #available:I
    goto :goto_0

    .line 338
    .restart local v7       #thumbPos:I
    :cond_1
    move/from16 v3, p5

    .line 339
    .restart local v3       #leftBound:I
    add-int v5, p5, v8

    .restart local v5       #rightBound:I
    goto :goto_1

    .line 345
    .end local v3           #leftBound:I
    .end local v5           #rightBound:I
    .end local v7           #thumbPos:I
    :cond_2
    int-to-float v10, v1

    mul-float v10, v10, p4

    float-to-int v7, v10

    .line 347
    .restart local v7       #thumbPos:I
    const/high16 v10, -0x8000

    move/from16 v0, p5

    if-ne v0, v10, :cond_3

    .line 348
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 349
    .restart local v4       #oldBounds:Landroid/graphics/Rect;
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 350
    .local v9, topBound:I
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 357
    .end local v4           #oldBounds:Landroid/graphics/Rect;
    .local v2, bottomBound:I
    :goto_3
    add-int v10, v7, v8

    invoke-virtual {p3, v7, v9, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 352
    .end local v2           #bottomBound:I
    .end local v9           #topBound:I
    :cond_3
    move/from16 v9, p5

    .line 353
    .restart local v9       #topBound:I
    add-int v2, p5, v6

    .restart local v2       #bottomBound:I
    goto :goto_3
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 594
    const/4 v3, 0x0

    .line 595
    .local v3, progress:F
    iget-boolean v8, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v8, :cond_2

    .line 596
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getHeight()I

    move-result v1

    .line 597
    .local v1, height:I
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 598
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 600
    .local v7, y:I
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    if-ge v7, v8, :cond_0

    .line 601
    const/high16 v4, 0x3f80

    .line 609
    .local v4, scale:F
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v2

    .line 610
    .local v2, max:I
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 629
    .end local v1           #height:I
    .end local v7           #y:I
    :goto_1
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setProgress(IZ)V

    .line 630
    return-void

    .line 602
    .end local v2           #max:I
    .end local v4           #scale:F
    .restart local v1       #height:I
    .restart local v7       #y:I
    :cond_0
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_1

    .line 603
    const/4 v4, 0x0

    .restart local v4       #scale:F
    goto :goto_0

    .line 605
    .end local v4           #scale:F
    :cond_1
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 606
    .restart local v4       #scale:F
    iget v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 612
    .end local v0           #available:I
    .end local v1           #height:I
    .end local v4           #scale:F
    .end local v7           #y:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getWidth()I

    move-result v5

    .line 613
    .local v5, width:I
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 614
    .restart local v0       #available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 616
    .local v6, x:I
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_3

    .line 617
    const/4 v4, 0x0

    .line 625
    .restart local v4       #scale:F
    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v2

    .line 626
    .restart local v2       #max:I
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    goto :goto_1

    .line 618
    .end local v2           #max:I
    .end local v4           #scale:F
    :cond_3
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_4

    .line 619
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_2

    .line 621
    .end local v4           #scale:F
    :cond_4
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 622
    .restart local v4       #scale:F
    iget v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_2
.end method

.method private updateThumbPos(II)V
    .locals 13
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 247
    .local v6, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 248
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_6

    .line 249
    if-nez v3, :cond_3

    move v10, v5

    .line 252
    .local v10, thumbWidth:I
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxWidth:I

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 254
    .local v12, trackWidth:I
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v8

    .line 255
    .local v8, max:I
    if-lez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float v4, v0, v1

    .line 257
    .local v4, scale:F
    :cond_0
    if-le v10, v12, :cond_4

    .line 258
    if-eqz v3, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 261
    :cond_1
    sub-int v0, v10, v12

    div-int/lit8 v7, v0, 0x2

    .line 262
    .local v7, gapForCenteringTrack:I
    if-eqz v6, :cond_2

    .line 264
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, p1, v0

    sub-int/2addr v0, v7

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v7, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 311
    .end local v7           #gapForCenteringTrack:I
    .end local v10           #thumbWidth:I
    .end local v12           #trackWidth:I
    :cond_2
    :goto_1
    return-void

    .line 249
    .end local v4           #scale:F
    .end local v8           #max:I
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    goto :goto_0

    .line 269
    .restart local v4       #scale:F
    .restart local v8       #max:I
    .restart local v10       #thumbWidth:I
    .restart local v12       #trackWidth:I
    :cond_4
    if-eqz v6, :cond_5

    .line 271
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 274
    :cond_5
    sub-int v0, v12, v10

    div-int/lit8 v5, v0, 0x2

    .line 275
    .local v5, gap:I
    if-eqz v3, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 276
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_1

    .line 280
    .end local v4           #scale:F
    .end local v5           #gap:I
    .end local v8           #max:I
    .end local v10           #thumbWidth:I
    .end local v12           #trackWidth:I
    :cond_6
    if-nez v3, :cond_9

    move v9, v5

    .line 283
    .local v9, thumbHeight:I
    :goto_2
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxHeight:I

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 285
    .local v11, trackHeight:I
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v8

    .line 286
    .restart local v8       #max:I
    if-lez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float v4, v0, v1

    .line 288
    .restart local v4       #scale:F
    :cond_7
    if-le v9, v11, :cond_a

    .line 289
    if-eqz v3, :cond_8

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 290
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 292
    :cond_8
    sub-int v0, v9, v11

    div-int/lit8 v7, v0, 0x2

    .line 293
    .restart local v7       #gapForCenteringTrack:I
    if-eqz v6, :cond_2

    .line 295
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v1, p2, v1

    sub-int/2addr v1, v7

    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 280
    .end local v4           #scale:F
    .end local v7           #gapForCenteringTrack:I
    .end local v8           #max:I
    .end local v9           #thumbHeight:I
    .end local v11           #trackHeight:I
    :cond_9
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    goto :goto_2

    .line 300
    .restart local v4       #scale:F
    .restart local v8       #max:I
    .restart local v9       #thumbHeight:I
    .restart local v11       #trackHeight:I
    :cond_a
    if-eqz v6, :cond_b

    .line 302
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 305
    :cond_b
    sub-int v0, v11, v9

    div-int/lit8 v5, v0, 0x2

    .line 306
    .restart local v5       #gap:I
    if-eqz v3, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 307
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->drawableStateChanged()V

    .line 213
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 214
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 220
    .local v1, state:[I
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 222
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 215
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 207
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/seekbar/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 368
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 369
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    iget v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 373
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    iget v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 665
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 666
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getProgress()I

    move-result v0

    .line 667
    .local v0, progress:I
    const/16 v2, 0x15

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x14

    if-ne p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_2

    .line 669
    :cond_1
    if-lez v0, :cond_5

    .line 670
    iget v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setProgress(IZ)V

    .line 671
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onKeyChange()V

    .line 684
    .end local v0           #progress:I
    :goto_0
    return v1

    .line 674
    .restart local v0       #progress:I
    :cond_2
    const/16 v2, 0x16

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_4

    :cond_3
    const/16 v2, 0x13

    if-ne p1, v2, :cond_5

    iget-boolean v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_5

    .line 676
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 677
    iget v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setProgress(IZ)V

    .line 678
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 684
    .end local v0           #progress:I
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/seekbar/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 382
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 384
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 385
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 386
    .local v2, dw:I
    const/4 v1, 0x0

    .line 387
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 388
    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinWidth:I

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 389
    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 390
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 392
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 393
    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 395
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setMeasuredDimension(II)V

    .line 400
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMeasuredWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 401
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_1
    monitor-exit p0

    return-void

    .line 384
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 382
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 6
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/seekbar/ProgressBar;->onProgressRefresh(FZ)V

    .line 227
    iget-object v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 228
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getHeight()I

    move-result v2

    const/high16 v5, -0x8000

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 235
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->invalidate()V

    .line 237
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->updateThumbPos(II)V

    .line 243
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsDragging:Z

    .line 647
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsDragging:Z

    .line 655
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 407
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 408
    :cond_0
    const/4 v10, 0x0

    .line 590
    :goto_0
    return v10

    .line 411
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 412
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 413
    .local v9, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 590
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 415
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->isInScrollingContainer()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 416
    iput v8, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownX:F

    .line 417
    iput v9, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownY:F

    .line 418
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 419
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onStartTrackingTouch()V

    .line 420
    iput v8, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownX:F

    .line 421
    iput v9, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    .line 422
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    .line 423
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getProgress()I

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    .line 424
    invoke-direct {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 427
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setPressed(Z)V

    .line 428
    iget-object v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_4

    .line 429
    iget-object v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 431
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onStartTrackingTouch()V

    .line 433
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    .line 434
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 435
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_5

    .line 436
    iput v8, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownX:F

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    .line 443
    :goto_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    .line 444
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getProgress()I

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    .line 449
    :goto_3
    invoke-direct {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 439
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownX:F

    .line 440
    iput v9, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    goto :goto_2

    .line 447
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 454
    :pswitch_1
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsDragging:Z

    if-eqz v10, :cond_c

    .line 455
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 459
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_8

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownX:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 461
    .local v1, deltaX:F
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 468
    .local v2, deltaY:F
    :goto_4
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    iget v11, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchSlopSquare:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    .line 469
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    if-nez v10, :cond_7

    .line 470
    iput v8, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownX:F

    .line 471
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    .line 475
    :cond_7
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    if-eqz v10, :cond_2

    .line 479
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_9

    .line 480
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v0, v10, v11

    .line 484
    .local v0, available:I
    :goto_5
    if-eqz v0, :cond_2

    .line 488
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_a

    .line 489
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v10, v9

    int-to-float v11, v0

    div-float v7, v10, v11

    .line 494
    .local v7, scale:F
    :goto_6
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v4

    .line 496
    .local v4, max:I
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v11, v4

    mul-float/2addr v11, v7

    invoke-direct {p0, v11}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getIntFromFloat(F)I

    move-result v11

    add-int v6, v10, v11

    .line 497
    .local v6, progress:I
    const/4 v10, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_1

    .line 463
    .end local v0           #available:I
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    .end local v4           #max:I
    .end local v6           #progress:I
    .end local v7           #scale:F
    :cond_8
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownX:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 464
    .restart local v1       #deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .restart local v2       #deltaY:F
    goto :goto_4

    .line 482
    :cond_9
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, v10, v11

    .restart local v0       #available:I
    goto :goto_5

    .line 491
    :cond_a
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownX:F

    sub-float v10, v8, v10

    int-to-float v11, v0

    div-float v7, v10, v11

    .restart local v7       #scale:F
    goto :goto_6

    .line 499
    .end local v0           #available:I
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    .end local v7           #scale:F
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 503
    :cond_c
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_e

    .line 504
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownY:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 508
    .local v3, length:F
    :goto_7
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v3, v10

    if-lez v10, :cond_2

    .line 509
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setPressed(Z)V

    .line 510
    iget-object v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_d

    .line 511
    iget-object v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 513
    :cond_d
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onStartTrackingTouch()V

    .line 514
    invoke-direct {p0, p1}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 515
    invoke-direct {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_1

    .line 506
    .end local v3           #length:F
    :cond_e
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownX:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .restart local v3       #length:F
    goto :goto_7

    .line 521
    .end local v3           #length:F
    :pswitch_2
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsDragging:Z

    if-eqz v10, :cond_17

    .line 523
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_11

    .line 524
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v0, v10, v11

    .line 528
    .restart local v0       #available:I
    :goto_8
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    if-nez v10, :cond_14

    .line 531
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_12

    .line 532
    move v5, v9

    .line 536
    .local v5, point:F
    :goto_9
    int-to-float v10, v0

    sub-float/2addr v10, v5

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v11}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getPosByProgress(I)I

    move-result v11

    iget v12, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_f

    int-to-float v10, v0

    sub-float/2addr v10, v5

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v11}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getPosByProgress(I)I

    move-result v11

    iget v12, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-lez v10, :cond_2

    .line 540
    :cond_f
    float-to-int v10, v5

    invoke-direct {p0, v10}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getProgressByPos(I)I

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    iget v12, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v11, v12

    if-lt v10, v11, :cond_13

    .line 541
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setProgress(IZ)V

    .line 566
    .end local v5           #point:F
    :cond_10
    :goto_a
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onStopTrackingTouch()V

    .line 567
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setPressed(Z)V

    .line 578
    .end local v0           #available:I
    :goto_b
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->invalidate()V

    .line 579
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    goto/16 :goto_1

    .line 526
    :cond_11
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, v10, v11

    .restart local v0       #available:I
    goto :goto_8

    .line 534
    :cond_12
    move v5, v8

    .restart local v5       #point:F
    goto :goto_9

    .line 542
    :cond_13
    float-to-int v10, v5

    invoke-direct {p0, v10}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getProgressByPos(I)I

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    iget v12, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_10

    .line 543
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setProgress(IZ)V

    goto :goto_a

    .line 545
    .end local v5           #point:F
    :cond_14
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_16

    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mInDragoning:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_16

    .line 548
    if-eqz v0, :cond_2

    .line 551
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownX:F

    sub-float v1, v8, v10

    .line 552
    .restart local v1       #deltaX:F
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mDragTouchDownY:F

    sub-float v2, v10, v9

    .line 554
    .restart local v2       #deltaY:F
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_15

    .line 555
    int-to-float v10, v0

    div-float v7, v2, v10

    .line 559
    .restart local v7       #scale:F
    :goto_c
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v4

    .line 561
    .restart local v4       #max:I
    iget v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v11, v4

    mul-float/2addr v11, v7

    invoke-direct {p0, v11}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getIntFromFloat(F)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setProgress(IZ)V

    goto :goto_a

    .line 557
    .end local v4           #max:I
    .end local v7           #scale:F
    :cond_15
    int-to-float v10, v0

    div-float v7, v1, v10

    .restart local v7       #scale:F
    goto :goto_c

    .line 563
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    .end local v7           #scale:F
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_a

    .line 571
    .end local v0           #available:I
    :cond_17
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onStartTrackingTouch()V

    .line 572
    invoke-direct {p0, p1}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_b

    .line 583
    :pswitch_3
    iget-boolean v10, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsDragging:Z

    if-eqz v10, :cond_18

    .line 584
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onStopTrackingTouch()V

    .line 585
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setPressed(Z)V

    .line 587
    :cond_18
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setBreakPointLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/gallery3d/seekbar/ProgressBar;->setBreakPointLevel(I)V

    .line 145
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 172
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 173
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/seekbar/ProgressBar;->setMax(I)V

    .line 191
    iget v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 194
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_1
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "thumb"

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    .line 103
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 104
    const/4 v0, 0x1

    .line 108
    .local v0, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 114
    iget-boolean v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_5

    .line 115
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumbOffset:I

    .line 121
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->requestLayout()V

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbWidth:I

    .line 128
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mHalfThumbHeight:I

    .line 130
    :cond_2
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->invalidate()V

    .line 132
    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->updateThumbPos(II)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 138
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 141
    .end local v1           #state:[I
    :cond_3
    return-void

    .line 106
    .end local v0           #needUpdate:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumbOffset:I

    goto :goto_1
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 161
    iput p1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumbOffset:I

    .line 162
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->invalidate()V

    .line 163
    return-void
.end method

.method protected setTouchMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 713
    iput p1, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    .line 714
    iget v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 715
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mTouchScrollMode:I

    .line 716
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/gallery3d/seekbar/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

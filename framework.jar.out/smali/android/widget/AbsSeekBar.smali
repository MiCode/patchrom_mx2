.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff

.field public static final SEEK_BAR_SCROLL_MODE_COMMON:I = 0x0

.field public static final SEEK_BAR_SCROLL_MODE_SLOW:I = 0x1


# instance fields
.field private mDisabledAlpha:F

.field private mDragTouchDownX:F

.field private mDragTouchDownY:F

.field private mHalfThumbWidth:I

.field private mInDragoning:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mTouchDownX:F

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

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 619
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 620
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 622
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 625
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 626
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 619
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 620
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 622
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 625
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 626
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 66
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

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 619
    iput v4, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 620
    const/16 v3, 0x100

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 622
    iput v4, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 624
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 625
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 626
    iput v4, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 71
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 78
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 87
    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 88
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 513
    :cond_0
    return-void
.end method

.method private getIntFromFloat(F)I
    .locals 1
    .parameter "num"

    .prologue
    .line 643
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getPosByProgress(I)I
    .locals 6
    .parameter "progress"

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 649
    .local v2, width:I
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v4, v5

    .line 650
    .local v0, available:I
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 651
    .local v3, x:I
    int-to-float v4, p1

    iget v5, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float v1, v4, v5

    .line 652
    .local v1, prog:F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    move v4, v3

    .line 665
    :goto_0
    return v4

    .line 656
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 657
    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v2, v4

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-gtz v4, :cond_2

    move v4, v3

    .line 661
    goto :goto_0

    .line 664
    :cond_2
    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move v4, v3

    .line 665
    goto :goto_0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 286
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 287
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 288
    .local v5, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 289
    .local v3, thumbHeight:I
    sub-int/2addr v0, v5

    .line 292
    iget v7, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 294
    const/high16 v7, 0x3f80

    sub-float/2addr v7, p3

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int v4, v0, v7

    .line 297
    .local v4, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 298
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 299
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 300
    .local v6, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 307
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    return-void

    .line 302
    .end local v1           #bottomBound:I
    .end local v6           #topBound:I
    :cond_0
    move v6, p4

    .line 303
    .restart local v6       #topBound:I
    add-int v1, p4, v3

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 486
    .local v4, width:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 487
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 489
    .local v5, x:I
    const/4 v2, 0x0

    .line 490
    .local v2, progress:F
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_0

    .line 491
    const/4 v3, 0x0

    .line 499
    .local v3, scale:F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 500
    .local v1, max:I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 502
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 503
    return-void

    .line 492
    .end local v1           #max:I
    .end local v3           #scale:F
    :cond_0
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_1

    .line 493
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 495
    .end local v3           #scale:F
    :cond_1
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 496
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 12
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    .line 248
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 249
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 250
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    move v6, v8

    .line 253
    .local v6, thumbHeight:I
    :goto_0
    iget v9, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 255
    .local v7, trackHeight:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 256
    .local v3, max:I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 258
    .local v4, scale:F
    :goto_1
    if-le v6, v7, :cond_4

    .line 259
    if-eqz v5, :cond_0

    .line 260
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 262
    :cond_0
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 263
    .local v2, gapForCenteringTrack:I
    if-eqz v0, :cond_1

    .line 265
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    .end local v2           #gapForCenteringTrack:I
    :cond_1
    :goto_2
    return-void

    .line 250
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbHeight:I
    .end local v7           #trackHeight:I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_0

    .line 256
    .restart local v3       #max:I
    .restart local v6       #thumbHeight:I
    .restart local v7       #trackHeight:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 270
    .restart local v4       #scale:F
    :cond_4
    if-eqz v0, :cond_5

    .line 272
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 276
    .local v1, gap:I
    if-eqz v5, :cond_1

    .line 277
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 213
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 215
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 220
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 222
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 224
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 217
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 208
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 209
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 313
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 317
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_0
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 561
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 562
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 567
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 571
    .local v0, progress:I
    if-lez v0, :cond_0

    .line 572
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 574
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 575
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 578
    .end local v0           #progress:I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 538
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 540
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 555
    .end local v0           #progress:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 542
    .restart local v0       #progress:I
    :pswitch_0
    if-lez v0, :cond_0

    .line 543
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 544
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 548
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 549
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 550
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 325
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 328
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 329
    .local v2, dw:I
    const/4 v1, 0x0

    .line 330
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 331
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 332
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 333
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 335
    :cond_0
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 336
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 338
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 327
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 325
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 229
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 230
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 237
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 239
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
    .line 244
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 245
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 520
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 528
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 344
    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move v7, v8

    .line 481
    :cond_1
    :goto_0
    return v7

    .line 348
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 349
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 351
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 352
    iput v6, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 353
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v9, v7, :cond_1

    .line 354
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 355
    iput v6, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 357
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 358
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 359
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 363
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 364
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 366
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 368
    iput v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 369
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v9, v7, :cond_5

    .line 370
    iput v6, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 372
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 373
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 378
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 376
    :cond_5
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 383
    :pswitch_1
    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v8, :cond_8

    .line 384
    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v8, v7, :cond_7

    .line 386
    iget v8, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 387
    .local v1, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 390
    .local v2, deltaY:F
    mul-float v8, v1, v1

    mul-float v9, v2, v2

    add-float/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 391
    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v8, :cond_6

    .line 392
    iput v6, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 393
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 397
    :cond_6
    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-eqz v8, :cond_1

    .line 401
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 402
    .local v0, available:I
    if-eqz v0, :cond_1

    .line 405
    iget v8, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v8, v6, v8

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 406
    .local v5, scale:F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 408
    .local v3, max:I
    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v9, v3

    mul-float/2addr v9, v5

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v9

    add-int v4, v8, v9

    .line 409
    .local v4, progress:I
    invoke-virtual {p0, v4, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .line 411
    .end local v0           #available:I
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    .end local v3           #max:I
    .end local v4           #progress:I
    .end local v5           #scale:F
    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 414
    :cond_8
    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 415
    invoke-virtual {p0, v7}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 416
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 417
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 419
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 420
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 421
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_0

    .line 427
    :pswitch_2
    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v9, :cond_e

    .line 428
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v9, v7, :cond_c

    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v9, :cond_c

    .line 430
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v9, v10

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_b

    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_b

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    .line 434
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v9, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 457
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 458
    invoke-virtual {p0, v8}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 469
    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 470
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    goto/16 :goto_0

    .line 435
    :cond_b
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_a

    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_a

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_a

    .line 439
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_2

    .line 441
    :cond_c
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v9, v7, :cond_d

    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-ne v9, v7, :cond_d

    .line 444
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v9, v10

    .line 445
    .restart local v0       #available:I
    if-eqz v0, :cond_1

    .line 448
    iget v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v1, v6, v9

    .line 449
    .restart local v1       #deltaX:F
    int-to-float v9, v0

    div-float v5, v1, v9

    .line 450
    .restart local v5       #scale:F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 452
    .restart local v3       #max:I
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v10, v3

    mul-float/2addr v10, v5

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v9, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_2

    .line 454
    .end local v0           #available:I
    .end local v1           #deltaX:F
    .end local v3           #max:I
    .end local v5           #scale:F
    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 462
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 463
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 464
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    .line 474
    :pswitch_3
    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v9, :cond_f

    .line 475
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 476
    invoke-virtual {p0, v8}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 478
    :cond_f
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 582
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    :goto_0
    return v2

    .line 585
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 586
    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    .line 589
    .local v1, progress:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 590
    .local v0, increment:I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 608
    goto :goto_0

    .line 592
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 593
    goto :goto_0

    .line 595
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 596
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 600
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 601
    goto :goto_0

    .line 603
    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 604
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 590
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 174
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 175
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 193
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 196
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_1
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "thumb"

    .prologue
    .line 103
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    .line 104
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    const/4 v0, 0x1

    .line 109
    .local v0, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 118
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 126
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 128
    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 130
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 134
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 137
    .end local v1           #state:[I
    :cond_3
    return-void

    .line 107
    .end local v0           #needUpdate:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 163
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 164
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 165
    return-void
.end method

.method protected setTouchMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 636
    iput p1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 637
    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 638
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 639
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

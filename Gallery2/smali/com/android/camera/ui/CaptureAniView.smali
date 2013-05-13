.class public Lcom/android/camera/ui/CaptureAniView;
.super Landroid/view/View;
.source "CaptureAniView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CaptureAniView$Listener;
    }
.end annotation


# instance fields
.field private final ADD_ANIMATION_FACTOR:I

.field private final ANIMATION_TIME:I

.field private final FACTOR_STROKE:I

.field private final LESS_ANIMATION_FACTOR:I

.field private final STATE_FADE_IN:I

.field private final STATE_FADE_OUT:I

.field private final STATE_NONE:I

.field private mAnimationColor:I

.field private mAnimationTime:I

.field private mChangeStokeWidth:I

.field private mContext:Landroid/content/Context;

.field private mDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mLis:Lcom/android/camera/ui/CaptureAniView$Listener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    iput v2, p0, Lcom/android/camera/ui/CaptureAniView;->ANIMATION_TIME:I

    .line 26
    iput v1, p0, Lcom/android/camera/ui/CaptureAniView;->ADD_ANIMATION_FACTOR:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->LESS_ANIMATION_FACTOR:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->FACTOR_STROKE:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->STATE_FADE_IN:I

    .line 30
    iput v1, p0, Lcom/android/camera/ui/CaptureAniView;->STATE_FADE_OUT:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->STATE_NONE:I

    .line 34
    iput v2, p0, Lcom/android/camera/ui/CaptureAniView;->mAnimationTime:I

    .line 83
    new-instance v0, Lcom/android/camera/ui/CaptureAniView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CaptureAniView$1;-><init>(Lcom/android/camera/ui/CaptureAniView;)V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v2, p0, Lcom/android/camera/ui/CaptureAniView;->ANIMATION_TIME:I

    .line 26
    iput v1, p0, Lcom/android/camera/ui/CaptureAniView;->ADD_ANIMATION_FACTOR:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->LESS_ANIMATION_FACTOR:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->FACTOR_STROKE:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->STATE_FADE_IN:I

    .line 30
    iput v1, p0, Lcom/android/camera/ui/CaptureAniView;->STATE_FADE_OUT:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->STATE_NONE:I

    .line 34
    iput v2, p0, Lcom/android/camera/ui/CaptureAniView;->mAnimationTime:I

    .line 83
    new-instance v0, Lcom/android/camera/ui/CaptureAniView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CaptureAniView$1;-><init>(Lcom/android/camera/ui/CaptureAniView;)V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAniView;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mPaint:Landroid/graphics/Paint;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->mAnimationColor:I

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->mStrokeWidth:I

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/CaptureAniView;->mAnimationColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/CaptureAniView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CaptureAniView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/CaptureAniView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CaptureAniView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$210(Lcom/android/camera/ui/CaptureAniView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mAnimationTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/ui/CaptureAniView;->mAnimationTime:I

    return v0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mStrokeWidth:I

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->mState:I

    .line 81
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mPreviewWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mPreviewHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/CaptureAniView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mAnimationTime:I

    if-le v0, v6, :cond_2

    .line 120
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mState:I

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/ui/CaptureAniView;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mState:I

    if-ne v0, v6, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/CaptureAniView;->mDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 125
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mAnimationTime:I

    if-ne v0, v6, :cond_0

    .line 126
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mState:I

    if-ne v0, v6, :cond_3

    .line 127
    iget v0, p0, Lcom/android/camera/ui/CaptureAniView;->mStrokeWidth:I

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView;->mLis:Lcom/android/camera/ui/CaptureAniView$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/CaptureAniView$Listener;->finishFadeOut()V

    .line 130
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/CaptureAniView;->mState:I

    goto :goto_0
.end method

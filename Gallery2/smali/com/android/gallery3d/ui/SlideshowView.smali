.class public Lcom/android/gallery3d/ui/SlideshowView;
.super Lcom/android/gallery3d/ui/GLView;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;
    }
.end annotation


# instance fields
.field private mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

.field private mCurrentRotation:I

.field private mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private final mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

.field private mPrevRotation:I

.field private mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mRandom:Ljava/util/Random;

.field private final mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 48
    new-instance v0, Lcom/android/gallery3d/anim/FloatAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/anim/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    .line 127
    return-void
.end method


# virtual methods
.method public next(Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/FloatAnimation;->start()V

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    .line 66
    iget v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevRotation:I

    .line 68
    iput p2, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    .line 69
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 70
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/android/gallery3d/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->start()V

    .line 82
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlideshowView;->invalidate()V

    .line 83
    return-void

    .line 75
    :cond_1
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/android/gallery3d/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 88
    iput-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 92
    iput-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 94
    :cond_1
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v5, 0x3f80

    .line 98
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    .line 99
    .local v1, animTime:J
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    invoke-virtual {v6, v1, v2}, Lcom/android/gallery3d/anim/FloatAnimation;->calculate(J)Z

    move-result v4

    .line 100
    .local v4, requestRender:Z
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v3

    .line 101
    .local v3, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v3, v10, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 102
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v6, :cond_3

    move v0, v5

    .line 104
    .local v0, alpha:F
    :goto_0
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v6, :cond_0

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_0

    .line 105
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v6, v1, v2}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->calculate(J)Z

    move-result v6

    or-int/2addr v4, v6

    .line 106
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 107
    sub-float v6, v5, v0

    invoke-interface {p1, v6}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 108
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v6, p1}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 109
    iget v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevRotation:I

    int-to-float v6, v6

    invoke-interface {p1, v6, v9, v9, v5}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 110
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object v7, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 112
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 114
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v6, :cond_1

    .line 115
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v6, v1, v2}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->calculate(J)Z

    move-result v6

    or-int/2addr v4, v6

    .line 116
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 117
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v6, p1}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 118
    iget v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    int-to-float v6, v6

    invoke-interface {p1, v6, v9, v9, v5}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 119
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 121
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 123
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlideshowView;->invalidate()V

    .line 124
    :cond_2
    const/16 v5, 0x303

    invoke-interface {v3, v10, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 125
    return-void

    .line 102
    .end local v0           #alpha:F
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    invoke-virtual {v6}, Lcom/android/gallery3d/anim/FloatAnimation;->get()F

    move-result v0

    goto/16 :goto_0
.end method

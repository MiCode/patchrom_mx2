.class public Lcom/android/camera/ui/GlowDelegate;
.super Ljava/lang/Object;
.source "GlowDelegate.java"


# instance fields
.field private final BUTTON_QUIESCENT_ALPHA:F

.field private final GLOW_MAX_SCALE_FACTOR_LAND:F

.field private final GLOW_MAX_SCALE_FACTOR_PORT:F

.field private final GLOW_MIN_SCALE_FACTOR_LAND:F

.field private final GLOW_MIN_SCALE_FACTOR_PORT:F

.field private mDrawingAlpha:F

.field private mGlowAlpha:F

.field private mGlowBG:Landroid/graphics/drawable/Drawable;

.field private mGlowHeight:I

.field private mGlowMaxScaleFactor:F

.field private mGlowMinScaleFactor:F

.field private mGlowScale:F

.field private mGlowWidth:I

.field private mIsPort:Z

.field private mPressed:Z

.field private mPressedAnim:Landroid/animation/AnimatorSet;

.field private mRect:Landroid/graphics/RectF;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 6
    .parameter "context"
    .parameter "delegateView"
    .parameter "isPort"

    .prologue
    const v5, 0x3f333333

    const v4, 0x3f051eb8

    const/high16 v3, 0x3f80

    const v2, 0x3f3851ec

    const/4 v1, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GlowDelegate;->mPressed:Z

    .line 18
    iput v1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowAlpha:F

    iput v3, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    iput v3, p0, Lcom/android/camera/ui/GlowDelegate;->mDrawingAlpha:F

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/ui/GlowDelegate;->mRect:Landroid/graphics/RectF;

    .line 21
    iput v3, p0, Lcom/android/camera/ui/GlowDelegate;->GLOW_MAX_SCALE_FACTOR_PORT:F

    .line 22
    iput v2, p0, Lcom/android/camera/ui/GlowDelegate;->GLOW_MIN_SCALE_FACTOR_PORT:F

    .line 23
    iput v2, p0, Lcom/android/camera/ui/GlowDelegate;->GLOW_MAX_SCALE_FACTOR_LAND:F

    .line 24
    iput v4, p0, Lcom/android/camera/ui/GlowDelegate;->GLOW_MIN_SCALE_FACTOR_LAND:F

    .line 25
    iput v5, p0, Lcom/android/camera/ui/GlowDelegate;->BUTTON_QUIESCENT_ALPHA:F

    .line 26
    iput v3, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowMaxScaleFactor:F

    iput v2, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowMinScaleFactor:F

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GlowDelegate;->mIsPort:Z

    .line 31
    iput-object p2, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    .line 32
    iput-boolean p3, p0, Lcom/android/camera/ui/GlowDelegate;->mIsPort:Z

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/GlowDelegate;->setDrawingAlpha(F)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowWidth:I

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowHeight:I

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/GlowDelegate;->mIsPort:Z

    if-eqz v0, :cond_1

    .line 41
    iput v3, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowMaxScaleFactor:F

    .line 42
    iput v2, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowMinScaleFactor:F

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_1
    iput v2, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowMaxScaleFactor:F

    .line 45
    iput v4, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowMinScaleFactor:F

    goto :goto_0
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 134
    return-void
.end method


# virtual methods
.method public invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .parameter "view"
    .parameter "childBounds"

    .prologue
    .line 225
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 227
    .restart local p1
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 228
    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/camera/ui/GlowDelegate;->mPressed:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v11, 0x437f

    const/high16 v10, 0x3f00

    .line 50
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 51
    iget-boolean v6, p0, Lcom/android/camera/ui/GlowDelegate;->mIsPort:Z

    if-eqz v6, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 54
    .local v5, w:I
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 59
    .local v2, h:I
    iget v1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowWidth:I

    .line 60
    .local v1, drawW:I
    iget v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowHeight:I

    .line 61
    .local v0, drawH:I
    sub-int v6, v1, v5

    div-int/lit8 v4, v6, 0x2

    .line 62
    .local v4, marginWidth:I
    sub-int v6, v0, v2

    div-int/lit8 v3, v6, 0x2

    .line 68
    .local v3, marginHeight:I
    iget v6, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    iget v7, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    int-to-float v8, v5

    mul-float/2addr v8, v10

    int-to-float v9, v2

    mul-float/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 72
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    neg-int v7, v4

    neg-int v8, v3

    sub-int v9, v1, v4

    sub-int v10, v0, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/camera/ui/GlowDelegate;->mDrawingAlpha:F

    iget v8, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowAlpha:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 74
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v5

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 77
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v2

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 105
    .end local v0           #drawH:I
    .end local v1           #drawW:I
    .end local v2           #h:I
    .end local v3           #marginHeight:I
    .end local v4           #marginWidth:I
    .end local v5           #w:I
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 81
    .restart local v5       #w:I
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 83
    .restart local v2       #h:I
    iget v1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowWidth:I

    .line 84
    .restart local v1       #drawW:I
    iget v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowHeight:I

    .line 85
    .restart local v0       #drawH:I
    sub-int v6, v1, v5

    div-int/lit8 v4, v6, 0x2

    .line 86
    .restart local v4       #marginWidth:I
    sub-int v6, v0, v2

    div-int/lit8 v3, v6, 0x2

    .line 92
    .restart local v3       #marginHeight:I
    iget v6, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    iget v7, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    int-to-float v8, v5

    mul-float/2addr v8, v10

    int-to-float v9, v2

    mul-float/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 93
    const/high16 v6, 0x42b4

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 97
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    neg-int v7, v4

    neg-int v8, v3

    sub-int v9, v1, v4

    sub-int v10, v0, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/camera/ui/GlowDelegate;->mDrawingAlpha:F

    iget v8, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowAlpha:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 99
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 101
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v5

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 102
    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v2

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GlowDelegate;->mDrawingAlpha:F

    goto :goto_0
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowAlpha:F

    .line 129
    invoke-direct {p0}, Lcom/android/camera/ui/GlowDelegate;->invalidate()V

    goto :goto_0
.end method

.method public setGlowScale(F)V
    .locals 10
    .parameter "x"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 142
    iget-object v4, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    .line 144
    iget-object v4, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 145
    .local v3, w:F
    iget-object v4, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 166
    .local v0, h:F
    iget v4, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v4, v3

    div-float/2addr v4, v7

    add-float v1, v4, v6

    .line 167
    .local v1, rx:F
    iget v4, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v4, v0

    div-float/2addr v4, v7

    add-float v2, v4, v6

    .line 168
    .local v2, ry:F
    iget-object v4, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    iget-object v7, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    iget-object v9, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/ui/GlowDelegate;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 177
    iget-object v4, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/android/camera/ui/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 7
    .parameter "pressed"

    .prologue
    const v4, 0x3f333333

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x3f80

    .line 183
    iget-object v1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/GlowDelegate;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/android/camera/ui/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 188
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    .line 189
    .local v0, as:Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_4

    .line 190
    iget v1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    iget v2, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowMaxScaleFactor:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 191
    iget v1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowMaxScaleFactor:F

    iput v1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowScale:F

    .line 192
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowAlpha:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 193
    iput v4, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowAlpha:F

    .line 195
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/GlowDelegate;->setDrawingAlpha(F)V

    .line 196
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/GlowDelegate;->setGlowScale(F)V

    .line 197
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/GlowDelegate;->setGlowAlpha(F)V

    .line 216
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 220
    .end local v0           #as:Landroid/animation/AnimatorSet;
    :cond_3
    iput-boolean p1, p0, Lcom/android/camera/ui/GlowDelegate;->mPressed:Z

    .line 221
    invoke-direct {p0}, Lcom/android/camera/ui/GlowDelegate;->invalidate()V

    .line 222
    return-void

    .line 208
    .restart local v0       #as:Landroid/animation/AnimatorSet;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/GlowDelegate;->setDrawingAlpha(F)V

    .line 209
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    iget v4, p0, Lcom/android/camera/ui/GlowDelegate;->mGlowMinScaleFactor:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 214
    const-wide/16 v1, 0x1a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

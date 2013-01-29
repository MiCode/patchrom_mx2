.class public Lcom/android/gallery3d/ui/ScrollBarView;
.super Lcom/android/gallery3d/ui/GLView;
.source "ScrollBarView.java"


# instance fields
.field private mAnimationIn:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mAnimationOut:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mAnimationSequence:Lcom/android/gallery3d/anim/CanvasAnimationSequence;

.field private mAnimationVisible:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mRatio:F

.field private mScrollBarTexture:Lcom/android/gallery3d/ui/NinePatchTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 41
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020178

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mScrollBarTexture:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 43
    new-instance v0, Lcom/android/gallery3d/anim/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Lcom/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationIn:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationIn:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V

    .line 45
    new-instance v0, Lcom/android/gallery3d/anim/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Lcom/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationOut:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationOut:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V

    .line 47
    new-instance v0, Lcom/android/gallery3d/anim/AlphaAnimation;

    const/high16 v1, 0x4000

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationVisible:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationVisible:Lcom/android/gallery3d/anim/CanvasAnimation;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V

    .line 50
    new-instance v0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/CanvasAnimationSequence;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationSequence:Lcom/android/gallery3d/anim/CanvasAnimationSequence;

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationSequence:Lcom/android/gallery3d/anim/CanvasAnimationSequence;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationIn:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->addAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationSequence:Lcom/android/gallery3d/anim/CanvasAnimationSequence;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationVisible:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->addAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationSequence:Lcom/android/gallery3d/anim/CanvasAnimationSequence;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationOut:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->addAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationSequence:Lcom/android/gallery3d/anim/CanvasAnimationSequence;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    const/4 v8, 0x0

    .line 60
    .local v8, y:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    iget v7, v0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 61
    .local v7, scrollY:I
    iget v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mRatio:F

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 62
    .local v5, length:I
    int-to-float v0, v7

    iget v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mRatio:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 63
    .local v6, pos:I
    add-int v0, v6, v5

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v0, v6

    .line 69
    :cond_0
    :goto_0
    const/4 v0, 0x5

    if-ge v5, v0, :cond_1

    .line 70
    const/4 v5, 0x5

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mScrollBarTexture:Lcom/android/gallery3d/ui/NinePatchTexture;

    const/4 v2, 0x0

    add-int v3, v6, v7

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 76
    .end local v5           #length:I
    .end local v6           #pos:I
    .end local v7           #scrollY:I
    .end local v8           #y:I
    :goto_1
    return-void

    .line 65
    .restart local v5       #length:I
    .restart local v6       #pos:I
    .restart local v7       #scrollY:I
    .restart local v8       #y:I
    :cond_2
    if-gez v6, :cond_0

    .line 66
    add-int/2addr v5, v6

    .line 67
    const/4 v6, 0x0

    goto :goto_0

    .line 74
    .end local v5           #length:I
    .end local v6           #pos:I
    .end local v7           #scrollY:I
    .end local v8           #y:I
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ScrollBarView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mRatio:F

    .line 91
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollBarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ScrollBarView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationSequence:Lcom/android/gallery3d/anim/CanvasAnimationSequence;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ScrollBarView;->startAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationSequence:Lcom/android/gallery3d/anim/CanvasAnimationSequence;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->getIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mAnimationSequence:Lcom/android/gallery3d/anim/CanvasAnimationSequence;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->getAnimation(I)Lcom/android/gallery3d/anim/CanvasAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->start()V

    goto :goto_0
.end method

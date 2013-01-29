.class Lcom/android/gallery3d/ui/Paper;
.super Ljava/lang/Object;
.source "Paper.java"


# instance fields
.field private mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

.field private mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

.field private mHeight:I

.field private mMatrix:[F

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    .line 31
    new-instance v0, Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    return-void
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->update()Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/EdgeAnimation;->update()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public edgeReached(F)V
    .locals 2
    .parameter "velocity"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 46
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/EdgeAnimation;->onAbsorb(F)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/EdgeAnimation;->onAbsorb(F)V

    goto :goto_0
.end method

.method public getTransform(Landroid/graphics/Rect;F)[F
    .locals 14
    .parameter "rect"
    .parameter "scroll"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->getValue()F

    move-result v8

    .line 70
    .local v8, left:F
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->getValue()F

    move-result v11

    .line 71
    .local v11, right:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sub-float v12, v0, p2

    .line 75
    .local v12, screenOff:F
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    add-float v9, v12, v0

    .line 76
    .local v9, off:F
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v10, v0, 0x2

    .line 77
    .local v10, range:I
    int-to-float v0, v10

    sub-float/2addr v0, v9

    mul-float/2addr v0, v8

    mul-float v1, v9, v11

    sub-float/2addr v0, v1

    int-to-float v1, v10

    div-float v13, v0, v1

    .line 81
    .local v13, t:F
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f80

    neg-float v2, v13

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    const/high16 v1, -0x3dcc

    mul-float v7, v0, v1

    .line 83
    .local v7, degrees:F
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    const/high16 v3, -0x4080

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    return-object v0
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->onRelease()V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->onRelease()V

    .line 56
    return-void
.end method

.method public overScroll(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 37
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/EdgeAnimation;->onPull(F)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/EdgeAnimation;->onPull(F)V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    .line 65
    iput p2, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    .line 66
    return-void
.end method

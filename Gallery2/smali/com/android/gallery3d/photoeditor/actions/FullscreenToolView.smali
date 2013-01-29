.class abstract Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.super Landroid/view/View;
.source "FullscreenToolView.java"


# instance fields
.field protected final displayBounds:Landroid/graphics/RectF;

.field private photoBounds:Landroid/graphics/RectF;

.field private final photoMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoMatrix:Landroid/graphics/Matrix;

    .line 38
    return-void
.end method


# virtual methods
.method protected getPhotoHeight()F
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method protected getPhotoWidth()F
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method protected mapPhotoPoint(FFLandroid/graphics/PointF;)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "dst"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p3, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [F

    aput p1, v0, v3

    aput p2, v0, v4

    .line 79
    .local v0, point:[F
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 80
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    aget v2, v0, v4

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method protected mapPhotoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 89
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 51
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 52
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 53
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 59
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    goto :goto_0
.end method

.method public setPhotoBounds(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "photoBounds"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->photoBounds:Landroid/graphics/RectF;

    .line 45
    return-void
.end method

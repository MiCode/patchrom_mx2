.class Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;
.super Landroid/graphics/drawable/Drawable;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView$TargetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableWithAlpha"
.end annotation


# instance fields
.field private mAlpha:F

.field private mRealDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "realDrawable"

    .prologue
    .line 1708
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1706
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mAlpha:F

    .line 1709
    iput-object p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 1710
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1719
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1720
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 1715
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mAlpha:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1712
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mAlpha:F

    .line 1713
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1724
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1728
    return-void
.end method

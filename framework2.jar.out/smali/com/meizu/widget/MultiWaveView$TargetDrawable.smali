.class Lcom/meizu/widget/MultiWaveView$TargetDrawable;
.super Ljava/lang/Object;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TargetDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I = null

.field public static final STATE_FOCUSED:[I = null

.field public static final STATE_INACTIVE:[I = null

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1682
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_ACTIVE:[I

    .line 1684
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    .line 1686
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 1682
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
    .end array-data

    .line 1684
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
    .end array-data

    .line 1686
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 1731
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1690
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    .line 1691
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    .line 1692
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    .line 1693
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    .line 1694
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    .line 1695
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    .line 1696
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    .line 1698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    .line 1732
    iput p2, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mResourceId:I

    .line 1733
    invoke-virtual {p0, p1, p2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1734
    return-void
.end method

.method public constructor <init>(Lcom/meizu/widget/MultiWaveView$TargetDrawable;)V
    .locals 2
    .parameter "other"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 1746
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1690
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    .line 1691
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    .line 1692
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    .line 1693
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    .line 1694
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    .line 1695
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    .line 1696
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    .line 1698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    .line 1747
    iget v0, p1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mResourceId:I

    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mResourceId:I

    .line 1749
    iget-object v0, p1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1750
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->resizeDrawables()V

    .line 1751
    sget-object v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 1752
    return-void

    .line 1749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1804
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 1805
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 1806
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 1807
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 1808
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1809
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1810
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1811
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1808
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1815
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 1816
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1817
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1820
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1816
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1822
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 1823
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1826
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, -0x4100

    .line 1893
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    if-nez v0, :cond_1

    .line 1903
    :cond_0
    :goto_0
    return-void

    .line 1896
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 1897
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1898
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1899
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1900
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1901
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1902
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 1865
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 1877
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 1881
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 1910
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 1857
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 1861
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1849
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1853
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1762
    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 1765
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1767
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return v1
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 1776
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    .line 1777
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 1778
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 1779
    .local v2, states:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1780
    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_0

    .line 1781
    const/4 v3, 0x1

    .line 1785
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :goto_1
    return v3

    .line 1779
    .restart local v0       #d:Landroid/graphics/drawable/StateListDrawable;
    .restart local v1       #i:I
    .restart local v2       #states:[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1785
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1845
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    .line 1846
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 1739
    if-nez p2, :cond_1

    move-object v0, v1

    .line 1741
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1742
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->resizeDrawables()V

    .line 1743
    sget-object v1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 1744
    return-void

    .line 1739
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1906
    iput-boolean p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    .line 1907
    return-void
.end method

.method public setPositionX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1869
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    .line 1870
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1873
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    .line 1874
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1837
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    .line 1838
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1841
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    .line 1842
    return-void
.end method

.method public setState([I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1755
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 1757
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 1759
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1829
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    .line 1830
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1833
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    .line 1834
    return-void
.end method

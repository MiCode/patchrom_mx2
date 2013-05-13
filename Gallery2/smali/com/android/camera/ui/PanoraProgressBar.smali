.class public Lcom/android/camera/ui/PanoraProgressBar;
.super Landroid/view/View;
.source "PanoraProgressBar.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirection:I

.field private mIndicatorGap:I

.field private mIndicatorY:I

.field private mPanoraBarBottomIndicator:Landroid/graphics/Bitmap;

.field private mPanoraBarLeftIndicator:Landroid/graphics/Bitmap;

.field private mPanoraBarRightIndicator:Landroid/graphics/Bitmap;

.field private mPanoraBarTopIndicator:Landroid/graphics/Bitmap;

.field private mProgress:I

.field private mProgressBarBg:Landroid/graphics/Bitmap;

.field private mProgressBarHeight:I

.field private mProgressBarProgress:Landroid/graphics/Bitmap;

.field private mProgressBarWidth:I

.field private mProgressMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgress:I

    .line 23
    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    .line 26
    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorY:I

    .line 27
    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mDirection:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgress:I

    .line 23
    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    .line 26
    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorY:I

    .line 27
    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mDirection:I

    .line 41
    iput-object p1, p0, Lcom/android/camera/ui/PanoraProgressBar;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarBg:Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarProgress:Landroid/graphics/Bitmap;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarWidth:I

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarHeight:I

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoraProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoraProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ca

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarRightIndicator:Landroid/graphics/Bitmap;

    .line 48
    iget v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarHeight:I

    iget-object v1, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarRightIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorY:I

    .line 49
    return-void
.end method

.method private calculateCenterX()I
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoraProgressBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private calculateProgressRect(I)Landroid/graphics/Rect;
    .locals 5
    .parameter "progress"

    .prologue
    const/4 v4, 0x0

    .line 107
    if-lez p1, :cond_1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    if-lez v2, :cond_1

    .line 108
    add-int/lit8 v0, p1, 0x1

    .line 109
    .local v0, realProgress:I
    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    if-le v0, v2, :cond_0

    .line 110
    iget v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    .line 112
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    div-int v1, v2, v3

    .line 113
    .local v1, right:I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarHeight:I

    invoke-direct {v2, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 115
    .end local v0           #realProgress:I
    .end local v1           #right:I
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private calculateProgressWindowRect(I)Landroid/graphics/Rect;
    .locals 8
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 119
    if-lez p1, :cond_1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    if-lez v2, :cond_1

    .line 120
    add-int/lit8 v0, p1, 0x1

    .line 121
    .local v0, realProgress:I
    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    if-le v0, v2, :cond_0

    .line 122
    iget v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    .line 124
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    div-int v1, v2, v3

    .line 125
    .local v1, right:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/camera/ui/PanoraProgressBar;->calculateCenterX()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    invoke-direct {p0}, Lcom/android/camera/ui/PanoraProgressBar;->calculateCenterX()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarHeight:I

    iget v7, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    .end local v0           #realProgress:I
    .end local v1           #right:I
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private drawDirectionIndicator(Landroid/graphics/Canvas;I)V
    .locals 5
    .parameter "c"
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 79
    if-nez p2, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarRightIndicator:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoraProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ca

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarRightIndicator:Landroid/graphics/Bitmap;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarRightIndicator:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/camera/ui/PanoraProgressBar;->calculateCenterX()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorY:I

    iget v3, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarLeftIndicator:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoraProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarLeftIndicator:Landroid/graphics/Bitmap;

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarLeftIndicator:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/camera/ui/PanoraProgressBar;->calculateCenterX()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarLeftIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorY:I

    iget v3, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 89
    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarTopIndicator:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoraProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarTopIndicator:Landroid/graphics/Bitmap;

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarTopIndicator:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/camera/ui/PanoraProgressBar;->calculateCenterX()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 94
    :cond_6
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarBottomIndicator:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoraProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarBottomIndicator:Landroid/graphics/Bitmap;

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mPanoraBarBottomIndicator:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/camera/ui/PanoraProgressBar;->calculateCenterX()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarHeight:I

    iget v3, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarBg:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/camera/ui/PanoraProgressBar;->calculateCenterX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mIndicatorGap:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    iget v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mDirection:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/PanoraProgressBar;->drawDirectionIndicator(Landroid/graphics/Canvas;I)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressBarProgress:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgress:I

    invoke-direct {p0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->calculateProgressRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgress:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->calculateProgressWindowRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/ui/PanoraProgressBar;->mDirection:I

    .line 65
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    .line 69
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgress:I

    .line 73
    iget v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgress:I

    iget v1, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    if-le v0, v1, :cond_0

    .line 74
    iget v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgressMax:I

    iput v0, p0, Lcom/android/camera/ui/PanoraProgressBar;->mProgress:I

    .line 76
    :cond_0
    return-void
.end method

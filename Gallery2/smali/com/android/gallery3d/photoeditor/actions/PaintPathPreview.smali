.class public Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;
.super Landroid/view/View;
.source "PaintPathPreview.java"


# instance fields
.field private mAmplitude:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPreviewLenght:I

.field private mPreviewMode:I

.field private mRectF:Landroid/graphics/RectF;

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mRectF:Landroid/graphics/RectF;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewMode:I

    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mContext:Landroid/content/Context;

    .line 46
    const v0, 0x7f0902fb

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mStartY:F

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPath:Landroid/graphics/Path;

    .line 58
    return-void
.end method

.method private getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private setPaintPath()V
    .locals 10

    .prologue
    const/high16 v9, 0x4000

    .line 94
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mStartX:F

    .line 95
    .local v3, x:F
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mStartY:F

    .line 96
    .local v4, y:F
    move v0, v3

    .line 97
    .local v0, endx:F
    move v1, v4

    .line 98
    .local v1, endy:F
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 99
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mStartX:F

    sub-float v5, v3, v5

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewLenght:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 100
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mStartX:F

    sub-float v5, v3, v5

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewLenght:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, v9

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v2, v5

    .line 101
    .local v2, sinValue:F
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mStartY:F

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mAmplitude:F

    mul-float/2addr v6, v2

    sub-float v4, v5, v6

    .line 102
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 103
    move v0, v3

    .line 104
    move v1, v4

    .line 105
    invoke-static {v9}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v5

    add-float/2addr v3, v5

    .line 106
    goto :goto_0

    .line 107
    .end local v2           #sinValue:F
    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v8, 0x4040

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    const/high16 v4, -0x100

    const/high16 v5, 0x40a0

    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewMode:I

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setPaintPath()V

    .line 118
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 123
    const/16 v1, 0x14

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 124
    .local v0, shadowColor:I
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v7, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 126
    .end local v0           #shadowColor:I
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 128
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 129
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 132
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 133
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setPaintColor(II)V
    .locals 3
    .parameter "color"
    .parameter "alpha"

    .prologue
    .line 88
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->invalidate()V

    .line 91
    return-void
.end method

.method public setPaintSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPathPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->invalidate()V

    .line 85
    return-void
.end method

.method public setPreviewMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewMode:I

    .line 66
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewMode:I

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mContext:Landroid/content/Context;

    const v1, 0x7f0902e7

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewLenght:I

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mContext:Landroid/content/Context;

    const v1, 0x7f0902f0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mStartY:F

    .line 69
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mAmplitude:F

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mContext:Landroid/content/Context;

    const v1, 0x7f0902e5

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewLenght:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mStartX:F

    .line 76
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mContext:Landroid/content/Context;

    const v1, 0x7f0902e8

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mPreviewLenght:I

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mContext:Landroid/content/Context;

    const v1, 0x7f0902e6

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mStartY:F

    .line 73
    const/high16 v0, 0x4110

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mAmplitude:F

    goto :goto_0
.end method

.method public setRectSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 80
    return-void
.end method

.class Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;
.super Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;
.source "ColorSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;
    }
.end annotation


# instance fields
.field private final colors:[I

.field private progressDrawable:Landroid/graphics/Bitmap;

.field private final seekBarWidth:I

.field private final thumbOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f020131

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 56
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 57
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->seekBarWidth:I

    .line 58
    const/16 v4, 0x17

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->thumbOffset:I

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    .line 62
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 63
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v4, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setMax(I)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getProgress()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 13
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 71
    invoke-super/range {p0 .. p4}, Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;->onSizeChanged(IIII)V

    .line 73
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getPaddingRight()I

    move-result v4

    sub-int v12, v2, v4

    .line 77
    .local v12, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int v7, v2, v4

    .line 78
    .local v7, height:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    .line 79
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 82
    .local v9, paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    const/16 v10, 0x10

    .line 86
    .local v10, radius:I
    int-to-float v1, v10

    .line 87
    .local v1, left:F
    sub-int v2, v12, v10

    int-to-float v3, v2

    .line 88
    .local v3, right:F
    div-int/lit8 v2, p2, 0x2

    int-to-float v6, v2

    .line 90
    .local v6, cy:F
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->thumbOffset:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->thumbOffset:I

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->seekBarWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 92
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    int-to-float v2, v10

    invoke-virtual {v0, v1, v6, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    int-to-float v2, v10

    invoke-virtual {v0, v3, v6, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 99
    sub-float v2, v3, v1

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v11, v2, v4

    .line 100
    .local v11, strip:F
    const/high16 v2, 0x4000

    div-float v2, v11, v2

    add-float v3, v1, v2

    .line 101
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->thumbOffset:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->thumbOffset:I

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->seekBarWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    move v1, v3

    .line 104
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v8, v2, :cond_1

    .line 105
    add-float v3, v1, v11

    .line 106
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    aget v2, v2, v8

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->thumbOffset:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->thumbOffset:I

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->seekBarWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    move v1, v3

    .line 104
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/high16 v2, 0x4000

    div-float v2, v11, v2

    add-float v3, v1, v2

    .line 111
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->thumbOffset:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->thumbOffset:I

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->seekBarWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 114
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    return-void
.end method

.method public setColorIndex(I)V
    .locals 0
    .parameter "colorIndex"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setProgress(I)V

    .line 137
    return-void
.end method

.method public setOnColorChangeListener(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 118
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 133
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V

    goto :goto_0
.end method

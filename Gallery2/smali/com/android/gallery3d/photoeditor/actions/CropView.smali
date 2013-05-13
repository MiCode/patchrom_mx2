.class public Lcom/android/gallery3d/photoeditor/actions/CropView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;
    }
.end annotation


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final cropBounds:Landroid/graphics/RectF;

.field private inVerticalRange:Z

.field private lastX:F

.field private lastY:F

.field private listener:Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;

.field private mAspectRatio:F

.field private final mCropCross:Landroid/graphics/Bitmap;

.field private mCropFrame:Landroid/graphics/Bitmap;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMinHeightFrame:Landroid/graphics/Bitmap;

.field private mMinSizeFrame:Landroid/graphics/Bitmap;

.field private mMinWidthFrame:Landroid/graphics/Bitmap;

.field private mNormalFrame:Landroid/graphics/Bitmap;

.field private movingEdges:I

.field private final resources:Landroid/content/res/Resources;

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    .line 74
    iput-boolean v4, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->inVerticalRange:Z

    .line 77
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->resources:Landroid/content/res/Resources;

    .line 88
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 89
    .local v0, borderColor:I
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f020061

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mNormalFrame:Landroid/graphics/Bitmap;

    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f020060

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropCross:Landroid/graphics/Bitmap;

    .line 91
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mNormalFrame:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropFrame:Landroid/graphics/Bitmap;

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->borderPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->textPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->textPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 107
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/photoeditor/actions/CropView$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/photoeditor/actions/CropView$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/CropView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 114
    return-void
.end method

.method private FitRectFInto(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 255
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 259
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 261
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 262
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 264
    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 265
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 267
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 268
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/CropView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/CropView;->swapCropped(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private adjustcropped(Landroid/graphics/RectF;FFFF)V
    .locals 5
    .parameter "cropped"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "k"

    .prologue
    const/high16 v4, 0x4130

    .line 207
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getPhotoWidth()F

    move-result v3

    div-float v1, v2, v3

    .line 208
    .local v1, minWidth:F
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getPhotoHeight()F

    move-result v3

    div-float v0, v2, v3

    .line 210
    .local v0, minHeight:F
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 211
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 213
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 214
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 216
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 217
    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 219
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 220
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p5

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 222
    :cond_3
    return-void
.end method

.method private detectMovingEdges(FF)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x2

    const/high16 v12, 0x41c8

    const/high16 v11, -0x4080

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v1

    .line 153
    .local v1, cropped:Landroid/graphics/RectF;
    iput v8, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 155
    const/16 v3, 0x19

    .line 156
    .local v3, moveFrameTolerance:I
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/16 v10, 0x32

    int-to-float v10, v10

    sub-float/2addr v9, v10

    int-to-float v10, v3

    cmpg-float v9, v9, v10

    if-lez v9, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/16 v10, 0x32

    int-to-float v10, v10

    sub-float/2addr v9, v10

    int-to-float v10, v3

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_1

    .line 157
    :cond_0
    const/4 v3, 0x0

    .line 159
    :cond_1
    iget v9, v1, Landroid/graphics/RectF;->left:F

    int-to-float v10, v3

    add-float/2addr v9, v10

    cmpl-float v9, p1, v9

    if-lez v9, :cond_2

    iget v9, v1, Landroid/graphics/RectF;->right:F

    int-to-float v10, v3

    sub-float/2addr v9, v10

    cmpg-float v9, p1, v9

    if-gez v9, :cond_2

    iget v9, v1, Landroid/graphics/RectF;->top:F

    int-to-float v10, v3

    add-float/2addr v9, v10

    cmpl-float v9, p2, v9

    if-lez v9, :cond_2

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v3

    sub-float/2addr v9, v10

    cmpg-float v9, p2, v9

    if-gez v9, :cond_2

    .line 161
    const/16 v6, 0x10

    iput v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 162
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    .line 203
    :goto_0
    return-void

    .line 167
    :cond_2
    iget v9, v1, Landroid/graphics/RectF;->left:F

    sub-float v9, p1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 168
    .local v2, left:F
    iget v9, v1, Landroid/graphics/RectF;->right:F

    sub-float v9, p1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 169
    .local v4, right:F
    cmpg-float v9, v2, v12

    if-gtz v9, :cond_6

    cmpg-float v9, v2, v4

    if-gez v9, :cond_6

    .line 170
    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 171
    iput-boolean v7, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->inVerticalRange:Z

    .line 172
    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_4

    .line 173
    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    cmpl-float v10, p2, v10

    if-lez v10, :cond_3

    const/16 v6, 0x8

    :cond_3
    or-int/2addr v6, v9

    iput v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 183
    :cond_4
    :goto_1
    iget v6, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 184
    .local v5, top:F
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 185
    .local v0, bottom:F
    cmpg-float v6, v5, v12

    if-gtz v6, :cond_8

    move v9, v7

    :goto_2
    cmpg-float v6, v5, v0

    if-gez v6, :cond_9

    move v6, v7

    :goto_3
    and-int/2addr v6, v9

    if-eqz v6, :cond_b

    .line 186
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 187
    iput-boolean v8, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->inVerticalRange:Z

    .line 188
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_5

    .line 189
    iget v8, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    cmpl-float v6, p1, v6

    if-lez v6, :cond_a

    const/4 v6, 0x4

    :goto_4
    or-int/2addr v6, v8

    iput v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 202
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    goto :goto_0

    .line 175
    .end local v0           #bottom:F
    .end local v5           #top:F
    :cond_6
    cmpg-float v9, v4, v12

    if-gtz v9, :cond_4

    .line 176
    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 177
    iput-boolean v7, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->inVerticalRange:Z

    .line 178
    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_4

    .line 179
    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    cmpl-float v10, p2, v10

    if-lez v10, :cond_7

    const/16 v6, 0x8

    :cond_7
    or-int/2addr v6, v9

    iput v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    goto :goto_1

    .restart local v0       #bottom:F
    .restart local v5       #top:F
    :cond_8
    move v9, v8

    .line 185
    goto :goto_2

    :cond_9
    move v6, v8

    goto :goto_3

    :cond_a
    move v6, v7

    .line 189
    goto :goto_4

    .line 191
    :cond_b
    cmpg-float v6, v0, v12

    if-gtz v6, :cond_5

    .line 192
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 193
    iput-boolean v8, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->inVerticalRange:Z

    .line 194
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_5

    .line 195
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    cmpl-float v8, p1, v8

    if-lez v8, :cond_c

    const/4 v7, 0x4

    :cond_c
    or-int/2addr v6, v7

    iput v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    goto :goto_5
.end method

.method private drawShadow(Landroid/graphics/Canvas;FFFF)V
    .locals 2
    .parameter "canvas"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 406
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 407
    const/16 v0, 0x4d

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 409
    return-void
.end method

.method private getCropBoundsDisplayed()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 143
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 144
    .local v2, width:F
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 145
    .local v1, height:F
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v2

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v6, v1

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 147
    .local v0, cropped:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 148
    return-object v0
.end method

.method private lampBound(Landroid/graphics/RectF;FF)Z
    .locals 5
    .parameter "cropped"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    const/4 v0, 0x1

    .line 275
    .local v0, ret:Z
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    sparse-switch v3, :sswitch_data_0

    .line 293
    :goto_0
    return v0

    .line 277
    :sswitch_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    move v0, v2

    .line 279
    :goto_1
    goto :goto_0

    :cond_1
    move v0, v1

    .line 277
    goto :goto_1

    .line 281
    :sswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    :cond_2
    move v0, v2

    .line 283
    :goto_2
    goto :goto_0

    :cond_3
    move v0, v1

    .line 281
    goto :goto_2

    .line 285
    :sswitch_2
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    :cond_4
    move v0, v2

    .line 287
    :goto_3
    goto :goto_0

    :cond_5
    move v0, v1

    .line 285
    goto :goto_3

    .line 289
    :sswitch_3
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    :cond_6
    move v0, v2

    :goto_4
    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_4

    .line 275
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_1
        0x9 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private moveEdges(FF)V
    .locals 7
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/high16 v6, 0x4200

    const/4 v3, 0x0

    .line 297
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v1

    .line 298
    .local v1, cropped:Landroid/graphics/RectF;
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    .line 300
    cmpl-float v0, p1, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 302
    :goto_0
    cmpl-float v0, p2, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 304
    :goto_1
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 360
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->mapPhotoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->refreshByCropChange(Z)V

    .line 362
    :cond_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_1

    .line 306
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    const/high16 v2, -0x4080

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    .line 307
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->adjustcropped(Landroid/graphics/RectF;FFFF)V

    .line 339
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 341
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_e

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_e

    .line 342
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mMinSizeFrame:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f020064

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mMinSizeFrame:Landroid/graphics/Bitmap;

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mMinSizeFrame:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropFrame:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 311
    :cond_6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->inVerticalRange:Z

    if-eqz v0, :cond_a

    .line 312
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 313
    cmpl-float v0, p1, v3

    if-lez v0, :cond_7

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    div-float v0, p1, v0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->lampBound(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    :cond_7
    neg-float v2, p1

    neg-float v0, p1

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    div-float v3, v0, v3

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    div-float v5, p1, v0

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->adjustcropped(Landroid/graphics/RectF;FFFF)V

    goto :goto_3

    .line 317
    :cond_8
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 318
    cmpg-float v0, p1, v3

    if-gez v0, :cond_9

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    div-float v0, p1, v0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->lampBound(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :cond_9
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    div-float v3, p1, v0

    neg-float v4, p1

    neg-float v0, p1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    div-float v5, v0, v2

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->adjustcropped(Landroid/graphics/RectF;FFFF)V

    goto :goto_3

    .line 323
    :cond_a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->inVerticalRange:Z

    if-nez v0, :cond_0

    .line 324
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    .line 325
    cmpl-float v0, p2, v3

    if-lez v0, :cond_b

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    mul-float/2addr v0, p2

    invoke-direct {p0, v1, v0, p2}, Lcom/android/gallery3d/photoeditor/actions/CropView;->lampBound(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :cond_b
    neg-float v0, p2

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    mul-float/2addr v2, v0

    neg-float v3, p2

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    mul-float v4, p2, v0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->adjustcropped(Landroid/graphics/RectF;FFFF)V

    goto/16 :goto_3

    .line 329
    :cond_c
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 330
    cmpg-float v0, p2, v3

    if-gez v0, :cond_d

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    mul-float/2addr v0, p2

    invoke-direct {p0, v1, v0, p2}, Lcom/android/gallery3d/photoeditor/actions/CropView;->lampBound(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :cond_d
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    mul-float v2, p2, v0

    neg-float v0, p2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    mul-float v4, v0, v3

    neg-float v5, p2

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->adjustcropped(Landroid/graphics/RectF;FFFF)V

    goto/16 :goto_3

    .line 346
    :cond_e
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_10

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mMinWidthFrame:Landroid/graphics/Bitmap;

    if-nez v0, :cond_f

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f020063

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mMinWidthFrame:Landroid/graphics/Bitmap;

    .line 350
    :cond_f
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mMinWidthFrame:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropFrame:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 351
    :cond_10
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_12

    .line 352
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mMinHeightFrame:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f020062

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mMinHeightFrame:Landroid/graphics/Bitmap;

    .line 355
    :cond_11
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mMinHeightFrame:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropFrame:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 357
    :cond_12
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mNormalFrame:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropFrame:Landroid/graphics/Bitmap;

    goto/16 :goto_2
.end method

.method private refreshByCropChange(Z)V
    .locals 3
    .parameter "fromUser"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->listener:Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->listener:Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;->onCropChanged(Landroid/graphics/RectF;Z)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    .line 125
    return-void
.end method

.method private swapCropped(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "e"

    .prologue
    const/high16 v8, 0x4000

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 227
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 228
    .local v4, y:F
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v2

    .line 229
    .local v2, cropped:Landroid/graphics/RectF;
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v5, v6

    div-float v0, v5, v8

    .line 231
    .local v0, adjust:F
    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 232
    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 233
    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iput v5, v2, Landroid/graphics/RectF;->right:F

    .line 234
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    .line 235
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v2, v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->FitRectFInto(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 236
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    const/high16 v6, -0x4080

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 237
    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    .line 238
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 239
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float v1, v5, v8

    .line 240
    .local v1, adjusted:F
    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 241
    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iput v5, v2, Landroid/graphics/RectF;->right:F

    .line 248
    .end local v1           #adjusted:F
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v2, v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->mapPhotoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 249
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->refreshByCropChange(Z)V

    .line 251
    .end local v0           #adjust:F
    :cond_1
    return-void

    .line 243
    .restart local v0       #adjust:F
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mAspectRatio:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float v1, v5, v8

    .line 244
    .restart local v1       #adjusted:F
    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v1

    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 245
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v1

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/high16 v11, 0x40a0

    const/high16 v10, 0x3f80

    .line 413
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onDraw(Landroid/graphics/Canvas;)V

    .line 416
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v8

    .line 417
    .local v8, cropped:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v8, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 419
    iget v2, v8, Landroid/graphics/RectF;->right:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 420
    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    iget v4, v8, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 423
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 424
    .local v6, centerX:F
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    .line 425
    .local v7, centerY:F
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropFrame:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v10

    iget v4, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v10

    iget v5, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v10

    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 426
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropCross:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropCross:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mCropCross:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v12, v12, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, v6, v11

    sub-float v4, v7, v11

    add-float v5, v6, v11

    add-float v9, v7, v11

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 428
    const/16 v0, 0xf0

    const/16 v1, 0x82

    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropView;->updateCropSizeText(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    .line 429
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 367
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 368
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 370
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 372
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 394
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 374
    .restart local v0       #x:F
    .restart local v1       #y:F
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropView;->detectMovingEdges(FF)V

    .line 375
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastX:F

    .line 376
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastY:F

    goto :goto_0

    .line 380
    :pswitch_1
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    if-eqz v2, :cond_1

    .line 381
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastX:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastY:F

    sub-float v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/CropView;->moveEdges(FF)V

    .line 383
    :cond_1
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastX:F

    .line 384
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastY:F

    goto :goto_0

    .line 389
    :pswitch_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 390
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 5
    .parameter "bounds"

    .prologue
    const/high16 v4, 0x4130

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getPhotoWidth()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 133
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getPhotoHeight()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 136
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->refreshByCropChange(Z)V

    .line 140
    return-void
.end method

.method public setOnCropChangeListener(Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->listener:Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;

    .line 118
    return-void
.end method

.method public bridge synthetic setPhotoBounds(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->setPhotoBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public updateCropSizeText(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V
    .locals 7
    .parameter "canvas"
    .parameter "cropped"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 454
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 455
    .local v3, width:I
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 456
    .local v0, height:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 458
    .local v2, textLen:F
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, p4

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 460
    return-void
.end method

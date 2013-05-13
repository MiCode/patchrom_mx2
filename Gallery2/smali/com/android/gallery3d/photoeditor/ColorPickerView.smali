.class public Lcom/android/gallery3d/photoeditor/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final COLORS:[[I


# instance fields
.field private final BLOCK_HEIGHT:I

.field private final BLOCK_WIDTH:I

.field private final WHITE_SPACE_H:I

.field private final WHITE_SPACE_V:I

.field private mColor:I

.field private mColorChangedListener:Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;

.field private mColorPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->COLORS:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4t 0xc3t 0xcct 0xfft
        0x1t 0x7et 0xd3t 0xfft
        0x2dt 0x2dt 0xd0t 0xfft
        0x86t 0x3t 0xd0t 0xfft
        0xbdt 0x48t 0x8dt 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x40t 0xact 0x0t 0xfft
        0xc3t 0x8ft 0x0t 0xfft
        0x8et 0x26t 0x21t 0xfft
        0x58t 0x57t 0x59t 0xfft
        0xdt 0xdt 0xdt 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7f090302

    const v2, 0x7f090301

    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const v0, -0xffff01

    iput v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColor:I

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColorPaint:Landroid/graphics/Paint;

    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_WIDTH:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_HEIGHT:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_H:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_V:I

    .line 38
    return-void
.end method

.method private getColorForPosition(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_V:I

    div-int/lit8 v8, v8, 0x2

    sub-int v5, v7, v8

    .line 60
    .local v5, top:I
    iget v7, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_HEIGHT:I

    iget v8, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_V:I

    add-int v2, v7, v8

    .line 61
    .local v2, height:I
    sub-int v7, p2, v5

    div-int v4, v7, v2

    .line 62
    .local v4, row:I
    if-ltz v4, :cond_0

    sget-object v7, Lcom/android/gallery3d/photoeditor/ColorPickerView;->COLORS:[[I

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_H:I

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 64
    .local v3, left:I
    iget v7, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_WIDTH:I

    iget v8, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_H:I

    add-int v6, v7, v8

    .line 65
    .local v6, width:I
    sub-int v7, p1, v3

    div-int v0, v7, v6

    .line 66
    .local v0, col:I
    if-ltz v0, :cond_0

    sget-object v7, Lcom/android/gallery3d/photoeditor/ColorPickerView;->COLORS:[[I

    aget-object v7, v7, v4

    array-length v7, v7

    if-ge v0, v7, :cond_0

    .line 67
    sget-object v7, Lcom/android/gallery3d/photoeditor/ColorPickerView;->COLORS:[[I

    aget-object v7, v7, v4

    aget v1, v7, v0

    .line 68
    .local v1, color:I
    iput v1, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColor:I

    .line 69
    const/4 v7, 0x1

    .line 73
    .end local v0           #col:I
    .end local v1           #color:I
    .end local v3           #left:I
    .end local v6           #width:I
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 139
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, colCount:I
    sget-object v1, Lcom/android/gallery3d/photoeditor/ColorPickerView;->COLORS:[[I

    .local v1, arr$:[[I
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v10, v1, v5

    .line 143
    .local v10, row:[I
    array-length v12, v10

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    .end local v10           #row:[I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->getPaddingTop()I

    move-result v11

    .line 147
    .local v11, top:I
    sget-object v1, Lcom/android/gallery3d/photoeditor/ColorPickerView;->COLORS:[[I

    array-length v8, v1

    const/4 v5, 0x0

    move v6, v5

    .end local v1           #arr$:[[I
    .end local v5           #i$:I
    .end local v8           #len$:I
    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v10, v1, v6

    .line 148
    .restart local v10       #row:[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->getPaddingLeft()I

    move-result v7

    .line 149
    .local v7, left:I
    move-object v2, v10

    .local v2, arr$:[I
    array-length v9, v2

    .local v9, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v9, :cond_1

    aget v4, v2, v5

    .line 150
    .local v4, color:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    new-instance v12, Landroid/graphics/RectF;

    int-to-float v13, v7

    int-to-float v14, v11

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_WIDTH:I

    add-int/2addr v15, v7

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_HEIGHT:I

    move/from16 v16, v0

    add-int v16, v16, v11

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v13, 0x4000

    const/high16 v14, 0x4000

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_WIDTH:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_H:I

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 155
    .end local v4           #color:I
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_HEIGHT:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_V:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 147
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_1

    .line 157
    .end local v2           #arr$:[I
    .end local v7           #left:I
    .end local v9           #len$:I
    .end local v10           #row:[I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 80
    sget-object v6, Lcom/android/gallery3d/photoeditor/ColorPickerView;->COLORS:[[I

    array-length v5, v6

    .line 81
    .local v5, rowCount:I
    const/4 v1, 0x0

    .line 82
    .local v1, colCount:I
    sget-object v0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->COLORS:[[I

    .local v0, arr$:[[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 83
    .local v4, row:[I
    array-length v6, v4

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v4           #row:[I
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_WIDTH:I

    mul-int/2addr v6, v1

    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_H:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->BLOCK_HEIGHT:I

    mul-int/2addr v7, v5

    add-int/lit8 v8, v5, -0x1

    iget v9, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->WHITE_SPACE_V:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->setMeasuredDimension(II)V

    .line 87
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->getColorForPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColorChangedListener:Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColorChangedListener:Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColor:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;->colorChanged(I)V

    .line 55
    :cond_0
    return v2
.end method

.method public setOnColorChagedListener(Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ColorPickerView;->mColorChangedListener:Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;

    .line 171
    return-void
.end method

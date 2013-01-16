.class public Lcom/meizu/widget/RoundCornerImageView;
.super Landroid/widget/ImageView;
.source "RoundCornerImageView.java"


# instance fields
.field private mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

.field private mRadiusX:F

.field private mRadiusY:F

.field private mRecycle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/RoundCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/RoundCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    sget-object v1, Lcom/android/internal/R$styleable;->RoundCornerImageView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusX:F

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusY:F

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method

.method private drawRoundCorner()V
    .locals 24

    .prologue
    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    .local v10, oldDstDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    .line 168
    .local v11, oldRecycle:Z
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 171
    .local v5, drawableBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getMeasuredWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getPaddingRight()I

    move-result v21

    sub-int v17, v20, v21

    .line 172
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getMeasuredHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getPaddingBottom()I

    move-result v21

    sub-int v9, v20, v21

    .line 175
    .local v9, height:I
    const/16 v16, 0x0

    .line 176
    .local v16, thumbnailBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-ge v0, v9, :cond_4

    .line 177
    move-object/from16 v16, v5

    .line 203
    :cond_0
    :goto_0
    if-eqz v16, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusX:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusY:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_7

    .line 206
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 207
    .local v12, output:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 209
    .local v4, canvas:Landroid/graphics/Canvas;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v7, v17, v20

    .line 210
    .local v7, dx:I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v8, v9, v20

    .line 211
    .local v8, dy:I
    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v20, v7, 0x2

    div-int/lit8 v21, v8, 0x2

    div-int/lit8 v22, v7, 0x2

    sub-int v22, v17, v22

    div-int/lit8 v23, v8, 0x2

    sub-int v23, v9, v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 216
    .local v6, dstRect:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-direct {v14, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 217
    .local v14, rect:Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 218
    .local v15, rectF:Landroid/graphics/RectF;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 219
    .local v13, paint:Landroid/graphics/Paint;
    const/16 v20, 0xff

    const/16 v21, 0xff

    const/16 v22, 0xff

    const/16 v23, 0xff

    invoke-static/range {v20 .. v23}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusY:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v15, v0, v1, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 222
    new-instance v20, Landroid/graphics/PorterDuffXfermode;

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v20 .. v21}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 223
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 225
    move-object/from16 v0, v16

    if-eq v0, v5, :cond_1

    .line 226
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    const/16 v16, 0x0

    .line 230
    :cond_1
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    .line 236
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v6           #dstRect:Landroid/graphics/Rect;
    .end local v7           #dx:I
    .end local v8           #dy:I
    .end local v12           #output:Landroid/graphics/Bitmap;
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #rect:Landroid/graphics/Rect;
    .end local v15           #rectF:Landroid/graphics/RectF;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-super {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    .end local v5           #drawableBmp:Landroid/graphics/Bitmap;
    .end local v9           #height:I
    .end local v16           #thumbnailBmp:Landroid/graphics/Bitmap;
    .end local v17           #width:I
    :cond_2
    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    .line 241
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10           #oldDstDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    .end local v11           #oldRecycle:Z
    :cond_3
    return-void

    .line 178
    .restart local v5       #drawableBmp:Landroid/graphics/Bitmap;
    .restart local v9       #height:I
    .restart local v10       #oldDstDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v11       #oldRecycle:Z
    .restart local v16       #thumbnailBmp:Landroid/graphics/Bitmap;
    .restart local v17       #width:I
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 179
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v19, v20, v9

    .line 180
    .local v19, y:I
    const/16 v20, 0x0

    div-int/lit8 v21, v19, 0x2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v5, v0, v1, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 186
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    goto/16 :goto_0

    .line 187
    .end local v19           #y:I
    :cond_5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-ge v0, v9, :cond_6

    .line 188
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v18, v20, v17

    .line 189
    .local v18, x:I
    div-int/lit8 v20, v18, 0x2

    const/16 v21, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v5, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 195
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    goto/16 :goto_0

    .line 197
    .end local v18           #x:I
    :cond_6
    move/from16 v0, v17

    invoke-static {v5, v0, v9}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 198
    move-object/from16 v0, v16

    if-eq v0, v5, :cond_0

    .line 199
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    goto/16 :goto_0

    .line 233
    :cond_7
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RoundCornerImageView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1
.end method


# virtual methods
.method public getRadiusX()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusX:F

    return v0
.end method

.method public getRadiusY()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusY:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 249
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 251
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerImageView;->drawRoundCorner()V

    .line 254
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    .line 93
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    .line 106
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    .line 119
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 125
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/RoundCornerImageView;->mRecycle:Z

    .line 132
    :cond_0
    return-void
.end method

.method public setRadius(FF)V
    .locals 2
    .parameter "radiusX"
    .parameter "radiusY"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 141
    :cond_0
    iput p1, p0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusX:F

    .line 142
    iput p2, p0, Lcom/meizu/widget/RoundCornerImageView;->mRadiusY:F

    .line 143
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerImageView;->invalidate()V

    .line 145
    :cond_1
    return-void
.end method

.class public Lcom/meizu/widget/LockPasswordView;
.super Landroid/view/View;
.source "LockPasswordView.java"


# instance fields
.field private mCircleFill:Landroid/graphics/drawable/Drawable;

.field private mCircleGap:Landroid/graphics/drawable/Drawable;

.field private mColor:I

.field private mCurNum:I

.field private mHollowVisible:Z

.field private mInnerRadius:I

.field private mMaxNum:I

.field private mOuterRadius:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const v0, 0x40ffffff

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    .line 40
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockPasswordView;->initialize(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const v0, 0x40ffffff

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    .line 40
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockPasswordView;->initialize(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const v0, 0x40ffffff

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    .line 40
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockPasswordView;->initialize(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    .line 68
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    .line 69
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080549

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mCircleFill:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108054a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mCircleGap:Landroid/graphics/drawable/Drawable;

    .line 71
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    return v0
.end method

.method public getCurNum()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    return v0
.end method

.method public getMaxNum()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    return v0
.end method

.method public isHollowVisible()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 175
    iget-boolean v11, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v11, :cond_0

    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    .line 176
    .local v0, N:I
    :goto_0
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mLeft:I

    iget v12, p0, Lcom/meizu/widget/LockPasswordView;->mRight:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v13, v0, 0x4

    add-int/lit8 v13, v13, -0x2

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 177
    .local v6, left:I
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mTop:I

    iget v12, p0, Lcom/meizu/widget/LockPasswordView;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    div-int/lit8 v9, v11, 0x2

    .line 179
    .local v9, top:I
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-lez v11, :cond_1

    .line 180
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-ge v4, v11, :cond_1

    .line 182
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v12, v4, 0x4

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v11, v12

    add-int v1, v6, v11

    .line 183
    .local v1, cx:I
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    add-int v2, v9, v11

    .line 184
    .local v2, cy:I
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 185
    .local v10, w:I
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 186
    .local v3, h:I
    div-int/lit8 v11, v10, 0x2

    sub-int v5, v1, v11

    .line 187
    .local v5, l:I
    div-int/lit8 v11, v3, 0x2

    sub-int v8, v2, v11

    .line 188
    .local v8, t:I
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleFill:Landroid/graphics/drawable/Drawable;

    add-int v12, v5, v10

    add-int v13, v8, v3

    invoke-virtual {v11, v5, v8, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 175
    .end local v0           #N:I
    .end local v1           #cx:I
    .end local v2           #cy:I
    .end local v3           #h:I
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v6           #left:I
    .end local v8           #t:I
    .end local v9           #top:I
    .end local v10           #w:I
    :cond_0
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    goto :goto_0

    .line 194
    .restart local v0       #N:I
    .restart local v6       #left:I
    .restart local v9       #top:I
    :cond_1
    iget-boolean v11, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v11, :cond_2

    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    iget v12, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-ge v11, v12, :cond_2

    .line 195
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    iget v13, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    iget v12, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    add-int/2addr v11, v12

    shr-int/lit8 v7, v11, 0x1

    .line 198
    .local v7, r:I
    iget v4, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .restart local v4       #i:I
    :goto_2
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-ge v4, v11, :cond_2

    .line 199
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v12, v4, 0x4

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v11, v12

    add-int v1, v6, v11

    .line 200
    .restart local v1       #cx:I
    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    add-int v2, v9, v11

    .line 201
    .restart local v2       #cy:I
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleGap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 202
    .restart local v10       #w:I
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleGap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 203
    .restart local v3       #h:I
    div-int/lit8 v11, v10, 0x2

    sub-int v5, v1, v11

    .line 204
    .restart local v5       #l:I
    div-int/lit8 v11, v3, 0x2

    sub-int v8, v2, v11

    .line 205
    .restart local v8       #t:I
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleGap:Landroid/graphics/drawable/Drawable;

    add-int v12, v5, v10

    add-int v13, v8, v3

    invoke-virtual {v11, v5, v8, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    iget-object v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleGap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 210
    .end local v1           #cx:I
    .end local v2           #cy:I
    .end local v3           #h:I
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v7           #r:I
    .end local v8           #t:I
    .end local v10           #w:I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getSuggestedMinimumWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    iget v4, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    mul-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 215
    .local v1, width:I
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getSuggestedMinimumHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v3, v3, 0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 216
    .local v0, height:I
    invoke-static {v1, p1}, Lcom/meizu/widget/LockPasswordView;->getDefaultSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lcom/meizu/widget/LockPasswordView;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/widget/LockPasswordView;->setMeasuredDimension(II)V

    .line 218
    return-void
.end method

.method public setCircleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "circleFill"
    .parameter "circleGap"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/meizu/widget/LockPasswordView;->mCircleFill:Landroid/graphics/drawable/Drawable;

    .line 222
    iput-object p2, p0, Lcom/meizu/widget/LockPasswordView;->mCircleGap:Landroid/graphics/drawable/Drawable;

    .line 223
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 158
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    if-eq v0, p1, :cond_0

    .line 159
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    .line 160
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 164
    :cond_0
    return-void
.end method

.method public setCurNum(I)Z
    .locals 1
    .parameter "cur"

    .prologue
    .line 102
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-gt p1, v0, :cond_1

    .line 103
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-eq v0, p1, :cond_0

    .line 104
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .line 105
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 107
    :cond_0
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHollowVisible(Z)V
    .locals 1
    .parameter "vis"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eq v0, p1, :cond_0

    .line 124
    iput-boolean p1, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 125
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 127
    :cond_0
    return-void
.end method

.method public setMaxNum(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 77
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-eq v0, p1, :cond_1

    .line 78
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    .line 79
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-gez v0, :cond_2

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->requestLayout()V

    .line 85
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 87
    :cond_1
    return-void

    .line 81
    :cond_2
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-le v0, v1, :cond_0

    .line 82
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    goto :goto_0
.end method

.method public setRadius(II)V
    .locals 1
    .parameter "innerRadius"
    .parameter "outerRadius"

    .prologue
    .line 143
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    if-ne v0, p2, :cond_0

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    .line 147
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    if-eq v0, p2, :cond_1

    .line 148
    iput p2, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    .line 149
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->requestLayout()V

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    goto :goto_0
.end method

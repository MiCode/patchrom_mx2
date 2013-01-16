.class public Lcom/meizu/widget/LockPasswordView;
.super Landroid/view/View;
.source "LockPasswordView.java"


# instance fields
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
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    const v0, 0x40ffffff

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    .line 36
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    .line 37
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockPasswordView;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, 0x40ffffff

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    .line 36
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    .line 37
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockPasswordView;->initialize(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const v0, 0x40ffffff

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    .line 36
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    .line 37
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockPasswordView;->initialize(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    return v0
.end method

.method public getCurNum()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    return v0
.end method

.method public getMaxNum()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    return v0
.end method

.method public isHollowVisible()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 166
    iget-boolean v7, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v7, :cond_0

    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    .line 167
    .local v0, N:I
    :goto_0
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mLeft:I

    iget v8, p0, Lcom/meizu/widget/LockPasswordView;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, -0x2

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x2

    .line 168
    .local v4, left:I
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mTop:I

    iget v8, p0, Lcom/meizu/widget/LockPasswordView;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    .line 170
    .local v6, top:I
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-lez v7, :cond_1

    .line 171
    iget-object v7, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-ge v3, v7, :cond_1

    .line 173
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v8, v3, 0x4

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int v1, v4, v7

    .line 174
    .local v1, cx:I
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    add-int v2, v6, v7

    .line 175
    .local v2, cy:I
    int-to-float v7, v1

    int-to-float v8, v2

    iget v9, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v0           #N:I
    .end local v1           #cx:I
    .end local v2           #cy:I
    .end local v3           #i:I
    .end local v4           #left:I
    .end local v6           #top:I
    :cond_0
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    goto :goto_0

    .line 179
    .restart local v0       #N:I
    .restart local v4       #left:I
    .restart local v6       #top:I
    :cond_1
    iget-boolean v7, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    iget v8, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-ge v7, v8, :cond_2

    .line 180
    iget-object v7, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v7, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    iget v9, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    iget v8, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    add-int/2addr v7, v8

    shr-int/lit8 v5, v7, 0x1

    .line 183
    .local v5, r:I
    iget v3, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .restart local v3       #i:I
    :goto_2
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-ge v3, v7, :cond_2

    .line 184
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v8, v3, 0x4

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int v1, v4, v7

    .line 185
    .restart local v1       #cx:I
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    add-int v2, v6, v7

    .line 186
    .restart local v2       #cy:I
    int-to-float v7, v1

    int-to-float v8, v2

    int-to-float v9, v5

    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 189
    .end local v1           #cx:I
    .end local v2           #cy:I
    .end local v3           #i:I
    .end local v5           #r:I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getSuggestedMinimumWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    iget v4, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    mul-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 194
    .local v1, width:I
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getSuggestedMinimumHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    mul-int/lit8 v3, v3, 0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 195
    .local v0, height:I
    invoke-static {v1, p1}, Lcom/meizu/widget/LockPasswordView;->getDefaultSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lcom/meizu/widget/LockPasswordView;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/widget/LockPasswordView;->setMeasuredDimension(II)V

    .line 197
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 149
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    if-eq v0, p1, :cond_0

    .line 150
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    .line 151
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/meizu/widget/LockPasswordView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 155
    :cond_0
    return-void
.end method

.method public setCurNum(I)Z
    .locals 1
    .parameter "cur"

    .prologue
    .line 93
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-gt p1, v0, :cond_1

    .line 94
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-eq v0, p1, :cond_0

    .line 95
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .line 96
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 98
    :cond_0
    const/4 v0, 0x1

    .line 100
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
    .line 114
    iget-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eq v0, p1, :cond_0

    .line 115
    iput-boolean p1, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 116
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 118
    :cond_0
    return-void
.end method

.method public setMaxNum(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 68
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-eq v0, p1, :cond_1

    .line 69
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    .line 70
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-gez v0, :cond_2

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->requestLayout()V

    .line 76
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 78
    :cond_1
    return-void

    .line 72
    :cond_2
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-le v0, v1, :cond_0

    .line 73
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    goto :goto_0
.end method

.method public setRadius(II)V
    .locals 1
    .parameter "innerRadius"
    .parameter "outerRadius"

    .prologue
    .line 134
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    if-ne v0, p2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mInnerRadius:I

    .line 138
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    if-eq v0, p2, :cond_1

    .line 139
    iput p2, p0, Lcom/meizu/widget/LockPasswordView;->mOuterRadius:I

    .line 140
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->requestLayout()V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    goto :goto_0
.end method

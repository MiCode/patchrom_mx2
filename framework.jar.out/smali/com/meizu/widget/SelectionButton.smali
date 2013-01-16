.class public Lcom/meizu/widget/SelectionButton;
.super Lcom/meizu/widget/GlowLinearLayout;
.source "SelectionButton.java"


# static fields
.field private static final MAX_SHOWING_COUNT:I = 0x3e7


# instance fields
.field private mCurrentCount:I

.field private mIsAllSelected:Z

.field private mText:Landroid/widget/TextView;

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/SelectionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/SelectionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/GlowLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v0, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    .line 64
    iput v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    .line 65
    iput-boolean v0, p0, Lcom/meizu/widget/SelectionButton;->mIsAllSelected:Z

    .line 28
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->initView()V

    .line 29
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900dd

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 43
    const-string v2, "SelectionButton"

    const-string v3, "can not inflate the view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SelectionButton;->setClickable(Z)V

    .line 49
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SelectionButton;->setGravity(I)V

    .line 52
    invoke-virtual {p0}, Lcom/meizu/widget/SelectionButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 54
    .local v1, minWidth:I
    invoke-virtual {p0, v1}, Lcom/meizu/widget/SelectionButton;->setMinimumWidth(I)V

    .line 56
    const v2, 0x1020014

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SelectionButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    .line 58
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->update()V

    .line 59
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_0
.end method

.method private update()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 134
    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    iget v5, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    if-le v4, v5, :cond_0

    .line 135
    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    iput v4, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    .line 137
    :cond_0
    const/4 v2, 0x0

    .line 139
    .local v2, infinitiVisable:Z
    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    iget v5, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    if-ne v4, v5, :cond_3

    .line 140
    iput-boolean v6, p0, Lcom/meizu/widget/SelectionButton;->mIsAllSelected:Z

    .line 141
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setActivated(Z)V

    .line 156
    :goto_0
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    .local v0, background:Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_2

    .line 158
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    const v4, 0x1020407

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    .local v1, infinitiDrawble:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 161
    if-eqz v2, :cond_1

    const/16 v3, 0xff

    :cond_1
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 164
    .end local v1           #infinitiDrawble:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void

    .line 144
    :cond_3
    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_4

    .line 146
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/4 v2, 0x1

    .line 152
    :goto_1
    iput-boolean v3, p0, Lcom/meizu/widget/SelectionButton;->mIsAllSelected:Z

    .line 153
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    iget v5, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentCount()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    return v0
.end method

.method public getSnapshotDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 173
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isDrawingCacheEnabled()Z

    move-result v1

    .line 175
    .local v1, enableDrawingCache:Z
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 176
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 177
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 180
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 182
    :cond_0
    if-eqz v0, :cond_1

    .line 183
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 186
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #enableDrawingCache:Z
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    return v0
.end method

.method public isAllSelected()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/meizu/widget/SelectionButton;->mIsAllSelected:Z

    return v0
.end method

.method public setAllSelected(Z)V
    .locals 1
    .parameter "select"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 115
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    iput v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->update()V

    .line 122
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    goto :goto_0
.end method

.method public setCurrentCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 93
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    if-eq v0, p1, :cond_0

    .line 94
    if-ltz p1, :cond_1

    .end local p1
    :goto_0
    iput p1, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    .line 95
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->update()V

    .line 97
    :cond_0
    return-void

    .line 94
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/meizu/widget/GlowLinearLayout;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 170
    :cond_0
    return-void
.end method

.method public setTotalCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 74
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    if-eq v0, p1, :cond_0

    .line 75
    if-ltz p1, :cond_1

    .end local p1
    :goto_0
    iput p1, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    .line 76
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->update()V

    .line 78
    :cond_0
    return-void

    .line 75
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

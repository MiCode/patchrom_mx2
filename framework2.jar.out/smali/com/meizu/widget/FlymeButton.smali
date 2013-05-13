.class public Lcom/meizu/widget/FlymeButton;
.super Landroid/widget/LinearLayout;
.source "FlymeButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDelegate:Lcom/meizu/widget/GlowDelegate;

.field private mDescriptions:[Ljava/lang/CharSequence;

.field private mFlymeIcon:Landroid/widget/ImageView;

.field private mFlymeOpen:Z

.field private mHasEmail:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/FlymeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/FlymeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mContext:Landroid/content/Context;

    const v1, 0x1090053

    invoke-static {v0, v1, p0}, Lcom/meizu/widget/FlymeButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    const v0, 0x10202db

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    .line 54
    iget-object v1, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    if-eqz v0, :cond_0

    const v0, 0x1080493

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setMinimumWidth(I)V

    .line 59
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setMinimumHeight(I)V

    .line 62
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setGravity(I)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setEnabled(Z)V

    .line 66
    invoke-virtual {p0, p0}, Lcom/meizu/widget/FlymeButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/meizu/widget/FlymeButton;->initGlowDelegate(Landroid/content/Context;)V

    .line 69
    return-void

    .line 54
    :cond_0
    const v0, 0x1080494

    goto :goto_0
.end method

.method private getDescriptionByStatus()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private initGlowDelegate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    new-instance v0, Lcom/meizu/widget/GlowDelegate;

    invoke-direct {v0, p1, p0}, Lcom/meizu/widget/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    .line 161
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 166
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 167
    return-void
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowScale()F

    move-result v0

    return v0
.end method

.method public isFlymeOpen()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/FlymeButton;->getDescriptionByStatus()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/util/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "descriptionText"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 96
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 97
    return-void
.end method

.method public setDescriptionResId(II)V
    .locals 3
    .parameter "onTextResId"
    .parameter "offTextResId"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/widget/FlymeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDescriptions:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/widget/FlymeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 109
    return-void
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 175
    return-void
.end method

.method public setFlymeState(Z)V
    .locals 2
    .parameter "flymeOpen"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    if-eq v0, p1, :cond_0

    .line 117
    iput-boolean p1, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    .line 118
    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    const v1, 0x1080493

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    const v1, 0x1080494

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setFlymeState(ZZ)V
    .locals 2
    .parameter "flymeOpen"
    .parameter "hasEmail"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/FlymeButton;->mHasEmail:Z

    if-eq v0, p2, :cond_1

    .line 133
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    .line 134
    iput-boolean p2, p0, Lcom/meizu/widget/FlymeButton;->mHasEmail:Z

    .line 135
    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setEnabled(Z)V

    .line 136
    if-eqz p2, :cond_3

    .line 137
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    const v1, 0x1080495

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :cond_1
    :goto_1
    return-void

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_3
    if-eqz p1, :cond_4

    .line 139
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    const v1, 0x1080493

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    const v1, 0x1080494

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    .line 183
    return-void
.end method

.method public setGlowScale(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    .line 191
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setPressed(Z)V

    .line 195
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 196
    return-void
.end method

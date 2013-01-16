.class public Lcom/meizu/widget/FlymeButton;
.super Landroid/widget/LinearLayout;
.source "FlymeButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mFlymeIcon:Landroid/widget/ImageView;

.field private mFlymeOpen:Z

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/FlymeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/FlymeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mContext:Landroid/content/Context;

    const v1, 0x1090050

    invoke-static {v0, v1, p0}, Lcom/meizu/widget/FlymeButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const v0, 0x10202de

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/meizu/widget/FlymeButton;->mProgressBar:Landroid/widget/ProgressBar;

    .line 48
    const v0, 0x10202df

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setMinimumWidth(I)V

    .line 53
    const v0, 0x1080540

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setBackgroundResource(I)V

    .line 54
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setGravity(I)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setClickable(Z)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/meizu/widget/FlymeButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public dismissProgressBar()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FlymeButton;->setClickable(Z)V

    .line 119
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    return-void
.end method

.method public isFlymeOpen()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    return v0
.end method

.method public isProgressBarShowing()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/meizu/widget/FlymeButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    iget-object v9, p0, Lcom/meizu/widget/FlymeButton;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 86
    :goto_0
    return v7

    .line 66
    :cond_0
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 67
    .local v4, screenPos:[I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v1, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Lcom/meizu/widget/FlymeButton;->getLocationOnScreen([I)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/meizu/widget/FlymeButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 71
    invoke-virtual {p0}, Lcom/meizu/widget/FlymeButton;->getWidth()I

    move-result v6

    .line 72
    .local v6, width:I
    invoke-virtual {p0}, Lcom/meizu/widget/FlymeButton;->getHeight()I

    move-result v2

    .line 73
    .local v2, height:I
    aget v9, v4, v8

    div-int/lit8 v10, v2, 0x2

    add-int v3, v9, v10

    .line 74
    .local v3, midy:I
    iget-object v9, p0, Lcom/meizu/widget/FlymeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v5, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .local v5, screenWidth:I
    iget-object v9, p0, Lcom/meizu/widget/FlymeButton;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/meizu/widget/FlymeButton;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v9, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 77
    .local v0, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 79
    const/16 v9, 0x35

    aget v7, v4, v7

    sub-int v7, v5, v7

    div-int/lit8 v10, v6, 0x2

    sub-int/2addr v7, v10

    invoke-virtual {v0, v9, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 85
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v7, v8

    .line 86
    goto :goto_0

    .line 83
    :cond_1
    const/16 v9, 0x51

    invoke-virtual {v0, v9, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "descriptionText"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/meizu/widget/FlymeButton;->mDescription:Ljava/lang/CharSequence;

    .line 94
    return-void
.end method

.method public setFlymeState(Z)V
    .locals 2
    .parameter "flymeOpen"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    if-eq v0, p1, :cond_0

    .line 98
    iput-boolean p1, p0, Lcom/meizu/widget/FlymeButton;->mFlymeOpen:Z

    .line 99
    if-eqz p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    const v1, 0x1080479

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    const v1, 0x108047a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public showProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0, v2}, Lcom/meizu/widget/FlymeButton;->setClickable(Z)V

    .line 113
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mFlymeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/meizu/widget/FlymeButton;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    return-void
.end method

.class public Lcom/meizu/widget/LimitedHeightScrollView;
.super Landroid/widget/ScrollView;
.source "LimitedHeightScrollView.java"


# instance fields
.field MAX_HEIGHT_LANDSCAPE:I

.field MAX_HEIGHT_PORTRAIT:I

.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/LimitedHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/LimitedHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_LANDSCAPE:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_PORTRAIT:I

    .line 33
    iget v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_PORTRAIT:I

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    .line 34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/meizu/widget/LimitedHeightScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 47
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48
    .local v3, screenWidth:I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 50
    .local v2, screenHeight:I
    if-le v3, v2, :cond_0

    .line 51
    iget v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_LANDSCAPE:I

    iput v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    .line 56
    :goto_0
    invoke-virtual {p0, v5}, Lcom/meizu/widget/LimitedHeightScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 72
    :goto_1
    return-void

    .line 53
    :cond_0
    iget v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_PORTRAIT:I

    iput v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, v5}, Lcom/meizu/widget/LimitedHeightScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 64
    .local v0, height:I
    iget v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    if-le v0, v4, :cond_2

    .line 66
    iget v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    .line 67
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 71
    :cond_2
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/ScrollView;->onMeasure(II)V

    goto :goto_1
.end method

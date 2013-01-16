.class public Lcom/meizu/widget/LimitedHeightLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LimitedHeightLinearLayout.java"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const v0, 0x7fffffff

    iput v0, p0, Lcom/meizu/widget/LimitedHeightLinearLayout;->mMaxHeight:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const v0, 0x7fffffff

    iput v0, p0, Lcom/meizu/widget/LimitedHeightLinearLayout;->mMaxHeight:I

    .line 33
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 52
    invoke-virtual {p0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 53
    .local v0, height:I
    const/4 v1, 0x0

    .line 56
    .local v1, measure:Z
    iget v2, p0, Lcom/meizu/widget/LimitedHeightLinearLayout;->mMaxHeight:I

    if-le v0, v2, :cond_0

    .line 58
    iget v0, p0, Lcom/meizu/widget/LimitedHeightLinearLayout;->mMaxHeight:I

    .line 59
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 60
    const/4 v1, 0x1

    .line 63
    :cond_0
    if-eqz v1, :cond_1

    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    :cond_1
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 74
    iput p1, p0, Lcom/meizu/widget/LimitedHeightLinearLayout;->mMaxHeight:I

    .line 75
    return-void
.end method

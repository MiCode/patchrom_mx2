.class public Lcom/meizu/video/client/common/LoadingMoreFootView;
.super Landroid/widget/LinearLayout;
.source "LoadingMoreFootView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMeasureWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/common/LoadingMoreFootView;->mMeasureWidth:I

    .line 18
    invoke-direct {p0, p1}, Lcom/meizu/video/client/common/LoadingMoreFootView;->initialize(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/meizu/video/client/common/LoadingMoreFootView;->mContext:Landroid/content/Context;

    .line 29
    iget-object v1, p0, Lcom/meizu/video/client/common/LoadingMoreFootView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040034

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/meizu/video/client/common/LoadingMoreFootView;->addView(Landroid/view/View;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 36
    iget-object v3, p0, Lcom/meizu/video/client/common/LoadingMoreFootView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/meizu/video/client/common/LoadingMoreFootView;->mMeasureWidth:I

    .line 37
    iget v3, p0, Lcom/meizu/video/client/common/LoadingMoreFootView;->mMeasureWidth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 40
    .local v1, mid:I
    iget v3, p0, Lcom/meizu/video/client/common/LoadingMoreFootView;->mMeasureWidth:I

    sub-int/2addr v3, v1

    mul-int/lit8 v0, v3, 0x2

    .line 41
    .local v0, maxWidth:I
    div-int/lit8 v3, v0, 0x2

    sub-int v2, v3, v1

    .line 42
    .local v2, paddingLeft:I
    invoke-virtual {p0, v2, v5, v5, v5}, Lcom/meizu/video/client/common/LoadingMoreFootView;->setPadding(IIII)V

    .line 43
    const/high16 v3, 0x4000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 47
    .end local v0           #maxWidth:I
    .end local v1           #mid:I
    .end local v2           #paddingLeft:I
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

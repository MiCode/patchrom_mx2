.class public Lcom/android/camera/ui/ControlPanelLayout;
.super Landroid/widget/RelativeLayout;
.source "ControlPanelLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 15
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 40
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 41
    .local v8, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 42
    .local v0, heightSpecSize:I
    const/4 v3, 0x0

    .line 45
    .local v3, measuredSize:I
    invoke-virtual {p0}, Lcom/android/camera/ui/ControlPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    const/4 v1, 0x1

    .line 48
    .local v1, isLandscape:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 49
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 50
    .local v5, mode:I
    move v2, v8

    .line 51
    .local v2, longSideSize:I
    move v6, v0

    .line 52
    .local v6, shortSideSize:I
    move v7, v8

    .line 60
    .local v7, specSize:I
    :goto_1
    if-lez v8, :cond_4

    if-lez v0, :cond_4

    const/high16 v9, -0x8000

    if-ne v5, v9, :cond_4

    .line 63
    int-to-double v9, v2

    int-to-double v11, v6

    const-wide/high16 v13, 0x4008

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4010

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    double-to-int v3, v9

    .line 69
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/ui/ControlPanelLayout;->getMinimumWidth()I

    move-result v4

    .line 70
    .local v4, minimumSize:I
    :goto_3
    if-ge v3, v4, :cond_0

    .line 71
    move v3, v4

    .line 75
    :cond_0
    const/high16 v9, -0x8000

    if-ne v5, v9, :cond_1

    if-le v3, v7, :cond_1

    .line 76
    move v3, v7

    .line 79
    :cond_1
    if-eqz v1, :cond_6

    .line 80
    const/high16 v9, 0x4000

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 85
    :goto_4
    invoke-super/range {p0 .. p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 86
    return-void

    .line 45
    .end local v1           #isLandscape:Z
    .end local v2           #longSideSize:I
    .end local v4           #minimumSize:I
    .end local v5           #mode:I
    .end local v6           #shortSideSize:I
    .end local v7           #specSize:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    .restart local v1       #isLandscape:Z
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 55
    .restart local v5       #mode:I
    move v2, v0

    .line 56
    .restart local v2       #longSideSize:I
    move v6, v8

    .line 57
    .restart local v6       #shortSideSize:I
    move v7, v0

    .restart local v7       #specSize:I
    goto :goto_1

    .line 65
    :cond_4
    const-string v9, "ControlPanelLayout"

    const-string v10, "layout_xxx of ControlPanelLayout should be wrap_content"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/ControlPanelLayout;->getMinimumHeight()I

    move-result v4

    goto :goto_3

    .line 82
    .restart local v4       #minimumSize:I
    :cond_6
    const/high16 v9, 0x4000

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_4
.end method

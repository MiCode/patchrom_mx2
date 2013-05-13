.class public Lcom/meizu/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 1
    .parameter "anchorView"
    .parameter "text"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/meizu/util/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 19
    .parameter "anchorView"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 41
    .local v4, context:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 42
    .local v7, metrics:Landroid/util/DisplayMetrics;
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    .local v11, screenWidth:I
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 44
    .local v9, screenHeight:I
    div-int/lit8 v8, v9, 0x2

    .line 45
    .local v8, midScreenHeight:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .local v5, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 48
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [I

    .line 49
    .local v10, screenPos:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 51
    .local v14, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 52
    .local v6, height:I
    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v2, v16, v6

    .line 54
    .local v2, bottom:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 55
    .local v3, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v12

    .line 56
    .local v12, toastView:Landroid/view/View;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    .line 57
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 59
    .local v13, toastWidth:I
    const/4 v15, 0x0

    .line 60
    .local v15, yOffset:I
    invoke-virtual {v4}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 61
    const/16 v15, 0x1e

    .line 64
    :cond_0
    if-ge v2, v8, :cond_1

    .line 66
    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v16, v16, v6

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int v15, v15, v16

    .line 67
    const/16 v16, 0x35

    const/16 v17, 0x0

    aget v17, v10, v17

    sub-int v17, v11, v17

    div-int/lit8 v18, v14, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1, v15}, Landroid/widget/Toast;->setGravity(III)V

    .line 76
    :goto_0
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 77
    return-object v3

    .line 71
    :cond_1
    const/16 v16, 0x1

    aget v16, v10, v16

    sub-int v16, v9, v16

    add-int v15, v15, v16

    .line 72
    const/16 v16, 0x53

    const/16 v17, 0x0

    aget v17, v10, v17

    div-int/lit8 v18, v14, 0x2

    add-int v17, v17, v18

    div-int/lit8 v18, v13, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1, v15}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

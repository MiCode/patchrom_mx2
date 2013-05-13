.class public Lcom/android/internal/widget/MzActionBarContainer;
.super Lcom/android/internal/widget/ActionBarContainer;
.source "MzActionBarContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MzActionBarContainer"


# instance fields
.field private mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackImeIcon:Landroid/graphics/drawable/Drawable;

.field private mEnableBackButton:Z

.field private mExtraPadding:I

.field private mMenuView:Landroid/view/View;

.field private mOrientatinPortrait:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 24
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    .line 19
    return-void
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 170
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 204
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 99
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->isShowAtBottom()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 102
    .local v6, hasTabAtBottom:Z
    :goto_0
    if-eqz v6, :cond_2

    .line 103
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    .line 134
    :cond_0
    :goto_1
    return-void

    .line 99
    .end local v6           #hasTabAtBottom:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 105
    .restart local v6       #hasTabAtBottom:Z
    :cond_2
    const/4 v1, 0x0

    .line 106
    .local v1, backButtonWidth:I
    const/4 v0, 0x0

    .line 107
    .local v0, backButtonHeight:I
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v10, :cond_3

    .line 108
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/KeyBackButton;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    add-int v1, v10, v11

    .line 109
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/KeyBackButton;->getMeasuredHeight()I

    move-result v0

    .line 112
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getChildCount()I

    move-result v3

    .line 116
    .local v3, childCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v3, :cond_4

    .line 117
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/MzActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    add-int v4, v10, v1

    .line 119
    .local v4, childLeft:I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    add-int v5, v10, v1

    .line 120
    .local v5, childRight:I
    invoke-virtual {v2, v4}, Landroid/view/View;->setLeft(I)V

    .line 121
    invoke-virtual {v2, v5}, Landroid/view/View;->setRight(I)V

    .line 116
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 124
    .end local v2           #child:Landroid/view/View;
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v10, :cond_5

    .line 125
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v1, v0}, Lcom/android/internal/view/menu/KeyBackButton;->layout(IIII)V

    .line 128
    :cond_5
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 129
    iget v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    sub-int v8, p4, v10

    .line 130
    .local v8, menuRight:I
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 131
    .local v9, menuWidth:I
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    sub-int v11, v8, v9

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v8, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/ScrollingTabContainerView;->isShowAtBottom()Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v8, 0x1

    .line 35
    .local v8, hasTabAtBottom:Z
    :goto_0
    if-eqz v8, :cond_4

    .line 36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 40
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 43
    :cond_1
    invoke-super/range {p0 .. p2}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 95
    :goto_2
    return-void

    .line 32
    .end local v8           #hasTabAtBottom:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 37
    .restart local v8       #hasTabAtBottom:Z
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 45
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 48
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 49
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 50
    .local v16, widthSpec:I
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 51
    .local v10, heightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/view/menu/KeyBackButton;->measure(II)V

    .line 54
    .end local v10           #heightSpec:I
    .end local v16           #widthSpec:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 55
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 56
    .restart local v16       #widthSpec:I
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 57
    .restart local v10       #heightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    .line 60
    .end local v10           #heightSpec:I
    .end local v16           #widthSpec:I
    :cond_7
    const/4 v2, 0x0

    .line 61
    .local v2, backButtonWidth:I
    const/4 v3, 0x0

    .line 62
    .local v3, backButtonWidthExtra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/view/menu/KeyBackButton;->getMeasuredWidth()I

    move-result v2

    .line 64
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    move/from16 v17, v0

    add-int v3, v2, v17

    .line 67
    :cond_8
    const/4 v12, 0x0

    .line 68
    .local v12, menuWidth:I
    const/4 v13, 0x0

    .line 69
    .local v13, menuWidthExtra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 71
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    move/from16 v17, v0

    add-int v13, v2, v17

    .line 74
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    sub-int v17, v17, v3

    sub-int v6, v17, v13

    .line 75
    .local v6, contentWidth:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 77
    .local v7, contentWidthSpec:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super {v0, v7, v1}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 80
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 81
    .local v5, buttonWidthSpec:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v17

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 82
    .local v4, buttonHeightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/view/menu/KeyBackButton;->measure(II)V

    .line 85
    .end local v4           #buttonHeightSpec:I
    .end local v5           #buttonWidthSpec:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 86
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 87
    .local v14, menuWidthSpec:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v17

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 88
    .local v11, menuHeightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v11}, Landroid/view/View;->measure(II)V

    .line 91
    .end local v11           #menuHeightSpec:I
    .end local v14           #menuWidthSpec:I
    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 92
    .local v15, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v9

    .line 93
    .local v9, height:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lcom/android/internal/widget/MzActionBarContainer;->setMeasuredDimension(II)V

    goto/16 :goto_2
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 139
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backIcon"
    .parameter "backImeIcon"

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 217
    iput-object p2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackImeIcon:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_0
    return-void
.end method

.method public setBackButtonEnable(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "addBackButton"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 151
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackImeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    const v1, 0x10804f1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;->setImageResource(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    goto :goto_0
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 6
    .parameter "menu"

    .prologue
    .line 178
    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 180
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->addView(Landroid/view/View;)V

    .line 185
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 186
    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 189
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v4, :cond_1

    .line 190
    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 191
    .local v1, isOverflowButton:Z
    if-eqz v1, :cond_1

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 192
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #child:Landroid/view/View;
    const v4, 0x1080488

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    .end local v1           #isOverflowButton:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10807d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_2
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    .line 200
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 144
    return-void
.end method

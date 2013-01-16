.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;,
        Lcom/android/internal/view/menu/ActionMenuView$Injector;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mCellWidth:I

.field private mExtraPadding:I

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mItemPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuShowGravity:I

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 68
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 76
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 78
    .local v1, density:F
    const/high16 v3, 0x4260

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 79
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 81
    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 87
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x10500dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 88
    const v3, 0x10500dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    .line 89
    const v3, 0x1050093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 90
    return-void
.end method

.method private getVisibleChildAt(IZ)Landroid/view/View;
    .locals 5
    .parameter "index"
    .parameter "allVisiable"

    .prologue
    .line 833
    if-eqz p2, :cond_0

    .line 834
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 852
    :goto_0
    return-object v3

    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    .line 837
    .local v0, childCount:I
    const/4 v2, -0x1

    .line 838
    .local v2, visibleIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 839
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 840
    add-int/lit8 v2, v2, 0x1

    .line 843
    :cond_1
    if-ne v2, p1, :cond_3

    .line 844
    move v2, v1

    .line 849
    :cond_2
    if-ltz v2, :cond_4

    if-ge v2, v0, :cond_4

    .line 850
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 838
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 852
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 401
    .local v8, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 403
    .local v2, childHeightSize:I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 404
    .local v1, childHeightMode:I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 406
    .local v3, childHeightSpec:I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 408
    .local v7, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 410
    .local v6, hasText:Z
    :goto_1
    const/4 v0, 0x0

    .line 411
    .local v0, cellsUsed:I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 412
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 414
    .local v4, childWidthSpec:I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 417
    .local v9, measuredWidth:I
    div-int v0, v9, p1

    .line 418
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 419
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 422
    .end local v4           #childWidthSpec:I
    .end local v9           #measuredWidth:I
    :cond_2
    iget-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 423
    .local v5, expandable:Z
    :goto_2
    iput-boolean v5, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 425
    iput v0, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 426
    mul-int v10, v0, p1

    .line 427
    .local v10, targetWidth:I
    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 429
    return v0

    .line 406
    .end local v0           #cellsUsed:I
    .end local v5           #expandable:Z
    .end local v6           #hasText:Z
    .end local v7           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10           #targetWidth:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 408
    .restart local v7       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 422
    .restart local v0       #cellsUsed:I
    .restart local v6       #hasText:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 46
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 149
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 150
    .local v19, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v41

    .line 151
    .local v41, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 153
    .local v21, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v43

    add-int v40, v42, v43

    .line 154
    .local v40, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v43

    add-int v20, v42, v43

    .line 156
    .local v20, heightPadding:I
    const/high16 v42, 0x4000

    move/from16 v0, v19

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    sub-int v42, v21, v20

    const/high16 v43, 0x4000

    invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 161
    .local v26, itemHeightSpec:I
    :goto_0
    sub-int v41, v41, v40

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v42, v0

    mul-int/lit8 v42, v42, 0x2

    sub-int v10, v41, v42

    .line 165
    .local v10, cellsWidthSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v42, v0

    div-int v4, v10, v42

    .line 166
    .local v4, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v42, v0

    rem-int v6, v10, v42

    .line 168
    .local v6, cellSizeRemaining:I
    if-nez v4, :cond_1

    .line 170
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 382
    :goto_1
    return-void

    .line 156
    .end local v4           #cellCount:I
    .end local v6           #cellSizeRemaining:I
    .end local v10           #cellsWidthSize:I
    .end local v26           #itemHeightSpec:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v42, v0

    sub-int v43, v21, v20

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->min(II)I

    move-result v42

    const/high16 v43, -0x8000

    invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    goto :goto_0

    .line 174
    .restart local v4       #cellCount:I
    .restart local v6       #cellSizeRemaining:I
    .restart local v10       #cellsWidthSize:I
    .restart local v26       #itemHeightSpec:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v42, v0

    div-int v43, v6, v4

    add-int v5, v42, v43

    .line 176
    .local v5, cellSize:I
    move v8, v4

    .line 177
    .local v8, cellsRemaining:I
    const/16 v29, 0x0

    .line 178
    .local v29, maxChildHeight:I
    const/16 v28, 0x0

    .line 179
    .local v28, maxCellsUsed:I
    const/4 v15, 0x0

    .line 180
    .local v15, expandableItemCount:I
    const/16 v38, 0x0

    .line 181
    .local v38, visibleItemCount:I
    const/16 v18, 0x0

    .line 184
    .local v18, hasOverflow:Z
    const/16 v17, 0x0

    .line 187
    .local v17, hasCustomAction:Z
    const-wide/16 v36, 0x0

    .line 189
    .local v36, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v13

    .line 190
    .local v13, childCount:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_2
    move/from16 v0, v22

    if-ge v0, v13, :cond_a

    .line 191
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 192
    .local v12, child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    .line 190
    :cond_2
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 195
    :cond_3
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v24, v0

    .line 197
    .local v24, isGeneratedItem:Z
    instance-of v0, v12, Lcom/meizu/widget/SelectionButton;

    move/from16 v25, v0

    .line 199
    .local v25, isSelectionButton:Z
    instance-of v0, v12, Lcom/android/internal/view/menu/KeyBackButton;

    move/from16 v23, v0

    .line 200
    .local v23, isBackButton:Z
    add-int/lit8 v38, v38, 0x1

    .line 202
    if-eqz v24, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 208
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 209
    .local v27, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 210
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 211
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 212
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 213
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 214
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 215
    if-eqz v24, :cond_8

    move-object/from16 v42, v12

    check-cast v42, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v42

    if-eqz v42, :cond_8

    const/16 v42, 0x1

    :goto_4
    move/from16 v0, v42

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 218
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v42, v0

    if-eqz v42, :cond_9

    const/4 v7, 0x1

    .line 220
    .local v7, cellsAvailable:I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v20

    invoke-static {v12, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 223
    .local v9, cellsUsed:I
    move/from16 v0, v28

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 224
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v42, v0

    if-eqz v42, :cond_5

    add-int/lit8 v15, v15, 0x1

    .line 225
    :cond_5
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v42, v0

    if-eqz v42, :cond_6

    const/16 v18, 0x1

    .line 227
    :cond_6
    sub-int/2addr v8, v9

    .line 228
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v42

    move/from16 v0, v29

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 229
    const/16 v42, 0x1

    move/from16 v0, v42

    if-ne v9, v0, :cond_7

    const/16 v42, 0x1

    shl-int v42, v42, v22

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    or-long v36, v36, v42

    .line 231
    :cond_7
    if-nez v24, :cond_2

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v42, v0

    if-nez v42, :cond_2

    if-nez v25, :cond_2

    if-nez v23, :cond_2

    .line 233
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 215
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    :cond_8
    const/16 v42, 0x0

    goto :goto_4

    :cond_9
    move v7, v8

    .line 218
    goto :goto_5

    .line 238
    .end local v12           #child:Landroid/view/View;
    .end local v23           #isBackButton:Z
    .end local v24           #isGeneratedItem:Z
    .end local v25           #isSelectionButton:Z
    .end local v27           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_a
    if-eqz v18, :cond_c

    const/16 v42, 0x2

    move/from16 v0, v38

    move/from16 v1, v42

    if-ne v0, v1, :cond_c

    const/4 v11, 0x1

    .line 243
    .local v11, centerSingleExpandedItem:Z
    :goto_6
    const/16 v34, 0x0

    .line 244
    .local v34, needsExpansion:Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v42, v0

    if-nez v42, :cond_10

    if-lez v15, :cond_10

    if-lez v8, :cond_10

    .line 245
    const v30, 0x7fffffff

    .line 246
    .local v30, minCells:I
    const-wide/16 v31, 0x0

    .line 247
    .local v31, minCellsAt:J
    const/16 v33, 0x0

    .line 248
    .local v33, minCellsItemCount:I
    const/16 v22, 0x0

    :goto_8
    move/from16 v0, v22

    if-ge v0, v13, :cond_f

    .line 249
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 250
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 253
    .restart local v27       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v42, v0

    if-nez v42, :cond_d

    .line 248
    :cond_b
    :goto_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 238
    .end local v11           #centerSingleExpandedItem:Z
    .end local v12           #child:Landroid/view/View;
    .end local v27           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v30           #minCells:I
    .end local v31           #minCellsAt:J
    .end local v33           #minCellsItemCount:I
    .end local v34           #needsExpansion:Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_6

    .line 256
    .restart local v11       #centerSingleExpandedItem:Z
    .restart local v12       #child:Landroid/view/View;
    .restart local v27       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v30       #minCells:I
    .restart local v31       #minCellsAt:J
    .restart local v33       #minCellsItemCount:I
    .restart local v34       #needsExpansion:Z
    :cond_d
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v42, v0

    move/from16 v0, v42

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 257
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v30, v0

    .line 258
    const/16 v42, 0x1

    shl-int v42, v42, v22

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v31, v0

    .line 259
    const/16 v33, 0x1

    goto :goto_9

    .line 260
    :cond_e
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v42, v0

    move/from16 v0, v42

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 261
    const/16 v42, 0x1

    shl-int v42, v42, v22

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    or-long v31, v31, v42

    .line 262
    add-int/lit8 v33, v33, 0x1

    goto :goto_9

    .line 267
    .end local v12           #child:Landroid/view/View;
    .end local v27           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_f
    or-long v36, v36, v31

    .line 269
    move/from16 v0, v33

    if-le v0, v8, :cond_17

    .line 298
    .end local v30           #minCells:I
    .end local v31           #minCellsAt:J
    .end local v33           #minCellsItemCount:I
    :cond_10
    if-nez v18, :cond_1c

    const/16 v42, 0x1

    move/from16 v0, v38

    move/from16 v1, v42

    if-ne v0, v1, :cond_1c

    const/16 v35, 0x1

    .line 306
    .local v35, singleItem:Z
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v42, v0

    if-nez v42, :cond_24

    if-lez v8, :cond_24

    const-wide/16 v42, 0x0

    cmp-long v42, v36, v42

    if-eqz v42, :cond_24

    add-int/lit8 v42, v38, -0x1

    move/from16 v0, v42

    if-ge v8, v0, :cond_11

    if-nez v17, :cond_13

    :cond_11
    if-eqz v35, :cond_12

    if-nez v17, :cond_13

    :cond_12
    const/16 v42, 0x1

    move/from16 v0, v28

    move/from16 v1, v42

    if-le v0, v1, :cond_24

    .line 309
    :cond_13
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->bitCount(J)I

    move-result v42

    move/from16 v0, v42

    int-to-float v14, v0

    .line 311
    .local v14, expandCount:F
    if-nez v35, :cond_15

    .line 313
    const-wide/16 v42, 0x1

    and-long v42, v42, v36

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_14

    .line 314
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 315
    .restart local v27       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v42, v0

    if-nez v42, :cond_14

    const/high16 v42, 0x3f00

    sub-float v14, v14, v42

    .line 317
    .end local v27           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_14
    const/16 v42, 0x1

    add-int/lit8 v43, v13, -0x1

    shl-int v42, v42, v43

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    and-long v42, v42, v36

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_15

    .line 318
    add-int/lit8 v42, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 319
    .restart local v27       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v42, v0

    if-nez v42, :cond_15

    const/high16 v42, 0x3f00

    sub-float v14, v14, v42

    .line 323
    .end local v27           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_15
    const/16 v42, 0x0

    cmpl-float v42, v14, v42

    if-lez v42, :cond_1d

    mul-int v42, v8, v5

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v42, v42, v14

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v16, v0

    .line 326
    .local v16, extraPixels:I
    :goto_b
    const/16 v22, 0x0

    :goto_c
    move/from16 v0, v22

    if-ge v0, v13, :cond_23

    .line 327
    const/16 v42, 0x1

    shl-int v42, v42, v22

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    and-long v42, v42, v36

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-nez v42, :cond_1e

    .line 326
    :cond_16
    :goto_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 272
    .end local v14           #expandCount:F
    .end local v16           #extraPixels:I
    .end local v35           #singleItem:Z
    .restart local v30       #minCells:I
    .restart local v31       #minCellsAt:J
    .restart local v33       #minCellsItemCount:I
    :cond_17
    add-int/lit8 v30, v30, 0x1

    .line 274
    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v0, v13, :cond_1b

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 276
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 277
    .restart local v27       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v42, 0x1

    shl-int v42, v42, v22

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    and-long v42, v42, v31

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-nez v42, :cond_19

    .line 279
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v42, v0

    move/from16 v0, v42

    move/from16 v1, v30

    if-ne v0, v1, :cond_18

    const/16 v42, 0x1

    shl-int v42, v42, v22

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    or-long v36, v36, v42

    .line 274
    :cond_18
    :goto_f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 283
    :cond_19
    if-eqz v11, :cond_1a

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1a

    const/16 v42, 0x1

    move/from16 v0, v42

    if-ne v8, v0, :cond_1a

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v42, v0

    add-int v42, v42, v5

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 287
    :cond_1a
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 288
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 289
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 292
    .end local v12           #child:Landroid/view/View;
    .end local v27           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1b
    const/16 v34, 0x1

    .line 293
    goto/16 :goto_7

    .line 298
    .end local v30           #minCells:I
    .end local v31           #minCellsAt:J
    .end local v33           #minCellsItemCount:I
    :cond_1c
    const/16 v35, 0x0

    goto/16 :goto_a

    .line 323
    .restart local v14       #expandCount:F
    .restart local v35       #singleItem:Z
    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_b

    .line 329
    .restart local v16       #extraPixels:I
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 330
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 331
    .restart local v27       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v42, v0

    if-eqz v42, :cond_20

    .line 333
    move/from16 v0, v16

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 334
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 335
    if-nez v22, :cond_1f

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v42, v0

    if-nez v42, :cond_1f

    .line 338
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v42, v0

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 340
    :cond_1f
    const/16 v34, 0x1

    goto/16 :goto_d

    .line 341
    :cond_20
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v42, v0

    if-eqz v42, :cond_21

    .line 342
    move/from16 v0, v16

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 343
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 344
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v42, v0

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 345
    const/16 v34, 0x1

    goto/16 :goto_d

    .line 350
    :cond_21
    if-eqz v22, :cond_22

    .line 351
    div-int/lit8 v42, v16, 0x2

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 353
    :cond_22
    add-int/lit8 v42, v13, -0x1

    move/from16 v0, v22

    move/from16 v1, v42

    if-eq v0, v1, :cond_16

    .line 354
    div-int/lit8 v42, v16, 0x2

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 359
    .end local v12           #child:Landroid/view/View;
    .end local v27           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_23
    const/4 v8, 0x0

    .line 363
    .end local v14           #expandCount:F
    .end local v16           #extraPixels:I
    :cond_24
    if-eqz v34, :cond_26

    .line 364
    const/16 v22, 0x0

    :goto_10
    move/from16 v0, v22

    if-ge v0, v13, :cond_26

    .line 365
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 366
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 368
    .restart local v27       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v42, v0

    if-nez v42, :cond_25

    .line 364
    :goto_11
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    .line 370
    :cond_25
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v42, v0

    mul-int v42, v42, v5

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v43, v0

    add-int v39, v42, v43

    .line 371
    .local v39, width:I
    const/high16 v42, 0x4000

    move/from16 v0, v39

    move/from16 v1, v42

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .line 376
    .end local v12           #child:Landroid/view/View;
    .end local v27           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v39           #width:I
    :cond_26
    const/high16 v42, 0x4000

    move/from16 v0, v19

    move/from16 v1, v42

    if-eq v0, v1, :cond_27

    .line 377
    move/from16 v21, v29

    .line 380
    :cond_27
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 381
    mul-int v42, v8, v5

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 752
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 727
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 729
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 730
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 735
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 740
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    .line 741
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 742
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 743
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 747
    .end local v0           #result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 757
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 758
    return-object v0
.end method

.method public getActionItems()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/DockActionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v18, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/DockActionItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v17

    .line 860
    .local v17, itemCount:I
    const/4 v2, 0x0

    .line 864
    .local v2, child:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    move/from16 v0, v17

    if-ge v3, v0, :cond_6

    .line 865
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 866
    instance-of v15, v2, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 867
    .local v15, isGeneratedItem:Z
    instance-of v0, v2, Lcom/meizu/widget/SelectionButton;

    move/from16 v16, v0

    .line 869
    .local v16, isSelectionButton:Z
    if-eqz v15, :cond_3

    move-object v5, v2

    .line 870
    check-cast v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v19

    .line 871
    .local v19, menuItem:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v19, :cond_1

    .line 872
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 873
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 874
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 877
    :cond_0
    const/4 v7, 0x0

    .line 878
    .local v7, flag:I
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/view/menu/MenuItemImpl;->getShowGravity()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    or-int/2addr v7, v5

    .line 880
    new-instance v1, Lcom/android/internal/app/DockActionItem;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v6

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/DockActionItem;-><init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZI)V

    .line 882
    .local v1, item:Lcom/android/internal/app/DockActionItem;
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/app/DockActionItem;->mType:I

    .line 883
    invoke-virtual {v1}, Lcom/android/internal/app/DockActionItem;->preparePracel()V

    .line 884
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    .end local v1           #item:Lcom/android/internal/app/DockActionItem;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #flag:I
    .end local v19           #menuItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 878
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v7       #flag:I
    .restart local v19       #menuItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 886
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #flag:I
    .end local v19           #menuItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    if-eqz v16, :cond_4

    move-object/from16 v22, v2

    .line 887
    check-cast v22, Lcom/meizu/widget/SelectionButton;

    .line 888
    .local v22, selectionButton:Lcom/meizu/widget/SelectionButton;
    new-instance v1, Lcom/android/internal/app/DockActionItem;

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/widget/SelectionButton;->getSnapshotDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v13

    const/4 v14, 0x0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/DockActionItem;-><init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZI)V

    .line 890
    .restart local v1       #item:Lcom/android/internal/app/DockActionItem;
    const/4 v5, 0x3

    iput v5, v1, Lcom/android/internal/app/DockActionItem;->mType:I

    .line 891
    invoke-virtual {v1}, Lcom/android/internal/app/DockActionItem;->preparePracel()V

    .line 892
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 894
    .end local v1           #item:Lcom/android/internal/app/DockActionItem;
    .end local v22           #selectionButton:Lcom/meizu/widget/SelectionButton;
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 895
    .local v21, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v21

    iget-boolean v5, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_1

    instance-of v5, v2, Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    move-object/from16 v20, v2

    .line 896
    check-cast v20, Landroid/widget/ImageView;

    .line 897
    .local v20, overFlowButton:Landroid/widget/ImageView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 898
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5

    .line 899
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 902
    :cond_5
    new-instance v1, Lcom/android/internal/app/DockActionItem;

    const/4 v12, 0x0

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v13

    const/4 v14, 0x0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/DockActionItem;-><init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZI)V

    .line 903
    .restart local v1       #item:Lcom/android/internal/app/DockActionItem;
    const/4 v5, 0x2

    iput v5, v1, Lcom/android/internal/app/DockActionItem;->mType:I

    .line 904
    invoke-virtual {v1}, Lcom/android/internal/app/DockActionItem;->preparePracel()V

    .line 905
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 910
    .end local v1           #item:Lcom/android/internal/app/DockActionItem;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v15           #isGeneratedItem:Z
    .end local v16           #isSelectionButton:Z
    .end local v20           #overFlowButton:Landroid/widget/ImageView;
    .end local v21           #params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_6
    return-object v18
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 775
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 776
    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 777
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .line 778
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 779
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 781
    :cond_0
    if-lez p1, :cond_1

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 782
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 784
    :cond_1
    return v2
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 771
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOnlyOverFlow()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 934
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 935
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 936
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 938
    .end local v0           #params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    return v1
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public layoutActionItems(II)V
    .locals 5
    .parameter "top"
    .parameter "left"

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v2

    .line 924
    .local v2, itemCount:I
    const/4 v0, 0x0

    .line 925
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 926
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 927
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 928
    const/4 p1, 0x0

    .line 929
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v0, p2, p1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 931
    :cond_0
    return-void
.end method

.method public measureActionItems(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v2

    .line 915
    .local v2, itemCount:I
    const/4 v0, 0x0

    .line 916
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 917
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 918
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 111
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 113
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 713
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 714
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 715
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 49
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v45, v0

    if-nez v45, :cond_1

    .line 435
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v8

    .line 440
    .local v8, childCount:I
    add-int v45, p3, p5

    div-int/lit8 v28, v45, 0x2

    .line 441
    .local v28, midVertical:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v11

    .line 442
    .local v11, dividerWidth:I
    const/16 v31, 0x0

    .line 443
    .local v31, overflowWidth:I
    const/16 v30, 0x0

    .line 444
    .local v30, nonOverflowWidth:I
    const/16 v29, 0x0

    .line 445
    .local v29, nonOverflowCount:I
    sub-int v45, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v46

    sub-int v45, v45, v46

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v46

    sub-int v44, v45, v46

    .line 446
    .local v44, widthRemaining:I
    const/4 v14, 0x0

    .line 449
    .local v14, hasOverflow:Z
    const/4 v15, 0x0

    .line 450
    .local v15, hasSelectionButton:Z
    const/4 v13, 0x0

    .line 451
    .local v13, hasCustomAction:Z
    const/16 v42, 0x0

    .line 453
    .local v42, visibleItemCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v8, :cond_8

    .line 454
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 455
    .local v41, v:Landroid/view/View;
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_3

    .line 453
    :cond_2
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 459
    :cond_3
    add-int/lit8 v42, v42, 0x1

    .line 460
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 461
    .local v32, p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v45, v0

    if-eqz v45, :cond_5

    .line 462
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    .line 463
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v45

    if-eqz v45, :cond_4

    .line 464
    add-int v31, v31, v11

    .line 467
    :cond_4
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 468
    .local v16, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v46

    sub-int v45, v45, v46

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v46, v0

    sub-int v33, v45, v46

    .line 469
    .local v33, r:I
    sub-int v25, v33, v31

    .line 470
    .local v25, l:I
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 471
    .local v40, t:I
    add-int v5, v40, v16

    .line 472
    .local v5, b:I
    move-object/from16 v0, v41

    move/from16 v1, v25

    move/from16 v2, v40

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 474
    sub-int v44, v44, v31

    .line 475
    const/4 v14, 0x1

    .line 476
    goto :goto_2

    .line 477
    .end local v5           #b:I
    .end local v16           #height:I
    .end local v25           #l:I
    .end local v33           #r:I
    .end local v40           #t:I
    :cond_5
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v45

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v46, v0

    add-int v45, v45, v46

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v46, v0

    add-int v36, v45, v46

    .line 478
    .local v36, size:I
    add-int v30, v30, v36

    .line 479
    sub-int v44, v44, v36

    .line 480
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v45

    if-eqz v45, :cond_6

    .line 481
    add-int v30, v30, v11

    .line 483
    :cond_6
    add-int/lit8 v29, v29, 0x1

    .line 486
    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/meizu/widget/SelectionButton;

    move/from16 v45, v0

    if-eqz v45, :cond_7

    .line 487
    const/4 v15, 0x1

    .line 489
    :cond_7
    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 491
    .local v21, isGeneratedItem:Z
    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/meizu/widget/SelectionButton;

    move/from16 v23, v0

    .line 493
    .local v23, isSelectionButton:Z
    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/internal/view/menu/KeyBackButton;

    move/from16 v20, v0

    .line 495
    .local v20, isBackButton:Z
    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/meizu/widget/MzActionMenuItem;

    move/from16 v22, v0

    .line 497
    .local v22, isMzActionMenuItem:Z
    if-nez v21, :cond_2

    if-nez v23, :cond_2

    if-nez v20, :cond_2

    if-nez v22, :cond_2

    .line 499
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 503
    .end local v20           #isBackButton:Z
    .end local v21           #isGeneratedItem:Z
    .end local v22           #isMzActionMenuItem:Z
    .end local v23           #isSelectionButton:Z
    .end local v32           #p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v36           #size:I
    .end local v41           #v:Landroid/view/View;
    :cond_8
    const/16 v45, 0x1

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_9

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    move-object/from16 v0, v45

    instance-of v0, v0, Lcom/android/internal/view/menu/KeyBackButton;

    move/from16 v45, v0

    if-eqz v45, :cond_9

    .line 504
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 505
    .restart local v41       #v:Landroid/view/View;
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 506
    .restart local v16       #height:I
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 507
    .restart local v40       #t:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v45, v0

    add-int p2, p2, v45

    .line 508
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v45

    add-int v45, v45, p2

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v46

    add-int v46, v46, v40

    move-object/from16 v0, v41

    move/from16 v1, p2

    move/from16 v2, v40

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 513
    .end local v16           #height:I
    .end local v40           #t:I
    .end local v41           #v:Landroid/view/View;
    :cond_9
    if-nez v13, :cond_10

    if-lez v42, :cond_10

    const/16 v45, 0x5

    move/from16 v0, v42

    move/from16 v1, v45

    if-gt v0, v1, :cond_10

    .line 515
    sub-int v45, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v46

    sub-int v45, v45, v46

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v46

    sub-int v44, v45, v46

    .line 516
    const/4 v7, 0x0

    .line 517
    .local v7, child:Landroid/view/View;
    const/16 v39, 0x0

    .line 518
    .local v39, startLeft:I
    const/4 v12, 0x0

    .line 519
    .local v12, endRight:I
    const/4 v9, 0x0

    .line 520
    .local v9, childLeft:I
    const/4 v10, 0x0

    .line 521
    .local v10, childRight:I
    const/16 v16, 0x0

    .line 522
    .restart local v16       #height:I
    const/16 v43, 0x0

    .line 523
    .local v43, width:I
    const/16 v40, 0x0

    .line 524
    .restart local v40       #t:I
    move/from16 v0, v42

    if-ne v0, v8, :cond_b

    const/16 v19, 0x1

    .line 526
    .local v19, isAllVisible:Z
    :goto_3
    const/16 v45, 0x1

    move/from16 v0, v42

    move/from16 v1, v45

    if-eq v0, v1, :cond_a

    const/16 v45, 0x5

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_c

    .line 527
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v45, v0

    mul-int/lit8 v45, v45, 0x2

    sub-int v45, v44, v45

    div-int v6, v45, v42

    .line 528
    .local v6, cellWidth:I
    const/16 v18, 0x0

    .local v18, index:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v42

    if-ge v0, v1, :cond_0

    .line 529
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v7

    .line 530
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 531
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 532
    add-int/lit8 v45, v18, 0x1

    mul-int v12, v45, v6

    .line 533
    add-int v45, v39, v12

    sub-int v45, v45, v43

    div-int/lit8 v45, v45, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v46, v0

    add-int v9, v45, v46

    .line 534
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 535
    add-int v45, v9, v43

    add-int v46, v40, v16

    move/from16 v0, v40

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 536
    move/from16 v39, v12

    .line 528
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 524
    .end local v6           #cellWidth:I
    .end local v18           #index:I
    .end local v19           #isAllVisible:Z
    :cond_b
    const/16 v19, 0x0

    goto :goto_3

    .line 538
    .restart local v19       #isAllVisible:Z
    :cond_c
    const/16 v45, 0x2

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_d

    .line 540
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v7

    .line 541
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 542
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 543
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v46, v0

    add-int v46, v46, v43

    add-int v47, v40, v16

    move/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 547
    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v7

    .line 548
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 549
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 550
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v45, v0

    sub-int v45, v44, v45

    sub-int v45, v45, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v46, v0

    sub-int v46, v44, v46

    add-int v47, v40, v16

    move/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 552
    :cond_d
    const/16 v45, 0x3

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_e

    .line 554
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v7

    .line 555
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 556
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 557
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 558
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v46, v0

    add-int v46, v46, v43

    add-int v47, v40, v16

    move/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 561
    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v7

    .line 562
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 563
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 564
    sub-int v45, v44, v43

    div-int/lit8 v9, v45, 0x2

    .line 565
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 566
    add-int v45, v9, v43

    add-int v46, v40, v16

    move/from16 v0, v40

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 569
    const/16 v45, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v7

    .line 570
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 571
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 572
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 573
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v45, v0

    sub-int v45, v44, v45

    sub-int v45, v45, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v46, v0

    sub-int v46, v44, v46

    add-int v47, v40, v16

    move/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 574
    :cond_e
    const/16 v45, 0x4

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 576
    .restart local v6       #cellWidth:I
    const/16 v18, 0x0

    .restart local v18       #index:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v42

    if-ge v0, v1, :cond_0

    .line 577
    div-int/lit8 v45, v42, 0x2

    move/from16 v0, v18

    move/from16 v1, v45

    if-ge v0, v1, :cond_f

    .line 578
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v7

    .line 579
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 580
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    move/from16 v46, v0

    add-int v46, v46, v6

    mul-int v46, v46, v18

    add-int v9, v45, v46

    .line 583
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 584
    add-int v45, v9, v43

    add-int v46, v40, v16

    move/from16 v0, v40

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 576
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 586
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v7

    .line 587
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 588
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v45, v0

    sub-int v45, v44, v45

    add-int/lit8 v46, v42, -0x1

    sub-int v46, v46, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    move/from16 v47, v0

    add-int v47, v47, v6

    mul-int v46, v46, v47

    sub-int v10, v45, v46

    .line 591
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 592
    sub-int v45, v10, v43

    add-int v46, v40, v16

    move/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    invoke-virtual {v7, v0, v1, v10, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 599
    .end local v6           #cellWidth:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #childLeft:I
    .end local v10           #childRight:I
    .end local v12           #endRight:I
    .end local v16           #height:I
    .end local v18           #index:I
    .end local v19           #isAllVisible:Z
    .end local v39           #startLeft:I
    .end local v40           #t:I
    .end local v43           #width:I
    :cond_10
    const/16 v45, 0x1

    move/from16 v0, v45

    if-ne v8, v0, :cond_12

    if-nez v14, :cond_12

    .line 601
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 602
    .restart local v41       #v:Landroid/view/View;
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 603
    .local v26, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_0

    .line 606
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 607
    .restart local v43       #width:I
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 608
    .restart local v16       #height:I
    move/from16 v25, p2

    .line 609
    .restart local v25       #l:I
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 611
    .restart local v40       #t:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v45, v0

    if-lez v45, :cond_11

    .line 612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_0

    .line 637
    :goto_7
    :pswitch_0
    add-int v45, v25, v43

    add-int v46, v40, v16

    move-object/from16 v0, v41

    move/from16 v1, v25

    move/from16 v2, v40

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 614
    :pswitch_1
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v25, v0

    .line 615
    goto :goto_7

    .line 618
    :pswitch_2
    sub-int v45, p4, p2

    div-int/lit8 v27, v45, 0x2

    .line 619
    .local v27, midHorizontal:I
    div-int/lit8 v45, v43, 0x2

    sub-int v25, v27, v45

    .line 620
    goto :goto_7

    .line 623
    .end local v27           #midHorizontal:I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v46

    sub-int v45, v45, v46

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v46, v0

    sub-int v33, v45, v46

    .line 624
    .restart local v33       #r:I
    sub-int v25, v33, v43

    .line 625
    goto :goto_7

    .line 632
    .end local v33           #r:I
    :cond_11
    sub-int v45, p4, p2

    div-int/lit8 v27, v45, 0x2

    .line 633
    .restart local v27       #midHorizontal:I
    div-int/lit8 v45, v43, 0x2

    sub-int v25, v27, v45

    .line 634
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    goto :goto_7

    .line 641
    .end local v16           #height:I
    .end local v25           #l:I
    .end local v26           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v27           #midHorizontal:I
    .end local v40           #t:I
    .end local v41           #v:Landroid/view/View;
    .end local v43           #width:I
    :cond_12
    const/16 v45, 0x2

    move/from16 v0, v45

    if-ne v8, v0, :cond_15

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v45, v0

    if-lez v45, :cond_15

    .line 642
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 643
    .restart local v41       #v:Landroid/view/View;
    const/16 v24, 0x0

    .line 644
    .local v24, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v45, v0

    if-eqz v45, :cond_13

    move-object/from16 v24, v41

    .line 645
    check-cast v24, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 647
    :cond_13
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 648
    .restart local v26       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_0

    .line 651
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 652
    .restart local v43       #width:I
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 653
    .restart local v16       #height:I
    move/from16 v25, p2

    .line 654
    .restart local v25       #l:I
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 656
    .restart local v40       #t:I
    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 657
    .local v34, selectionButton:Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v35

    .line 659
    .local v35, selectionButtonWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v45, v0

    if-lez v45, :cond_14

    .line 660
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_1

    .line 685
    :goto_8
    :pswitch_4
    add-int v45, v25, v43

    add-int v46, v40, v16

    move-object/from16 v0, v41

    move/from16 v1, v25

    move/from16 v2, v40

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v45

    sub-int v45, v45, v35

    const/16 v46, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v47

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v48

    move-object/from16 v0, v34

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 662
    :pswitch_5
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v25, v0

    .line 663
    goto :goto_8

    .line 666
    :pswitch_6
    sub-int v45, p4, p2

    sub-int v45, v45, v35

    div-int/lit8 v27, v45, 0x2

    .line 667
    .restart local v27       #midHorizontal:I
    div-int/lit8 v45, v43, 0x2

    sub-int v25, v27, v45

    .line 668
    goto :goto_8

    .line 671
    .end local v27           #midHorizontal:I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v46

    sub-int v45, v45, v46

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v46, v0

    sub-int v45, v45, v46

    sub-int v33, v45, v35

    .line 672
    .restart local v33       #r:I
    sub-int v25, v33, v43

    .line 673
    goto :goto_8

    .line 680
    .end local v33           #r:I
    :cond_14
    sub-int v45, p4, p2

    sub-int v45, v45, v35

    div-int/lit8 v27, v45, 0x2

    .line 681
    .restart local v27       #midHorizontal:I
    div-int/lit8 v45, v43, 0x2

    sub-int v25, v27, v45

    .line 682
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    goto :goto_8

    .line 691
    .end local v16           #height:I
    .end local v24           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v25           #l:I
    .end local v26           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v27           #midHorizontal:I
    .end local v34           #selectionButton:Landroid/view/View;
    .end local v35           #selectionButtonWidth:I
    .end local v40           #t:I
    .end local v41           #v:Landroid/view/View;
    .end local v43           #width:I
    :cond_15
    if-eqz v14, :cond_17

    const/16 v45, 0x0

    :goto_9
    sub-int v37, v29, v45

    .line 692
    .local v37, spacerCount:I
    const/16 v46, 0x0

    if-lez v37, :cond_18

    div-int v45, v44, v37

    :goto_a
    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 694
    .local v38, spacerSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v39

    .line 695
    .restart local v39       #startLeft:I
    const/16 v17, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v0, v8, :cond_0

    .line 696
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 697
    .restart local v41       #v:Landroid/view/View;
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 698
    .restart local v26       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_16

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v45, v0

    if-eqz v45, :cond_19

    .line 695
    :cond_16
    :goto_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 691
    .end local v26           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v37           #spacerCount:I
    .end local v38           #spacerSize:I
    .end local v39           #startLeft:I
    .end local v41           #v:Landroid/view/View;
    :cond_17
    const/16 v45, 0x1

    goto :goto_9

    .line 692
    .restart local v37       #spacerCount:I
    :cond_18
    const/16 v45, 0x0

    goto :goto_a

    .line 702
    .restart local v26       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v38       #spacerSize:I
    .restart local v39       #startLeft:I
    .restart local v41       #v:Landroid/view/View;
    :cond_19
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v45, v0

    add-int v39, v39, v45

    .line 703
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 704
    .restart local v43       #width:I
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 705
    .restart local v16       #height:I
    div-int/lit8 v45, v16, 0x2

    sub-int v40, v28, v45

    .line 706
    .restart local v40       #t:I
    add-int v45, v39, v43

    add-int v46, v40, v16

    move-object/from16 v0, v41

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 707
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v45, v0

    add-int v45, v45, v43

    add-int v45, v45, v38

    add-int v39, v39, v45

    goto :goto_c

    .line 612
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 660
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 118
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 119
    .local v4, wasFormatted:Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x4000

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 121
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 122
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 127
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 128
    .local v5, widthSize:I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 129
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 130
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 133
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 145
    :goto_1
    return-void

    .end local v5           #widthSize:I
    :cond_2
    move v6, v8

    .line 119
    goto :goto_0

    .line 137
    .restart local v5       #widthSize:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 138
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 141
    .local v3, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 143
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setMenuShowGravity(I)V
    .locals 0
    .parameter "showGravity"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    .line 102
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    .line 722
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 723
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 94
    return-void
.end method

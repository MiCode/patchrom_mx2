.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


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

.field private mExtraPaddingFor4:I

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
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 60
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    .line 62
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 70
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .local v1, density:F
    const/high16 v3, 0x4260

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 73
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 75
    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 81
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1050101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 82
    const v3, 0x1050103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    .line 84
    const v3, 0x1050102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    .line 85
    const v3, 0x1050106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 86
    return-void
.end method

.method private getVisibleChildAt(IZ)Landroid/view/View;
    .locals 5
    .parameter "index"
    .parameter "allVisiable"

    .prologue
    .line 769
    if-eqz p2, :cond_0

    .line 770
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 788
    :goto_0
    return-object v3

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    .line 773
    .local v0, childCount:I
    const/4 v2, -0x1

    .line 774
    .local v2, visibleIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 775
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 776
    add-int/lit8 v2, v2, 0x1

    .line 779
    :cond_1
    if-ne v2, p1, :cond_3

    .line 780
    move v2, v1

    .line 785
    :cond_2
    if-ltz v2, :cond_4

    if-ge v2, v0, :cond_4

    .line 786
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 774
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 788
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private layoutMenuItems(III)V
    .locals 20
    .parameter "visibleItemCount"
    .parameter "widthRemaining"
    .parameter "midVertical"

    .prologue
    .line 802
    const/4 v4, 0x0

    .line 803
    .local v4, child:Landroid/view/View;
    const/4 v14, 0x0

    .line 804
    .local v14, startLeft:I
    const/4 v8, 0x0

    .line 805
    .local v8, endRight:I
    const/4 v6, 0x0

    .line 806
    .local v6, childLeft:I
    const/4 v7, 0x0

    .line 807
    .local v7, childRight:I
    const/4 v9, 0x0

    .line 808
    .local v9, height:I
    const/16 v16, 0x0

    .line 809
    .local v16, width:I
    const/4 v15, 0x0

    .line 810
    .local v15, t:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v5

    .line 812
    .local v5, childCount:I
    move/from16 v0, p1

    if-ne v0, v5, :cond_1

    const/4 v11, 0x1

    .line 814
    .local v11, isAllVisible:Z
    :goto_0
    sget-object v17, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 815
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 816
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    sub-int v17, p2, v17

    div-int v3, v17, p1

    .line 817
    .local v3, cellWidth:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_1
    move/from16 v0, p1

    if-ge v10, v0, :cond_3

    .line 818
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 819
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 820
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 821
    add-int/lit8 v17, v10, 0x1

    mul-int v8, v17, v3

    .line 822
    add-int v17, v14, v8

    sub-int v17, v17, v16

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 823
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 824
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 825
    move v14, v8

    .line 817
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 812
    .end local v3           #cellWidth:I
    .end local v10           #index:I
    .end local v11           #isAllVisible:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 827
    .restart local v11       #isAllVisible:Z
    :cond_2
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 829
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 830
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 831
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 832
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 833
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v18, v18, v16

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 836
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 837
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 838
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 839
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 840
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 972
    :cond_3
    :goto_2
    return-void

    .line 841
    :cond_4
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 843
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 844
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 845
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 846
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v18, v18, v16

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 850
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 851
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 852
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 853
    sub-int v17, p2, v16

    div-int/lit8 v6, v17, 0x2

    .line 854
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 855
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 858
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 859
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 860
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 861
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 863
    :cond_5
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 864
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 865
    .restart local v3       #cellWidth:I
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_3
    move/from16 v0, p1

    if-ge v10, v0, :cond_3

    .line 866
    div-int/lit8 v17, p1, 0x2

    move/from16 v0, v17

    if-ge v10, v0, :cond_6

    .line 867
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 868
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 869
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 870
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    move/from16 v18, v0

    add-int v18, v18, v3

    mul-int v18, v18, v10

    add-int v6, v17, v18

    .line 872
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 873
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 865
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 875
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 876
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 877
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 878
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    add-int/lit8 v18, p1, -0x1

    sub-int v18, v18, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    move/from16 v19, v0

    add-int v19, v19, v3

    mul-int v18, v18, v19

    sub-int v7, v17, v18

    .line 880
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 881
    sub-int v17, v7, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v15, v7, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 886
    .end local v3           #cellWidth:I
    .end local v10           #index:I
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v17, v0

    if-lez v17, :cond_8

    .line 887
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 888
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 889
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 890
    const/4 v12, 0x0

    .line 891
    .local v12, l:I
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 909
    :goto_5
    :pswitch_0
    add-int v17, v12, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v12, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 894
    :pswitch_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 895
    goto :goto_5

    .line 898
    :pswitch_2
    div-int/lit8 v13, p2, 0x2

    .line 899
    .local v13, midHorizontal:I
    div-int/lit8 v17, v16, 0x2

    sub-int v12, v13, v17

    .line 900
    goto :goto_5

    .line 903
    .end local v13           #midHorizontal:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v12, v17, v16

    .line 904
    goto :goto_5

    .line 910
    .end local v12           #l:I
    :cond_8
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 911
    :cond_9
    div-int v3, p2, p1

    .line 912
    .restart local v3       #cellWidth:I
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_6
    move/from16 v0, p1

    if-ge v10, v0, :cond_3

    .line 913
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 914
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 915
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 916
    add-int/lit8 v17, v10, 0x1

    mul-int v8, v17, v3

    .line 917
    add-int v17, v14, v8

    sub-int v17, v17, v16

    div-int/lit8 v6, v17, 0x2

    .line 918
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 919
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 920
    move v14, v8

    .line 912
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 922
    .end local v3           #cellWidth:I
    .end local v10           #index:I
    :cond_a
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 924
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 925
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 926
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 927
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 928
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v18, v18, v16

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 931
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 932
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 933
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 934
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 936
    :cond_b
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 938
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 939
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 940
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 941
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v18, v18, v16

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 945
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 946
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 947
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 948
    sub-int v17, p2, v16

    div-int/lit8 v6, v17, 0x2

    .line 949
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 950
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 953
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 954
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 955
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 956
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 958
    :cond_c
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    sub-int v17, p2, v17

    div-int v3, v17, p1

    .line 960
    .restart local v3       #cellWidth:I
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_7
    move/from16 v0, p1

    if-ge v10, v0, :cond_3

    .line 961
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 962
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 963
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 964
    add-int/lit8 v17, v10, 0x1

    mul-int v8, v17, v3

    .line 965
    add-int v17, v14, v8

    sub-int v17, v17, v16

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 966
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 967
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 968
    move v14, v8

    .line 960
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 892
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 416
    .local v8, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 418
    .local v2, childHeightSize:I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 419
    .local v1, childHeightMode:I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 421
    .local v3, childHeightSpec:I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 423
    .local v7, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 425
    .local v6, hasText:Z
    :goto_1
    const/4 v0, 0x0

    .line 426
    .local v0, cellsUsed:I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 427
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 429
    .local v4, childWidthSpec:I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 431
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 432
    .local v9, measuredWidth:I
    div-int v0, v9, p1

    .line 433
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 434
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 437
    .end local v4           #childWidthSpec:I
    .end local v9           #measuredWidth:I
    :cond_2
    iget-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 438
    .local v5, expandable:Z
    :goto_2
    iput-boolean v5, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 440
    iput v0, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 441
    mul-int v10, v0, p1

    .line 442
    .local v10, targetWidth:I
    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 444
    return v0

    .line 421
    .end local v0           #cellsUsed:I
    .end local v5           #expandable:Z
    .end local v6           #hasText:Z
    .end local v7           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10           #targetWidth:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 423
    .restart local v7       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 437
    .restart local v0       #cellsUsed:I
    .restart local v6       #hasText:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 51
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 145
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 146
    .local v23, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v46

    .line 147
    .local v46, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 149
    .local v25, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v47

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v48

    add-int v45, v47, v48

    .line 150
    .local v45, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v47

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v48

    add-int v24, v47, v48

    .line 152
    .local v24, heightPadding:I
    const/high16 v47, 0x4000

    move/from16 v0, v23

    move/from16 v1, v47

    if-ne v0, v1, :cond_1

    sub-int v47, v25, v24

    const/high16 v48, 0x4000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 157
    .local v31, itemHeightSpec:I
    :goto_0
    sub-int v46, v46, v45

    .line 159
    move/from16 v10, v46

    .line 160
    .local v10, cellsWidthSize:I
    sget-object v47, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v47

    if-eqz v47, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v47, v0

    mul-int/lit8 v47, v47, 0x2

    sub-int v10, v10, v47

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v47, v0

    div-int v4, v10, v47

    .line 165
    .local v4, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v47, v0

    rem-int v6, v10, v47

    .line 167
    .local v6, cellSizeRemaining:I
    if-nez v4, :cond_2

    .line 169
    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 397
    :goto_1
    return-void

    .line 152
    .end local v4           #cellCount:I
    .end local v6           #cellSizeRemaining:I
    .end local v10           #cellsWidthSize:I
    .end local v31           #itemHeightSpec:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v47, v0

    sub-int v48, v25, v24

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->min(II)I

    move-result v47

    const/high16 v48, -0x8000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    goto :goto_0

    .line 173
    .restart local v4       #cellCount:I
    .restart local v6       #cellSizeRemaining:I
    .restart local v10       #cellsWidthSize:I
    .restart local v31       #itemHeightSpec:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v47, v0

    div-int v48, v6, v4

    add-int v5, v47, v48

    .line 175
    .local v5, cellSize:I
    move v8, v4

    .line 176
    .local v8, cellsRemaining:I
    const/16 v34, 0x0

    .line 177
    .local v34, maxChildHeight:I
    const/16 v33, 0x0

    .line 178
    .local v33, maxCellsUsed:I
    const/16 v19, 0x0

    .line 179
    .local v19, expandableItemCount:I
    const/16 v43, 0x0

    .line 180
    .local v43, visibleItemCount:I
    const/16 v22, 0x0

    .line 183
    .local v22, hasOverflow:Z
    const/16 v21, 0x0

    .line 186
    .local v21, hasCustomAction:Z
    const-wide/16 v41, 0x0

    .line 188
    .local v41, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v13

    .line 190
    .local v13, childCount:I
    invoke-static/range {v31 .. v31}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v47

    sub-int v15, v47, v24

    .line 191
    .local v15, childHeightSize:I
    invoke-static/range {v31 .. v31}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 192
    .local v14, childHeightMode:I
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 193
    .local v16, childHeightSpec:I
    const/16 v17, 0x0

    .line 195
    .local v17, childWidthSpec:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    move/from16 v0, v26

    if-ge v0, v13, :cond_d

    .line 196
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 197
    .local v12, child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_3

    .line 195
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 200
    :cond_3
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v28, v0

    .line 202
    .local v28, isGeneratedItem:Z
    instance-of v0, v12, Lcom/meizu/widget/SelectionButton;

    move/from16 v30, v0

    .line 204
    .local v30, isSelectionButton:Z
    instance-of v0, v12, Lcom/android/internal/view/menu/KeyBackButton;

    move/from16 v27, v0

    .line 206
    .local v27, isBackButton:Z
    instance-of v0, v12, Lcom/meizu/widget/MzActionMenuItem;

    move/from16 v29, v0

    .line 207
    .local v29, isMzActionMenuItem:Z
    add-int/lit8 v43, v43, 0x1

    .line 209
    if-eqz v28, :cond_4

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 215
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 216
    .local v32, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 217
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 218
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 219
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 220
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 221
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 222
    if-eqz v28, :cond_8

    move-object/from16 v47, v12

    check-cast v47, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v47

    if-eqz v47, :cond_8

    const/16 v47, 0x1

    :goto_4
    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 225
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v47, v0

    if-eqz v47, :cond_9

    const/4 v7, 0x1

    .line 227
    .local v7, cellsAvailable:I
    :goto_5
    move/from16 v0, v31

    move/from16 v1, v24

    invoke-static {v12, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 230
    .local v9, cellsUsed:I
    move/from16 v0, v33

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 231
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v47, v0

    if-eqz v47, :cond_5

    add-int/lit8 v19, v19, 0x1

    .line 232
    :cond_5
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v47, v0

    if-eqz v47, :cond_6

    const/16 v22, 0x1

    .line 234
    :cond_6
    sub-int/2addr v8, v9

    .line 235
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v47

    move/from16 v0, v34

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 236
    const/16 v47, 0x1

    move/from16 v0, v47

    if-ne v9, v0, :cond_7

    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    or-long v41, v41, v47

    .line 238
    :cond_7
    if-eqz v28, :cond_a

    move-object/from16 v47, v12

    check-cast v47, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v47

    if-eqz v47, :cond_a

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v47, v0

    const/high16 v48, -0x8000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 240
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChild(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 222
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    :cond_8
    const/16 v47, 0x0

    goto :goto_4

    :cond_9
    move v7, v8

    .line 225
    goto :goto_5

    .line 241
    .restart local v7       #cellsAvailable:I
    .restart local v9       #cellsUsed:I
    :cond_a
    if-nez v28, :cond_b

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v47, v0

    if-nez v47, :cond_b

    if-nez v30, :cond_b

    if-nez v27, :cond_b

    if-eqz v29, :cond_c

    .line 243
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v47, v0

    const/high16 v48, 0x4000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 244
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_3

    .line 246
    :cond_c
    const/16 v21, 0x1

    goto/16 :goto_3

    .line 253
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    .end local v12           #child:Landroid/view/View;
    .end local v27           #isBackButton:Z
    .end local v28           #isGeneratedItem:Z
    .end local v29           #isMzActionMenuItem:Z
    .end local v30           #isSelectionButton:Z
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_d
    if-eqz v22, :cond_f

    const/16 v47, 0x2

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_f

    const/4 v11, 0x1

    .line 258
    .local v11, centerSingleExpandedItem:Z
    :goto_6
    const/16 v39, 0x0

    .line 259
    .local v39, needsExpansion:Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v47, v0

    if-nez v47, :cond_13

    if-lez v19, :cond_13

    if-lez v8, :cond_13

    .line 260
    const v35, 0x7fffffff

    .line 261
    .local v35, minCells:I
    const-wide/16 v36, 0x0

    .line 262
    .local v36, minCellsAt:J
    const/16 v38, 0x0

    .line 263
    .local v38, minCellsItemCount:I
    const/16 v26, 0x0

    :goto_8
    move/from16 v0, v26

    if-ge v0, v13, :cond_12

    .line 264
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 265
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 268
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v47, v0

    if-nez v47, :cond_10

    .line 263
    :cond_e
    :goto_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 253
    .end local v11           #centerSingleExpandedItem:Z
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v35           #minCells:I
    .end local v36           #minCellsAt:J
    .end local v38           #minCellsItemCount:I
    .end local v39           #needsExpansion:Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_6

    .line 271
    .restart local v11       #centerSingleExpandedItem:Z
    .restart local v12       #child:Landroid/view/View;
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v35       #minCells:I
    .restart local v36       #minCellsAt:J
    .restart local v38       #minCellsItemCount:I
    .restart local v39       #needsExpansion:Z
    :cond_10
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v35

    if-ge v0, v1, :cond_11

    .line 272
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v35, v0

    .line 273
    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 274
    const/16 v38, 0x1

    goto :goto_9

    .line 275
    :cond_11
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 276
    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    or-long v36, v36, v47

    .line 277
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    .line 282
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_12
    or-long v41, v41, v36

    .line 284
    move/from16 v0, v38

    if-le v0, v8, :cond_1a

    .line 313
    .end local v35           #minCells:I
    .end local v36           #minCellsAt:J
    .end local v38           #minCellsItemCount:I
    :cond_13
    if-nez v22, :cond_1f

    const/16 v47, 0x1

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_1f

    const/16 v40, 0x1

    .line 321
    .local v40, singleItem:Z
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v47, v0

    if-nez v47, :cond_27

    if-lez v8, :cond_27

    const-wide/16 v47, 0x0

    cmp-long v47, v41, v47

    if-eqz v47, :cond_27

    add-int/lit8 v47, v43, -0x1

    move/from16 v0, v47

    if-ge v8, v0, :cond_14

    if-nez v21, :cond_16

    :cond_14
    if-eqz v40, :cond_15

    if-nez v21, :cond_16

    :cond_15
    const/16 v47, 0x1

    move/from16 v0, v33

    move/from16 v1, v47

    if-le v0, v1, :cond_27

    .line 324
    :cond_16
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->bitCount(J)I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v18, v0

    .line 326
    .local v18, expandCount:F
    if-nez v40, :cond_18

    .line 328
    const-wide/16 v47, 0x1

    and-long v47, v47, v41

    const-wide/16 v49, 0x0

    cmp-long v47, v47, v49

    if-eqz v47, :cond_17

    .line 329
    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 330
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v47, v0

    if-nez v47, :cond_17

    const/high16 v47, 0x3f00

    sub-float v18, v18, v47

    .line 332
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v47, 0x1

    add-int/lit8 v48, v13, -0x1

    shl-int v47, v47, v48

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    and-long v47, v47, v41

    const-wide/16 v49, 0x0

    cmp-long v47, v47, v49

    if-eqz v47, :cond_18

    .line 333
    add-int/lit8 v47, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 334
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v47, v0

    if-nez v47, :cond_18

    const/high16 v47, 0x3f00

    sub-float v18, v18, v47

    .line 338
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_18
    const/16 v47, 0x0

    cmpl-float v47, v18, v47

    if-lez v47, :cond_20

    mul-int v47, v8, v5

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    div-float v47, v47, v18

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v20, v0

    .line 341
    .local v20, extraPixels:I
    :goto_b
    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    if-ge v0, v13, :cond_26

    .line 342
    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    and-long v47, v47, v41

    const-wide/16 v49, 0x0

    cmp-long v47, v47, v49

    if-nez v47, :cond_21

    .line 341
    :cond_19
    :goto_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    .line 287
    .end local v18           #expandCount:F
    .end local v20           #extraPixels:I
    .end local v40           #singleItem:Z
    .restart local v35       #minCells:I
    .restart local v36       #minCellsAt:J
    .restart local v38       #minCellsItemCount:I
    :cond_1a
    add-int/lit8 v35, v35, 0x1

    .line 289
    const/16 v26, 0x0

    :goto_e
    move/from16 v0, v26

    if-ge v0, v13, :cond_1e

    .line 290
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 291
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 292
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    and-long v47, v47, v36

    const-wide/16 v49, 0x0

    cmp-long v47, v47, v49

    if-nez v47, :cond_1c

    .line 294
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v35

    if-ne v0, v1, :cond_1b

    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    or-long v41, v41, v47

    .line 289
    :cond_1b
    :goto_f
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 298
    :cond_1c
    if-eqz v11, :cond_1d

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v47, v0

    if-eqz v47, :cond_1d

    const/16 v47, 0x1

    move/from16 v0, v47

    if-ne v8, v0, :cond_1d

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v47, v0

    add-int v47, v47, v5

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 302
    :cond_1d
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 303
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 304
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 307
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1e
    const/16 v39, 0x1

    .line 308
    goto/16 :goto_7

    .line 313
    .end local v35           #minCells:I
    .end local v36           #minCellsAt:J
    .end local v38           #minCellsItemCount:I
    :cond_1f
    const/16 v40, 0x0

    goto/16 :goto_a

    .line 338
    .restart local v18       #expandCount:F
    .restart local v40       #singleItem:Z
    :cond_20
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 344
    .restart local v20       #extraPixels:I
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 345
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 346
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v47, v0

    if-eqz v47, :cond_23

    .line 348
    move/from16 v0, v20

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 349
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 350
    if-nez v26, :cond_22

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v47, v0

    if-nez v47, :cond_22

    .line 353
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v47, v0

    div-int/lit8 v47, v47, 0x2

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 355
    :cond_22
    const/16 v39, 0x1

    goto/16 :goto_d

    .line 356
    :cond_23
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v47, v0

    if-eqz v47, :cond_24

    .line 357
    move/from16 v0, v20

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 358
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 359
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v47, v0

    div-int/lit8 v47, v47, 0x2

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 360
    const/16 v39, 0x1

    goto/16 :goto_d

    .line 365
    :cond_24
    if-eqz v26, :cond_25

    .line 366
    div-int/lit8 v47, v20, 0x2

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 368
    :cond_25
    add-int/lit8 v47, v13, -0x1

    move/from16 v0, v26

    move/from16 v1, v47

    if-eq v0, v1, :cond_19

    .line 369
    div-int/lit8 v47, v20, 0x2

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 374
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_26
    const/4 v8, 0x0

    .line 378
    .end local v18           #expandCount:F
    .end local v20           #extraPixels:I
    :cond_27
    if-eqz v39, :cond_29

    .line 379
    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    if-ge v0, v13, :cond_29

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 381
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 383
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v47, v0

    if-nez v47, :cond_28

    .line 379
    :goto_11
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 385
    :cond_28
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    mul-int v47, v47, v5

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v48, v0

    add-int v44, v47, v48

    .line 386
    .local v44, width:I
    const/high16 v47, 0x4000

    move/from16 v0, v44

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move/from16 v0, v47

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .line 391
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v44           #width:I
    :cond_29
    const/high16 v47, 0x4000

    move/from16 v0, v23

    move/from16 v1, v47

    if-eq v0, v1, :cond_2a

    .line 392
    move/from16 v25, v34

    .line 395
    :cond_2a
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 396
    mul-int v47, v8, v5

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 688
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
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 663
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 665
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 666
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 671
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
    .line 676
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    .line 677
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 678
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 679
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 683
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
    .line 692
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 693
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 694
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 711
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 712
    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 713
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .line 714
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 715
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 717
    :cond_0
    if-lez p1, :cond_1

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 718
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 720
    :cond_1
    return v2
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 707
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOnlyOverFlow()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 795
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 796
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 798
    .end local v0           #params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    return v1
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 107
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 109
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 649
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 650
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 651
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 42
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v38, v0

    if-nez v38, :cond_1

    .line 450
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 455
    .local v6, childCount:I
    add-int v38, p3, p5

    div-int/lit8 v21, v38, 0x2

    .line 456
    .local v21, midVertical:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 457
    .local v7, dividerWidth:I
    const/16 v24, 0x0

    .line 458
    .local v24, overflowWidth:I
    const/16 v23, 0x0

    .line 459
    .local v23, nonOverflowWidth:I
    const/16 v22, 0x0

    .line 460
    .local v22, nonOverflowCount:I
    sub-int v38, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    sub-int v38, v38, v39

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v39

    sub-int v37, v38, v39

    .line 461
    .local v37, widthRemaining:I
    const/4 v9, 0x0

    .line 464
    .local v9, hasOverflow:Z
    const/4 v10, 0x0

    .line 465
    .local v10, hasSelectionButton:Z
    const/4 v8, 0x0

    .line 466
    .local v8, hasCustomAction:Z
    const/16 v35, 0x0

    .line 468
    .local v35, visibleItemCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v6, :cond_8

    .line 469
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 470
    .local v34, v:Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 468
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 474
    :cond_3
    add-int/lit8 v35, v35, 0x1

    .line 475
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 476
    .local v25, p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    .line 477
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 478
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 479
    add-int v24, v24, v7

    .line 482
    :cond_4
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 483
    .local v11, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    sub-int v38, v38, v39

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v39, v0

    sub-int v26, v38, v39

    .line 484
    .local v26, r:I
    sub-int v18, v26, v24

    .line 485
    .local v18, l:I
    div-int/lit8 v38, v11, 0x2

    sub-int v33, v21, v38

    .line 486
    .local v33, t:I
    add-int v5, v33, v11

    .line 487
    .local v5, b:I
    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v33

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 489
    sub-int v37, v37, v24

    .line 490
    const/4 v9, 0x1

    .line 491
    goto :goto_2

    .line 492
    .end local v5           #b:I
    .end local v11           #height:I
    .end local v18           #l:I
    .end local v26           #r:I
    .end local v33           #t:I
    :cond_5
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v38

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v29, v38, v39

    .line 493
    .local v29, size:I
    add-int v23, v23, v29

    .line 494
    sub-int v37, v37, v29

    .line 495
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 496
    add-int v23, v23, v7

    .line 498
    :cond_6
    add-int/lit8 v22, v22, 0x1

    .line 501
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/meizu/widget/SelectionButton;

    move/from16 v38, v0

    if-eqz v38, :cond_7

    .line 502
    const/4 v10, 0x1

    .line 504
    :cond_7
    move-object/from16 v0, v34

    instance-of v14, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 506
    .local v14, isGeneratedItem:Z
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/meizu/widget/SelectionButton;

    move/from16 v16, v0

    .line 508
    .local v16, isSelectionButton:Z
    move-object/from16 v0, v34

    instance-of v13, v0, Lcom/android/internal/view/menu/KeyBackButton;

    .line 510
    .local v13, isBackButton:Z
    move-object/from16 v0, v34

    instance-of v15, v0, Lcom/meizu/widget/MzActionMenuItem;

    .line 512
    .local v15, isMzActionMenuItem:Z
    if-nez v14, :cond_2

    if-nez v16, :cond_2

    if-nez v13, :cond_2

    if-nez v15, :cond_2

    .line 514
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 518
    .end local v13           #isBackButton:Z
    .end local v14           #isGeneratedItem:Z
    .end local v15           #isMzActionMenuItem:Z
    .end local v16           #isSelectionButton:Z
    .end local v25           #p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v29           #size:I
    .end local v34           #v:Landroid/view/View;
    :cond_8
    const/16 v38, 0x1

    move/from16 v0, v35

    move/from16 v1, v38

    if-ne v0, v1, :cond_9

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/android/internal/view/menu/KeyBackButton;

    move/from16 v38, v0

    if-eqz v38, :cond_9

    .line 519
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 520
    .restart local v34       #v:Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 521
    .restart local v11       #height:I
    div-int/lit8 v38, v11, 0x2

    sub-int v33, v21, v38

    .line 522
    .restart local v33       #t:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v38, v0

    add-int p2, p2, v38

    .line 523
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v38

    add-int v38, v38, p2

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    add-int v39, v39, v33

    move-object/from16 v0, v34

    move/from16 v1, p2

    move/from16 v2, v33

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, v34

    move/from16 v1, p2

    move/from16 v2, v33

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/view/menu/ActionMenuView$Injector;->layout(Landroid/view/View;IIII)V

    goto/16 :goto_0

    .line 528
    .end local v11           #height:I
    .end local v33           #t:I
    .end local v34           #v:Landroid/view/View;
    :cond_9
    if-nez v8, :cond_a

    if-lez v35, :cond_a

    const/16 v38, 0x5

    move/from16 v0, v35

    move/from16 v1, v38

    if-gt v0, v1, :cond_a

    .line 530
    sub-int v38, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    sub-int v38, v38, v39

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v39

    sub-int v37, v38, v39

    .line 531
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v37

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->layoutMenuItems(III)V

    goto/16 :goto_0

    .line 535
    :cond_a
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v6, v0, :cond_c

    if-nez v9, :cond_c

    .line 537
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 538
    .restart local v34       #v:Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 539
    .local v19, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_0

    .line 542
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v36

    .line 543
    .local v36, width:I
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 544
    .restart local v11       #height:I
    move/from16 v18, p2

    .line 545
    .restart local v18       #l:I
    div-int/lit8 v38, v11, 0x2

    sub-int v33, v21, v38

    .line 547
    .restart local v33       #t:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v38, v0

    if-lez v38, :cond_b

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_0

    .line 573
    :goto_3
    :pswitch_0
    add-int v38, v18, v36

    add-int v39, v33, v11

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v33

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 550
    :pswitch_1
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    .line 551
    goto :goto_3

    .line 554
    :pswitch_2
    sub-int v38, p4, p2

    div-int/lit8 v20, v38, 0x2

    .line 555
    .local v20, midHorizontal:I
    div-int/lit8 v38, v36, 0x2

    sub-int v18, v20, v38

    .line 556
    goto :goto_3

    .line 559
    .end local v20           #midHorizontal:I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    sub-int v38, v38, v39

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v39, v0

    sub-int v26, v38, v39

    .line 560
    .restart local v26       #r:I
    sub-int v18, v26, v36

    .line 561
    goto :goto_3

    .line 568
    .end local v26           #r:I
    :cond_b
    sub-int v38, p4, p2

    div-int/lit8 v20, v38, 0x2

    .line 569
    .restart local v20       #midHorizontal:I
    div-int/lit8 v38, v36, 0x2

    sub-int v18, v20, v38

    .line 570
    div-int/lit8 v38, v11, 0x2

    sub-int v33, v21, v38

    goto :goto_3

    .line 577
    .end local v11           #height:I
    .end local v18           #l:I
    .end local v19           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v20           #midHorizontal:I
    .end local v33           #t:I
    .end local v34           #v:Landroid/view/View;
    .end local v36           #width:I
    :cond_c
    const/16 v38, 0x2

    move/from16 v0, v38

    if-ne v6, v0, :cond_f

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v38, v0

    if-lez v38, :cond_f

    .line 578
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 579
    .restart local v34       #v:Landroid/view/View;
    const/16 v17, 0x0

    .line 580
    .local v17, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_d

    move-object/from16 v17, v34

    .line 581
    check-cast v17, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 583
    :cond_d
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 584
    .restart local v19       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_0

    .line 587
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v36

    .line 588
    .restart local v36       #width:I
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 589
    .restart local v11       #height:I
    move/from16 v18, p2

    .line 590
    .restart local v18       #l:I
    div-int/lit8 v38, v11, 0x2

    sub-int v33, v21, v38

    .line 592
    .restart local v33       #t:I
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 593
    .local v27, selectionButton:Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 595
    .local v28, selectionButtonWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v38, v0

    if-lez v38, :cond_e

    .line 596
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_1

    .line 621
    :goto_4
    :pswitch_4
    add-int v38, v18, v36

    add-int v39, v33, v11

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v33

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v38

    sub-int v38, v38, v28

    const/16 v39, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v40

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v41

    move-object/from16 v0, v27

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 598
    :pswitch_5
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    .line 599
    goto :goto_4

    .line 602
    :pswitch_6
    sub-int v38, p4, p2

    sub-int v38, v38, v28

    div-int/lit8 v20, v38, 0x2

    .line 603
    .restart local v20       #midHorizontal:I
    div-int/lit8 v38, v36, 0x2

    sub-int v18, v20, v38

    .line 604
    goto :goto_4

    .line 607
    .end local v20           #midHorizontal:I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    sub-int v38, v38, v39

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    sub-int v26, v38, v28

    .line 608
    .restart local v26       #r:I
    sub-int v18, v26, v36

    .line 609
    goto :goto_4

    .line 616
    .end local v26           #r:I
    :cond_e
    sub-int v38, p4, p2

    sub-int v38, v38, v28

    div-int/lit8 v20, v38, 0x2

    .line 617
    .restart local v20       #midHorizontal:I
    div-int/lit8 v38, v36, 0x2

    sub-int v18, v20, v38

    .line 618
    div-int/lit8 v38, v11, 0x2

    sub-int v33, v21, v38

    goto :goto_4

    .line 627
    .end local v11           #height:I
    .end local v17           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v18           #l:I
    .end local v19           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v20           #midHorizontal:I
    .end local v27           #selectionButton:Landroid/view/View;
    .end local v28           #selectionButtonWidth:I
    .end local v33           #t:I
    .end local v34           #v:Landroid/view/View;
    .end local v36           #width:I
    :cond_f
    if-eqz v9, :cond_11

    const/16 v38, 0x0

    :goto_5
    sub-int v30, v22, v38

    .line 628
    .local v30, spacerCount:I
    const/16 v39, 0x0

    if-lez v30, :cond_12

    div-int v38, v37, v30

    :goto_6
    move/from16 v0, v39

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 630
    .local v31, spacerSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v32

    .line 631
    .local v32, startLeft:I
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_0

    .line 632
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 633
    .restart local v34       #v:Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 634
    .restart local v19       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_13

    .line 631
    :cond_10
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 627
    .end local v19           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v30           #spacerCount:I
    .end local v31           #spacerSize:I
    .end local v32           #startLeft:I
    .end local v34           #v:Landroid/view/View;
    :cond_11
    const/16 v38, 0x1

    goto :goto_5

    .line 628
    .restart local v30       #spacerCount:I
    :cond_12
    const/16 v38, 0x0

    goto :goto_6

    .line 638
    .restart local v19       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v31       #spacerSize:I
    .restart local v32       #startLeft:I
    .restart local v34       #v:Landroid/view/View;
    :cond_13
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v38, v0

    add-int v32, v32, v38

    .line 639
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v36

    .line 640
    .restart local v36       #width:I
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 641
    .restart local v11       #height:I
    div-int/lit8 v38, v11, 0x2

    sub-int v33, v21, v38

    .line 642
    .restart local v33       #t:I
    add-int v38, v32, v36

    add-int v39, v33, v11

    move-object/from16 v0, v34

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 643
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v38, v0

    add-int v38, v38, v36

    add-int v38, v38, v31

    add-int v32, v32, v38

    goto :goto_8

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 596
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

    .line 114
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 115
    .local v4, wasFormatted:Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x4000

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 117
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 118
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 123
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 124
    .local v5, widthSize:I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 125
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 126
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 129
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 141
    :goto_1
    return-void

    .end local v5           #widthSize:I
    :cond_2
    move v6, v8

    .line 115
    goto :goto_0

    .line 133
    .restart local v5       #widthSize:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 134
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 135
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 137
    .local v3, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 139
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
    .line 97
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    .line 98
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    .line 658
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 659
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 90
    return-void
.end method

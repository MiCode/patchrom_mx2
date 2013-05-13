.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackImeIcon:Landroid/graphics/drawable/Drawable;

.field private mContentHeight:I

.field private mEnableBackButton:Z

.field private mExtraPadding:I

.field private mExtraPaddingFor4:I

.field private mItemPadding:I

.field mMaxTabWidth:I

.field private mMeasureWithLargestChild:Z

.field private mMenuView:Landroid/view/View;

.field private mSelectedTabIndex:I

.field private mShowAtBottom:Z

.field private mSplitActionBar:Z

.field mStackedTabMaxWidth:I

.field private mTabCellWidth:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabHeight:I

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTabWidth:I

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v3, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 712
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    .line 713
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    .line 714
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    .line 715
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    .line 716
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 717
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 719
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    .line 768
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 795
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    .line 77
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 79
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 80
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 81
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const v6, 0x10102f3

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 85
    .local v2, ta:Landroid/content/res/TypedArray;
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 86
    .local v1, bgId:I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    const v3, 0x10807dd

    if-ne v1, v3, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 92
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setClipChildren(Z)V

    .line 95
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setClipToPadding(Z)V

    .line 96
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private addBackButton(Landroid/view/View;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 833
    :cond_0
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 286
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 288
    .local v0, spinner:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 291
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 273
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 275
    .local v0, tabLayout:Landroid/widget/LinearLayout;
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 276
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 277
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 280
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 281
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 282
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .parameter "tab"
    .parameter "forAdapter"

    .prologue
    const/4 v2, 0x0

    .line 383
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 384
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 385
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 387
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    :goto_0
    return-object v0

    .line 390
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 391
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 392
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 393
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTabs(II)V
    .locals 17
    .parameter "t"
    .parameter "b"

    .prologue
    .line 852
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 853
    .local v3, childCount:I
    add-int v13, p1, p2

    div-int/lit8 v9, v13, 0x2

    .line 854
    .local v9, midVertical:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    .line 855
    .local v11, tabRight:I
    const/4 v2, 0x0

    .line 856
    .local v2, child:Landroid/view/View;
    const/4 v10, 0x0

    .line 857
    .local v10, startLeft:I
    const/4 v6, 0x0

    .line 858
    .local v6, endRight:I
    const/4 v4, 0x0

    .line 859
    .local v4, childLeft:I
    const/4 v5, 0x0

    .line 860
    .local v5, childRight:I
    const/4 v7, 0x0

    .line 861
    .local v7, height:I
    const/4 v12, 0x0

    .line 863
    .local v12, top:I
    sget-object v13, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 864
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v13, :cond_2

    if-lez v3, :cond_2

    const/4 v13, 0x5

    if-gt v3, v13, :cond_2

    .line 865
    const/4 v13, 0x1

    if-eq v3, v13, :cond_0

    const/4 v13, 0x5

    if-ne v3, v13, :cond_1

    .line 866
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    div-int v1, v13, v3

    .line 867
    .local v1, cellWidth:I
    const/4 v8, 0x0

    .local v8, index:I
    :goto_0
    if-ge v8, v3, :cond_2

    .line 868
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 869
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 870
    add-int/lit8 v13, v8, 0x1

    mul-int v6, v13, v1

    .line 871
    add-int v13, v10, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    add-int v4, v13, v14

    .line 872
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 873
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 874
    move v10, v6

    .line 867
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 876
    .end local v1           #cellWidth:I
    .end local v8           #index:I
    :cond_1
    const/4 v13, 0x2

    if-ne v3, v13, :cond_3

    .line 878
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 879
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 880
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 881
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v15

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 884
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 885
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 886
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 887
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v11, v14

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 984
    :cond_2
    :goto_1
    return-void

    .line 888
    :cond_3
    const/4 v13, 0x3

    if-ne v3, v13, :cond_4

    .line 890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 891
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 892
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 893
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v15

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 896
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 897
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 898
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v13, v11, v13

    div-int/lit8 v4, v13, 0x2

    .line 899
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 900
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 903
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 904
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 905
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 906
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v11, v14

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 907
    :cond_4
    const/4 v13, 0x4

    if-ne v3, v13, :cond_2

    .line 908
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_2
    if-ge v8, v3, :cond_2

    .line 909
    div-int/lit8 v13, v3, 0x2

    if-ge v8, v13, :cond_5

    .line 910
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 911
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 912
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    add-int/2addr v14, v15

    mul-int/2addr v14, v8

    add-int v4, v13, v14

    .line 913
    div-int/lit8 v13, v7, 0x2

    sub-int p1, v9, v13

    .line 914
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, p1, v7

    move/from16 v0, p1

    invoke-virtual {v2, v4, v0, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 908
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 916
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 917
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 918
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    add-int/lit8 v14, v3, -0x1

    sub-int/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/2addr v14, v15

    sub-int v5, v13, v14

    .line 920
    div-int/lit8 v13, v7, 0x2

    sub-int p1, v9, v13

    .line 921
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v13, v5, v13

    add-int v14, p1, v7

    move/from16 v0, p1

    invoke-virtual {v2, v13, v0, v5, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 927
    .end local v8           #index:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v13, :cond_2

    if-lez v3, :cond_2

    const/4 v13, 0x5

    if-gt v3, v13, :cond_2

    .line 928
    const/4 v13, 0x1

    if-eq v3, v13, :cond_7

    const/4 v13, 0x5

    if-ne v3, v13, :cond_8

    .line 929
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v13

    div-int v1, v13, v3

    .line 930
    .restart local v1       #cellWidth:I
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_4
    if-ge v8, v3, :cond_2

    .line 931
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 932
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 933
    add-int/lit8 v13, v8, 0x1

    mul-int v6, v13, v1

    .line 934
    add-int v13, v10, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    add-int v4, v13, v14

    .line 935
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 936
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 937
    move v10, v6

    .line 930
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 939
    .end local v1           #cellWidth:I
    .end local v8           #index:I
    :cond_8
    const/4 v13, 0x2

    if-ne v3, v13, :cond_9

    .line 941
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 942
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 943
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 944
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v15

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 947
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 948
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 949
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 950
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v11, v14

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 951
    :cond_9
    const/4 v13, 0x3

    if-ne v3, v13, :cond_a

    .line 953
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 954
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 955
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 956
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v15

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 959
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 960
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 961
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v13, v11, v13

    div-int/lit8 v4, v13, 0x2

    .line 962
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 963
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 966
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 967
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 968
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 969
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v11, v14

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 970
    :cond_a
    const/4 v13, 0x4

    if-ne v3, v13, :cond_2

    .line 971
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    div-int v1, v13, v3

    .line 972
    .restart local v1       #cellWidth:I
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_5
    if-ge v8, v3, :cond_2

    .line 973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 974
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 975
    add-int/lit8 v13, v8, 0x1

    mul-int v6, v13, v1

    .line 976
    add-int v13, v10, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    add-int v4, v13, v14

    .line 977
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 978
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 979
    move v10, v6

    .line 972
    add-int/lit8 v8, v8, 0x1

    goto :goto_5
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 221
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return v4

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 821
    if-eqz p1, :cond_0

    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 823
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 827
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    const/4 v5, 0x0

    .line 416
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 417
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 422
    :cond_0
    if-eqz p3, :cond_1

    .line 423
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 425
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 428
    :cond_2
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 402
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 407
    :cond_0
    if-eqz p2, :cond_1

    .line 408
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 410
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 413
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 342
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 343
    .local v2, tabCount:I
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    .line 344
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, first:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 346
    .local v1, last:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 363
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 352
    .local v3, tabView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 353
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 355
    :cond_1
    new-instance v4, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 362
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public animateToVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 313
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 316
    :cond_0
    if-nez p1, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 320
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f80

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 321
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 322
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 325
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 334
    :goto_0
    return-void

    .line 327
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 328
    .restart local v0       #anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 329
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 331
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public getTabFlagDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabItemCount()I
    .locals 2

    .prologue
    .line 784
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 785
    const/4 v0, 0x0

    .line 791
    :cond_0
    :goto_0
    return v0

    .line 787
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 788
    .local v0, count:I
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 789
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isShowAtBottom()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    return v0
.end method

.method protected getSelectedTabIndex()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    return v0
.end method

.method protected getTabLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 372
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 301
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 302
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    if-lez v1, :cond_1

    .line 306
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 380
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 463
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 464
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 161
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 163
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 166
    .local v0, parent:Landroid/view/View;
    instance-of v1, v0, Lcom/android/internal/widget/ActionBarView;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    .end local v0           #parent:Landroid/view/View;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    if-eqz v1, :cond_1

    .line 175
    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/ScrollingTabContainerView;->layoutTabs(II)V

    .line 178
    :cond_1
    return-void

    .line 169
    .restart local v0       #parent:Landroid/view/View;
    :cond_2
    instance-of v1, v0, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 101
    .local v9, widthMode:I
    const/high16 v10, 0x4000

    if-ne v9, v10, :cond_2

    const/4 v4, 0x1

    .line 102
    .local v4, lockedExpanded:Z
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 104
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 105
    .local v2, childCount:I
    const/4 v10, 0x1

    if-le v2, v10, :cond_4

    const/high16 v10, 0x4000

    if-eq v9, v10, :cond_0

    const/high16 v10, -0x8000

    if-ne v9, v10, :cond_4

    .line 107
    :cond_0
    const/4 v10, 0x2

    if-le v2, v10, :cond_3

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ecccccd

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 112
    :goto_1
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 117
    :goto_2
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 119
    if-nez v4, :cond_5

    iget-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v10, :cond_5

    const/4 v0, 0x1

    .line 121
    .local v0, canCollapse:Z
    :goto_3
    if-eqz v0, :cond_7

    .line 123
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 124
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    if-le v10, v11, :cond_6

    .line 125
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 133
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v7

    .line 134
    .local v7, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v6

    .line 137
    .local v6, newWidth:I
    iget-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v10, :cond_8

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, child:Landroid/view/View;
    const/4 v8, 0x0

    .line 140
    .local v8, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_5
    if-ge v3, v2, :cond_8

    .line 141
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 143
    if-eqz v8, :cond_1

    .line 144
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 101
    .end local v0           #canCollapse:Z
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #lockedExpanded:Z
    .end local v6           #newWidth:I
    .end local v7           #oldWidth:I
    .end local v8           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 110
    .restart local v2       #childCount:I
    .restart local v4       #lockedExpanded:Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 114
    :cond_4
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    .line 119
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 127
    .restart local v0       #canCollapse:Z
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 130
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 148
    .restart local v6       #newWidth:I
    .restart local v7       #oldWidth:I
    :cond_8
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v10, :cond_9

    .line 149
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 150
    .local v5, menuWidthSpec:I
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v10, v5, p2}, Landroid/view/View;->measure(II)V

    .line 153
    .end local v5           #menuWidthSpec:I
    :cond_9
    if-eqz v4, :cond_a

    if-eq v7, v6, :cond_a

    .line 155
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 157
    :cond_a
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 452
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 455
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 458
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 445
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 448
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .parameter "allowCollapse"

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 198
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backIcon"
    .parameter "backImeIcon"

    .prologue
    .line 1001
    if-eqz p1, :cond_0

    .line 1002
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 1003
    iput-object p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackImeIcon:Landroid/graphics/drawable/Drawable;

    .line 1005
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1009
    :cond_0
    return-void
.end method

.method public setBackButtonEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 799
    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    .line 805
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_3

    .line 806
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v0, :cond_2

    .line 807
    new-instance v0, Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    .line 808
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackImeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    const v1, 0x10804f1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;->setImageResource(I)V

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 813
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->addBackButton(Landroid/view/View;)V

    goto :goto_0

    .line 814
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "contentHeight"

    .prologue
    .line 268
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 270
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 761
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    .line 762
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 763
    return-void
.end method

.method public setMeasureWithLargestChildEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 774
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 777
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 838
    if-eqz p1, :cond_0

    .line 839
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 840
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 845
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 846
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 848
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    .line 849
    return-void
.end method

.method public setShowAtBottom(ZZ)V
    .locals 6
    .parameter "atBottom"
    .parameter "splitActionBar"

    .prologue
    .line 726
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-ne v4, p1, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    if-ne v4, p2, :cond_1

    .line 751
    :cond_0
    return-void

    .line 731
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    .line 732
    iput-boolean p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 734
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10500a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    .line 735
    const v4, 0x1050106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    .line 736
    const v4, 0x1050101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 737
    const v4, 0x1050103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050102

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    .line 740
    const v4, 0x10500a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 742
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 743
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 744
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 745
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 746
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v4, :cond_2

    .line 747
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 744
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setTabSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 244
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 245
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 246
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v4, :cond_0

    .line 247
    add-int/lit8 p1, p1, 0x1

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 250
    .local v3, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 251
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 253
    .local v2, isSelected:Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 254
    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 250
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v2           #isSelected:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 258
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v3           #tabCount:I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_4

    .line 259
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 262
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_5

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 265
    :cond_5
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v0, :cond_0

    .line 988
    const/4 v0, 0x0

    .line 990
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 435
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 438
    :cond_1
    return-void
.end method

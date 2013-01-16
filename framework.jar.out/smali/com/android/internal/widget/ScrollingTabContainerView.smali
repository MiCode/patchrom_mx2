.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;


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

.field private mContentHeight:I

.field private mEnableBackButton:Z

.field private mExtraPadding:I

.field private mItemPadding:I

.field mMaxTabWidth:I

.field private mMeasureWithLargestChild:Z

.field private mMenuView:Landroid/view/View;

.field private mSelectedTabIndex:I

.field private mShowAtBottom:Z

.field mStackedTabMaxWidth:I

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
    .line 79
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

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v3, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 770
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    .line 771
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    .line 772
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 774
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    .line 814
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 896
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    .line 85
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 87
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 88
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const v6, 0x10102f3

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 93
    .local v2, ta:Landroid/content/res/TypedArray;
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 94
    .local v1, bgId:I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    const v3, 0x10807b0

    if-ne v1, v3, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 100
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private addBackButton(Landroid/view/View;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 927
    :cond_0
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 360
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 362
    .local v0, spinner:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 365
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 347
    new-instance v0, Lcom/android/internal/widget/MiuiTabLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/MiuiTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 349
    .local v0, tabLayout:Landroid/widget/LinearLayout;
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 350
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 351
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 354
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 355
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 356
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .parameter "tab"
    .parameter "forAdapter"

    .prologue
    const/4 v2, 0x0

    .line 443
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 444
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 445
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 447
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    :goto_0
    return-object v0

    .line 450
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 451
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 452
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 453
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 266
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

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 274
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 294
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 296
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

    .line 300
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return v4

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
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
    .line 915
    if-eqz p1, :cond_0

    .line 916
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 917
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 921
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

    .line 476
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 477
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 482
    :cond_0
    if-eqz p3, :cond_1

    .line 483
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 485
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 488
    :cond_2
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    const/4 v5, 0x0

    .line 461
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 462
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 467
    :cond_0
    if-eqz p2, :cond_1

    .line 468
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 470
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 473
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, tabView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 415
    :cond_0
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 422
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 387
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 390
    :cond_0
    if-nez p1, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 394
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f80

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 395
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 396
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 408
    :goto_0
    return-void

    .line 401
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 402
    .restart local v0       #anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 403
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public getActionItems()Ljava/util/List;
    .locals 10
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
    const/4 v5, 0x1

    .line 826
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 827
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/DockActionItem;>;"
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 828
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    .line 830
    .local v9, tabCount:I
    const/4 v1, 0x0

    .line 831
    .local v1, child:Landroid/view/View;
    const/4 v3, 0x0

    .line 832
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 833
    .local v8, tab:Landroid/app/ActionBar$Tab;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v9, :cond_2

    .line 834
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 835
    instance-of v4, v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 836
    check-cast v4, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    .line 837
    if-eqz v8, :cond_0

    .line 838
    invoke-virtual {v8}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 842
    :cond_0
    if-eqz v3, :cond_1

    .line 843
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 845
    :cond_1
    new-instance v0, Lcom/android/internal/app/DockActionItem;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/DockActionItem;-><init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZI)V

    .line 846
    .local v0, item:Lcom/android/internal/app/DockActionItem;
    iput v5, v0, Lcom/android/internal/app/DockActionItem;->mType:I

    .line 847
    invoke-virtual {v0}, Lcom/android/internal/app/DockActionItem;->preparePracel()V

    .line 848
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 852
    .end local v0           #item:Lcom/android/internal/app/DockActionItem;
    .end local v1           #child:Landroid/view/View;
    .end local v2           #index:I
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #tab:Landroid/app/ActionBar$Tab;
    .end local v9           #tabCount:I
    :cond_2
    return-object v7
.end method

.method public getTabFlagDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabItemCount()I
    .locals 2

    .prologue
    .line 885
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 886
    const/4 v0, 0x0

    .line 892
    :cond_0
    :goto_0
    return v0

    .line 888
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 889
    .local v0, count:I
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 890
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isShowAtBottom()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    return v0
.end method

.method public layoutActionItems(II)V
    .locals 5
    .parameter "top"
    .parameter "left"

    .prologue
    .line 870
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 871
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 872
    .local v2, tabCount:I
    const/4 v0, 0x0

    .line 873
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 874
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v0, p2, p1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 873
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #tabCount:I
    :cond_0
    return-void
.end method

.method public measureActionItems(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 856
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 857
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 858
    .local v2, tabCount:I
    const/4 v0, 0x0

    .line 859
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 860
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 861
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 859
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 864
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #tabCount:I
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 375
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 376
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 384
    :goto_0
    return-void

    .line 379
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    if-lez v1, :cond_1

    .line 380
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 437
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 440
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
    .line 522
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 523
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 524
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 156
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    if-lez v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v19

    if-nez v19, :cond_0

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 161
    .local v15, parent:Landroid/view/View;
    instance-of v0, v15, Lcom/android/internal/widget/ActionBarView;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v20

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    .end local v15           #parent:Landroid/view/View;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 171
    .local v7, childCount:I
    add-int v19, p3, p5

    div-int/lit8 v13, v19, 0x2

    .line 172
    .local v13, midVertical:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    if-lez v7, :cond_6

    const/16 v19, 0x5

    move/from16 v0, v19

    if-gt v7, v0, :cond_6

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v17

    .line 174
    .local v17, tabRight:I
    const/4 v6, 0x0

    .line 175
    .local v6, child:Landroid/view/View;
    const/16 v16, 0x0

    .line 176
    .local v16, startLeft:I
    const/4 v10, 0x0

    .line 177
    .local v10, endRight:I
    const/4 v8, 0x0

    .line 178
    .local v8, childLeft:I
    const/4 v9, 0x0

    .line 179
    .local v9, childRight:I
    const/4 v11, 0x0

    .line 180
    .local v11, height:I
    const/16 v18, 0x0

    .line 182
    .local v18, top:I
    const/4 v14, 0x0

    .line 183
    .local v14, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v12, 0x0

    .local v12, index:I
    :goto_1
    if-ge v12, v7, :cond_3

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 185
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 186
    if-eqz v14, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 164
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childCount:I
    .end local v8           #childLeft:I
    .end local v9           #childRight:I
    .end local v10           #endRight:I
    .end local v11           #height:I
    .end local v12           #index:I
    .end local v13           #midVertical:I
    .end local v14           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v16           #startLeft:I
    .end local v17           #tabRight:I
    .end local v18           #top:I
    .restart local v15       #parent:Landroid/view/View;
    :cond_2
    instance-of v0, v15, Lcom/android/internal/widget/ActionBarContainer;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 190
    .end local v15           #parent:Landroid/view/View;
    .restart local v6       #child:Landroid/view/View;
    .restart local v7       #childCount:I
    .restart local v8       #childLeft:I
    .restart local v9       #childRight:I
    .restart local v10       #endRight:I
    .restart local v11       #height:I
    .restart local v12       #index:I
    .restart local v13       #midVertical:I
    .restart local v14       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v16       #startLeft:I
    .restart local v17       #tabRight:I
    .restart local v18       #top:I
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_4

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v7, v0, :cond_5

    .line 191
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    div-int v5, v19, v7

    .line 192
    .local v5, cellWidth:I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v7, :cond_6

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 194
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 195
    add-int/lit8 v19, v12, 0x1

    mul-int v10, v19, v5

    .line 196
    add-int v19, v16, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v20, v0

    add-int v8, v19, v20

    .line 197
    div-int/lit8 v19, v11, 0x2

    sub-int v18, v13, v19

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v19, v0

    add-int v19, v19, v8

    add-int v20, v18, v11

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 199
    move/from16 v16, v10

    .line 192
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 201
    .end local v5           #cellWidth:I
    :cond_5
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v7, v0, :cond_7

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 204
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 205
    div-int/lit8 v19, v11, 0x2

    sub-int v18, v13, v19

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v21, v18, v11

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 210
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 211
    div-int/lit8 v19, v11, 0x2

    sub-int v18, v13, v19

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v19, v0

    sub-int v19, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    add-int v21, v18, v11

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 251
    .end local v6           #child:Landroid/view/View;
    .end local v8           #childLeft:I
    .end local v9           #childRight:I
    .end local v10           #endRight:I
    .end local v11           #height:I
    .end local v12           #index:I
    .end local v14           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v16           #startLeft:I
    .end local v17           #tabRight:I
    .end local v18           #top:I
    :cond_6
    :goto_3
    return-void

    .line 213
    .restart local v6       #child:Landroid/view/View;
    .restart local v8       #childLeft:I
    .restart local v9       #childRight:I
    .restart local v10       #endRight:I
    .restart local v11       #height:I
    .restart local v12       #index:I
    .restart local v14       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v16       #startLeft:I
    .restart local v17       #tabRight:I
    .restart local v18       #top:I
    :cond_7
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v7, v0, :cond_8

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 216
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 217
    div-int/lit8 v19, v11, 0x2

    sub-int v18, v13, v19

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v21, v18, v11

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 222
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v19, v0

    sub-int v19, v17, v19

    div-int/lit8 v8, v19, 0x2

    .line 224
    div-int/lit8 v19, v11, 0x2

    sub-int v18, v13, v19

    .line 225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v19, v0

    add-int v19, v19, v8

    add-int v20, v18, v11

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 229
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 230
    div-int/lit8 v19, v11, 0x2

    sub-int v18, v13, v19

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v19, v0

    sub-int v19, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    add-int v21, v18, v11

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    .line 232
    :cond_8
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v7, v0, :cond_6

    .line 233
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v7, :cond_6

    .line 234
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    if-ge v12, v0, :cond_9

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 236
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    move/from16 v21, v0

    add-int v20, v20, v21

    mul-int v20, v20, v12

    add-int v8, v19, v20

    .line 238
    div-int/lit8 v19, v11, 0x2

    sub-int p3, v13, v19

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v19, v0

    add-int v19, v19, v8

    add-int v20, p3, v11

    move/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 233
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 241
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 242
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move/from16 v19, v0

    sub-int v19, v17, v19

    add-int/lit8 v20, v7, -0x1

    sub-int v20, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    move/from16 v22, v0

    add-int v21, v21, v22

    mul-int v20, v20, v21

    sub-int v9, v19, v20

    .line 245
    div-int/lit8 v19, v11, 0x2

    sub-int p3, v13, v19

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    add-int v20, p3, v11

    move/from16 v0, v19

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x4000

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 107
    .local v6, widthMode:I
    if-ne v6, v11, :cond_3

    move v2, v7

    .line 108
    .local v2, lockedExpanded:Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 110
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 111
    .local v1, childCount:I
    if-le v1, v7, :cond_5

    if-eq v6, v11, :cond_0

    const/high16 v9, -0x8000

    if-ne v6, v9, :cond_5

    .line 113
    :cond_0
    const/4 v9, 0x2

    if-le v1, v9, :cond_4

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3ecccccd

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 118
    :goto_1
    iget v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 123
    :goto_2
    iget v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 125
    if-nez v2, :cond_6

    iget-boolean v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v9, :cond_6

    move v0, v7

    .line 127
    .local v0, canCollapse:Z
    :goto_3
    if-eqz v0, :cond_8

    .line 129
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 130
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    if-le v7, v9, :cond_7

    .line 131
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 139
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v5

    .line 140
    .local v5, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 143
    .local v4, newWidth:I
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 144
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 145
    .local v3, menuWidthSpec:I
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v7, v3, p2}, Landroid/view/View;->measure(II)V

    .line 148
    .end local v3           #menuWidthSpec:I
    :cond_1
    if-eqz v2, :cond_2

    if-eq v5, v4, :cond_2

    .line 150
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 152
    :cond_2
    return-void

    .end local v0           #canCollapse:Z
    .end local v1           #childCount:I
    .end local v2           #lockedExpanded:Z
    .end local v4           #newWidth:I
    .end local v5           #oldWidth:I
    :cond_3
    move v2, v8

    .line 107
    goto :goto_0

    .line 116
    .restart local v1       #childCount:I
    .restart local v2       #lockedExpanded:Z
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 120
    :cond_5
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_6
    move v0, v8

    .line 125
    goto :goto_3

    .line 133
    .restart local v0       #canCollapse:Z
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 136
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 512
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 515
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 518
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 508
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .parameter "allowCollapse"

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 271
    return-void
.end method

.method public setBackButtonEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 900
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    .line 901
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 907
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->addBackButton(Landroid/view/View;)V

    .line 912
    :cond_1
    :goto_0
    return-void

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "contentHeight"

    .prologue
    .line 342
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 344
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 807
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    .line 808
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 809
    return-void
.end method

.method public setMeasureWithLargestChildEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 819
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 820
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 823
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 932
    if-eqz p1, :cond_0

    .line 933
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 934
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 939
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 942
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    .line 943
    return-void
.end method

.method public setShowAtBottom(Z)V
    .locals 6
    .parameter "atBottom"

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    .line 782
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 783
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x1050093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    .line 784
    const v4, 0x10500dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 785
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    .line 786
    const v4, 0x1050094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 788
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 789
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 790
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 791
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 792
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v4, :cond_0

    .line 793
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 790
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 797
    .end local v1           #childCount:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 317
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 318
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 319
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v4, :cond_0

    .line 320
    add-int/lit8 p1, p1, 0x1

    .line 321
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 323
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 324
    .local v3, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 325
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 326
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 327
    .local v2, isSelected:Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 328
    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 324
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v2           #isSelected:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 332
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v3           #tabCount:I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_4

    .line 333
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 336
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_5

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 339
    :cond_5
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 492
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 495
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 498
    :cond_1
    return-void
.end method

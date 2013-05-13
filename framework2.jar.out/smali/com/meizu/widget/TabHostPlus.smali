.class public Lcom/meizu/widget/TabHostPlus;
.super Landroid/widget/FrameLayout;
.source "TabHostPlus.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;,
        Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;,
        Lcom/meizu/widget/TabHostPlus$ViewIdContentStrategy;,
        Lcom/meizu/widget/TabHostPlus$ViewIndicatorStrategy;,
        Lcom/meizu/widget/TabHostPlus$LabelAndIconIndicatorStrategy;,
        Lcom/meizu/widget/TabHostPlus$IconIndicatorStrategy;,
        Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;,
        Lcom/meizu/widget/TabHostPlus$ContentStrategy;,
        Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;,
        Lcom/meizu/widget/TabHostPlus$TabSpec;,
        Lcom/meizu/widget/TabHostPlus$TabContentFactory;,
        Lcom/meizu/widget/TabHostPlus$OnTabChangeListener;
    }
.end annotation


# instance fields
.field private anim_left_in:Landroid/view/animation/Animation;

.field private anim_left_out:Landroid/view/animation/Animation;

.field private anim_right_in:Landroid/view/animation/Animation;

.field private anim_right_out:Landroid/view/animation/Animation;

.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/meizu/widget/TabHostPlus$OnTabChangeListener;

.field private mSetTabTop:Z

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSeledtionListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/TabHostPlus$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/meizu/widget/TabWidgetPlus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    .line 65
    iput-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/TabHostPlus;->mSetTabTop:Z

    .line 73
    iput-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 85
    iput-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabSeledtionListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    .line 89
    invoke-direct {p0}, Lcom/meizu/widget/TabHostPlus;->initTabHost()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    .line 65
    iput-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/TabHostPlus;->mSetTabTop:Z

    .line 73
    iput-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 85
    iput-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabSeledtionListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    .line 94
    invoke-direct {p0}, Lcom/meizu/widget/TabHostPlus;->initTabHost()V

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/widget/TabHostPlus;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/widget/TabHostPlus;)Lcom/meizu/widget/TabWidgetPlus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->anim_left_in:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->anim_left_out:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->anim_right_in:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->anim_right_out:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/TabHostPlus;)Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabSeledtionListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/widget/TabHostPlus;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/meizu/widget/TabHostPlus;->updateWindowFocus(Landroid/app/Activity;)V

    return-void
.end method

.method private initTabHost()V
    .locals 2

    .prologue
    .line 98
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/TabHostPlus;->setFocusableInTouchMode(Z)V

    .line 99
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/meizu/widget/TabHostPlus;->setDescendantFocusability(I)V

    .line 100
    const/4 v1, -0x1

    iput v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, context:Landroid/content/Context;
    const v1, 0x10a0040

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/TabHostPlus;->anim_left_in:Landroid/view/animation/Animation;

    .line 107
    const v1, 0x10a0041

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/TabHostPlus;->anim_left_out:Landroid/view/animation/Animation;

    .line 110
    const v1, 0x10a0042

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/TabHostPlus;->anim_right_in:Landroid/view/animation/Animation;

    .line 113
    const v1, 0x10a0043

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/TabHostPlus;->anim_right_out:Landroid/view/animation/Animation;

    .line 115
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 5

    .prologue
    .line 558
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus;->mOnTabChangeListener:Lcom/meizu/widget/TabHostPlus$OnTabChangeListener;

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus;->mOnTabChangeListener:Lcom/meizu/widget/TabHostPlus$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/meizu/widget/TabHostPlus$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 561
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->getCurrentId()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 563
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0, v0}, Lcom/meizu/widget/TabHostPlus;->updateWindowFocus(Landroid/app/Activity;)V

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 568
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 571
    :cond_2
    return-void
.end method

.method private updateWindowFocus(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1126
    if-eqz p1, :cond_0

    .line 1127
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1128
    .local v1, window:Landroid/view/Window;
    const/4 v0, 0x0

    .line 1129
    .local v0, decorView:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1130
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1133
    .end local v0           #decorView:Landroid/view/View;
    .end local v1           #window:Landroid/view/Window;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/meizu/widget/TabHostPlus$TabSpec;)V
    .locals 3
    .parameter "tabSpec"

    .prologue
    .line 245
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mIndicatorStrategy:Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;
    invoke-static {p1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$300(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_0
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {p1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_1
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mIndicatorStrategy:Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;
    invoke-static {p1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$300(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 257
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/TabWidgetPlus;->setDrawBottomStrips(Z)V

    .line 259
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/TabWidgetPlus;->addView(Landroid/view/View;)V

    .line 260
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    invoke-virtual {v0}, Lcom/meizu/widget/TabWidgetPlus;->removeAllViews()V

    .line 281
    invoke-direct {p0}, Lcom/meizu/widget/TabHostPlus;->initTabHost()V

    .line 282
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 283
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->requestLayout()V

    .line 285
    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->invalidate()V

    .line 286
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 337
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    iget v2, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 344
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/meizu/widget/TabHostPlus;->playSoundEffect(I)V

    .line 345
    const/4 v0, 0x1

    .line 347
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 352
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    iget v3, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/TabHostPlus$TabSpec;

    .line 353
    .local v1, spec:Lcom/meizu/widget/TabHostPlus$TabSpec;
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    instance-of v2, v2, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    if-eqz v2, :cond_0

    .line 354
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    .line 355
    .local v0, contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->isStartFlipper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const/4 v2, 0x1

    .line 359
    .end local v0           #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 365
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabHostPlus$TabSpec;

    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 304
    iget v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    iget v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/meizu/widget/TabWidgetPlus;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    return-object v0
.end method

.method public isTabTop()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 508
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    iget v4, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/TabHostPlus$TabSpec;

    .line 509
    .local v1, spec:Lcom/meizu/widget/TabHostPlus$TabSpec;
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v3

    instance-of v3, v3, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    if-eqz v3, :cond_0

    .line 510
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    .line 511
    .local v0, contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->isTabTop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    .end local v0           #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :cond_0
    :goto_0
    return v2

    .line 514
    .restart local v0       #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/meizu/widget/TabHostPlus$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 122
    new-instance v0, Lcom/meizu/widget/TabHostPlus$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;-><init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/String;Lcom/meizu/widget/TabHostPlus$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 211
    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 212
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 215
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 489
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    iget v4, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/TabHostPlus$TabSpec;

    .line 490
    .local v1, spec:Lcom/meizu/widget/TabHostPlus$TabSpec;
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v3

    if-eqz v3, :cond_1

    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v3

    instance-of v3, v3, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    if-eqz v3, :cond_1

    .line 491
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    .line 492
    .local v0, contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->isStartFlipper()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    .end local v0           #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :goto_0
    return v2

    .line 495
    .restart local v0       #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->onBackPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    invoke-virtual {p0, v1}, Lcom/meizu/widget/TabHostPlus;->updateTabContent(Lcom/meizu/widget/TabHostPlus$TabSpec;)V

    .line 497
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->destroyLastActivity()V

    goto :goto_0

    .line 501
    .end local v0           #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 220
    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 221
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 224
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, tag:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    .line 472
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "tabIndex"

    .prologue
    .line 478
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {p0, p2}, Lcom/meizu/widget/TabHostPlus;->setCurrentTab(I)V

    .line 482
    invoke-virtual {p0, p1}, Lcom/meizu/widget/TabHostPlus;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 230
    if-nez p1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    iget v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 237
    :cond_1
    return-void
.end method

.method public performIntentForCurrentChild(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 454
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    iget v3, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/TabHostPlus$TabSpec;

    .line 455
    .local v1, spec:Lcom/meizu/widget/TabHostPlus$TabSpec;
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    instance-of v2, v2, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    if-eqz v2, :cond_1

    .line 456
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    .line 457
    .local v0, contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->isStartFlipper()Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    invoke-virtual {v0, p1}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->performIntent(Landroid/content/Intent;)V

    .line 459
    invoke-virtual {p0, v1}, Lcom/meizu/widget/TabHostPlus;->updateTabContent(Lcom/meizu/widget/TabHostPlus$TabSpec;)V

    .line 461
    :cond_0
    const/4 v2, 0x1

    .line 463
    .end local v0           #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, -0x1

    .line 386
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/TabHostPlus$TabSpec;

    .line 405
    .local v1, spec:Lcom/meizu/widget/TabHostPlus$TabSpec;
    iget-boolean v2, p0, Lcom/meizu/widget/TabHostPlus;->mSetTabTop:Z

    if-eqz v2, :cond_2

    .line 406
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    if-eqz v2, :cond_2

    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    instance-of v2, v2, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    if-eqz v2, :cond_2

    .line 407
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    .line 408
    .local v0, contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->isTabTop()Z

    move-result v2

    if-nez v2, :cond_2

    .line 409
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->changeTab()V

    .line 410
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->destroyLastActivity()V

    .line 416
    .end local v0           #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :cond_2
    iget v2, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    if-eq v2, v5, :cond_3

    .line 417
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    iget v3, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/TabHostPlus$TabSpec;

    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v2}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/meizu/widget/TabHostPlus$ContentStrategy;->tabClosed()V

    .line 420
    :cond_3
    iput p1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    .line 424
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    iget v3, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-virtual {v2, v3}, Lcom/meizu/widget/TabWidgetPlus;->focusCurrentTab(I)V

    .line 427
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/meizu/widget/TabHostPlus$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    .line 429
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    .line 430
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    :cond_4
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    invoke-virtual {v2}, Lcom/meizu/widget/TabWidgetPlus;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 441
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 445
    :cond_5
    invoke-direct {p0}, Lcom/meizu/widget/TabHostPlus;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 316
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/TabHostPlus$TabSpec;

    invoke-virtual {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p0, v0}, Lcom/meizu/widget/TabHostPlus;->setCurrentTab(I)V

    .line 322
    :cond_0
    return-void

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCurrentTop()V
    .locals 4

    .prologue
    .line 371
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mTabSpecs:Ljava/util/List;

    iget v3, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/TabHostPlus$TabSpec;

    .line 372
    .local v1, spec:Lcom/meizu/widget/TabHostPlus$TabSpec;
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v2

    instance-of v2, v2, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    if-eqz v2, :cond_0

    .line 373
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    .line 374
    .local v0, contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->isTabTop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->MoveToTop()V

    .line 376
    invoke-virtual {p0, v1}, Lcom/meizu/widget/TabHostPlus;->updateTabContent(Lcom/meizu/widget/TabHostPlus$TabSpec;)V

    .line 377
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->destroyLastActivity()V

    .line 380
    .end local v0           #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :cond_0
    return-void
.end method

.method public setOnTabChangedListener(Lcom/meizu/widget/TabHostPlus$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus;->mOnTabChangeListener:Lcom/meizu/widget/TabHostPlus$OnTabChangeListener;

    .line 555
    return-void
.end method

.method public setTabSelectionListener(Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus;->mTabSeledtionListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    .line 193
    return-void
.end method

.method public setTabTop(Z)V
    .locals 0
    .parameter "top"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/meizu/widget/TabHostPlus;->mSetTabTop:Z

    .line 274
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 135
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TabHostPlus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabWidgetPlus;

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    .line 136
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHostPlus must have a TabWidgetPlus whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    new-instance v0, Lcom/meizu/widget/TabHostPlus$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/TabHostPlus$1;-><init>(Lcom/meizu/widget/TabHostPlus;)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 161
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    new-instance v1, Lcom/meizu/widget/TabHostPlus$2;

    invoke-direct {v1, p0}, Lcom/meizu/widget/TabHostPlus$2;-><init>(Lcom/meizu/widget/TabHostPlus;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/TabWidgetPlus;->setTabSelectionListener(Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;)V

    .line 178
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TabHostPlus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabContent:Landroid/widget/FrameLayout;

    .line 179
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHostPlus must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/meizu/widget/TabHostPlus;->setup()V

    .line 204
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 205
    return-void
.end method

.method public updateTabContent(Lcom/meizu/widget/TabHostPlus$TabSpec;)V
    .locals 5
    .parameter "spec"

    .prologue
    const/4 v4, -0x1

    .line 524
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {p1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/widget/TabHostPlus$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    .line 526
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    :cond_0
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {p1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {p1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    if-eqz v1, :cond_1

    .line 536
    #getter for: Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    invoke-static {p1}, Lcom/meizu/widget/TabHostPlus$TabSpec;->access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    .line 537
    .local v0, contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->startFlipper()V

    .line 540
    .end local v0           #contentStrategy:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;

    invoke-virtual {v1}, Lcom/meizu/widget/TabWidgetPlus;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 543
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 545
    :cond_2
    return-void
.end method

.class public Lcom/android/internal/widget/MzActionBarContainer;
.super Lcom/android/internal/widget/ActionBarContainer;
.source "MzActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;
    }
.end annotation


# static fields
.field private static final MSG_PERFORM_CLICK:I


# instance fields
.field private mActionItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/DockActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

.field private mCallback:Lcom/android/internal/app/IDockActionCallback;

.field private mEnableBackButton:Z

.field private mExtraPadding:I

.field private mHandler:Landroid/os/Handler;

.field private mHasDockService:Z

.field private mLostFocused:Z

.field mManager:Lcom/android/internal/app/DockActionBarManager;

.field private mMenuView:Landroid/view/View;

.field private mNeedDockActionBar:Z

.field private mOrientatinPortrait:Z

.field private mResumed:Z

.field private mShowMenuWhenTabAtBottom:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "MzActionBarContainer"

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->tag:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mNeedDockActionBar:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mHasDockService:Z

    .line 249
    new-instance v0, Lcom/android/internal/widget/MzActionBarContainer$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarContainer$1;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mHandler:Landroid/os/Handler;

    .line 411
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mResumed:Z

    .line 412
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mLostFocused:Z

    .line 438
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShowMenuWhenTabAtBottom:Z

    .line 448
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 35
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/DockActionBarManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string v0, "MzActionBarContainer"

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->tag:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mNeedDockActionBar:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mHasDockService:Z

    .line 249
    new-instance v0, Lcom/android/internal/widget/MzActionBarContainer$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarContainer$1;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mHandler:Landroid/os/Handler;

    .line 411
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mResumed:Z

    .line 412
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mLostFocused:Z

    .line 438
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShowMenuWhenTabAtBottom:Z

    .line 448
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 26
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/DockActionBarManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/MzActionBarContainer;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deactive()V
    .locals 6

    .prologue
    .line 346
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    if-nez v3, :cond_0

    .line 347
    new-instance v3, Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/app/DockActionBarManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCallback:Lcom/android/internal/app/IDockActionCallback;

    if-nez v3, :cond_1

    .line 351
    new-instance v3, Lcom/android/internal/widget/MzActionBarContainer$4;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MzActionBarContainer$4;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCallback:Lcom/android/internal/app/IDockActionCallback;

    .line 359
    :cond_1
    const/4 v2, 0x0

    .line 360
    .local v2, moreMemu:Lcom/android/internal/app/DockActionItem;
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 361
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/DockActionItem;

    .line 362
    .local v1, item:Lcom/android/internal/app/DockActionItem;
    iget v3, v1, Lcom/android/internal/app/DockActionItem;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 363
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 364
    move-object v2, v1

    .line 371
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/internal/app/DockActionItem;
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {v3}, Lcom/android/internal/app/DockActionBarManager;->getInstance()Lcom/android/internal/app/IDockActionBar;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 372
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {v3}, Lcom/android/internal/app/DockActionBarManager;->getInstance()Lcom/android/internal/app/IDockActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCallback:Lcom/android/internal/app/IDockActionCallback;

    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/IDockActionBar;->deactive(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 383
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_5
    return-void

    .line 374
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private dock()V
    .locals 8

    .prologue
    .line 261
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    if-nez v5, :cond_0

    .line 262
    new-instance v5, Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/app/DockActionBarManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    .line 265
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCallback:Lcom/android/internal/app/IDockActionCallback;

    if-nez v5, :cond_1

    .line 266
    new-instance v5, Lcom/android/internal/widget/MzActionBarContainer$2;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/MzActionBarContainer$2;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCallback:Lcom/android/internal/app/IDockActionCallback;

    .line 285
    :cond_1
    const/4 v4, 0x0

    .line 286
    .local v4, needMenu:Z
    const/4 v3, 0x0

    .line 287
    .local v3, moreMemu:Lcom/android/internal/app/DockActionItem;
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, isTab:Z
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/DockActionItem;

    .line 290
    .local v2, item:Lcom/android/internal/app/DockActionItem;
    iget v5, v2, Lcom/android/internal/app/DockActionItem;->mType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 291
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 292
    move-object v3, v2

    .line 293
    const/4 v4, 0x1

    .line 300
    .end local v2           #item:Lcom/android/internal/app/DockActionItem;
    :cond_3
    if-eqz v1, :cond_4

    .line 301
    iget-boolean v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShowMenuWhenTabAtBottom:Z

    .line 307
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isTab:Z
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {v5}, Lcom/android/internal/app/DockActionBarManager;->getInstance()Lcom/android/internal/app/IDockActionBar;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 308
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {v5}, Lcom/android/internal/app/DockActionBarManager;->getInstance()Lcom/android/internal/app/IDockActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCallback:Lcom/android/internal/app/IDockActionCallback;

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v5, v6, v7, v4}, Lcom/android/internal/app/IDockActionBar;->dock(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 319
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_6
    return-void

    .line 295
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #isTab:Z
    .restart local v2       #item:Lcom/android/internal/app/DockActionItem;
    :cond_7
    iget v5, v2, Lcom/android/internal/app/DockActionItem;->mType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 296
    const/4 v1, 0x1

    goto :goto_0

    .line 310
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isTab:Z
    .end local v2           #item:Lcom/android/internal/app/DockActionItem;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private findActionMenuView()Lcom/android/internal/view/menu/ActionMenuView;
    .locals 4

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getChildCount()I

    move-result v1

    .line 389
    .local v1, childCount:I
    const/4 v0, 0x0

    .line 390
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 391
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 392
    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v0

    .line 394
    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    .line 397
    :goto_1
    return-object v3

    .line 390
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 468
    if-eqz p1, :cond_0

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 470
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private undock()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/DockActionBarManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCallback:Lcom/android/internal/app/IDockActionCallback;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Lcom/android/internal/widget/MzActionBarContainer$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarContainer$3;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCallback:Lcom/android/internal/app/IDockActionCallback;

    .line 337
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {v0}, Lcom/android/internal/app/DockActionBarManager;->getInstance()Lcom/android/internal/app/IDockActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {v0}, Lcom/android/internal/app/DockActionBarManager;->getInstance()Lcom/android/internal/app/IDockActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCallback:Lcom/android/internal/app/IDockActionCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IDockActionBar;->undock(Lcom/android/internal/app/IDockActionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_2
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public changeFocus(Z)V
    .locals 1
    .parameter "focused"

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mResumed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 430
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->deactive()V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mLostFocused:Z

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mLostFocused:Z

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mLostFocused:Z

    .line 434
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->dock()V

    goto :goto_0
.end method

.method public hasItemChanged(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/DockActionItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 215
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    if-nez v6, :cond_1

    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v4

    .line 217
    :cond_1
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    if-eqz v6, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v4, v5

    .line 218
    goto :goto_0

    .line 219
    :cond_3
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_4

    move v4, v5

    .line 220
    goto :goto_0

    .line 222
    :cond_4
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 225
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 226
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/DockActionItem;

    .line 227
    .local v2, oldItem:Lcom/android/internal/app/DockActionItem;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/DockActionItem;

    .line 228
    .local v1, newItem:Lcom/android/internal/app/DockActionItem;
    invoke-virtual {v2, v1}, Lcom/android/internal/app/DockActionItem;->equals(Lcom/android/internal/app/DockActionItem;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 229
    goto :goto_0

    .line 225
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public needDockActionBar()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mNeedDockActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 492
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 495
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 17
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v14}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v14}, Lcom/android/internal/widget/ScrollingTabContainerView;->isShowAtBottom()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v8, 0x1

    .line 151
    .local v8, hasTabAtBottom:Z
    :goto_0
    const/4 v10, 0x0

    .line 152
    .local v10, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mNeedDockActionBar:Z

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    invoke-virtual {v14}, Lcom/android/internal/app/DockActionBarManager;->getInstance()Lcom/android/internal/app/IDockActionBar;

    move-result-object v14

    if-eqz v14, :cond_6

    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v14, :cond_6

    .line 154
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    .line 156
    const/4 v7, 0x0

    .line 157
    .local v7, container:Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;
    if-eqz v8, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 166
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 167
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;->layoutActionItems(II)V

    .line 168
    invoke-interface {v7}, Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;->getActionItems()Ljava/util/List;

    move-result-object v10

    .line 171
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/MzActionBarContainer;->hasItemChanged(Ljava/util/List;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/MzActionBarContainer;->updateCache(Ljava/util/List;)V

    .line 173
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mResumed:Z

    if-eqz v14, :cond_3

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->dock()V

    .line 212
    .end local v7           #container:Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;
    :cond_3
    :goto_2
    return-void

    .line 148
    .end local v8           #hasTabAtBottom:Z
    .end local v10           #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 160
    .restart local v7       #container:Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;
    .restart local v8       #hasTabAtBottom:Z
    .restart local v10       #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->findActionMenuView()Lcom/android/internal/view/menu/ActionMenuView;

    move-result-object v12

    .line 161
    .local v12, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    if-eqz v12, :cond_1

    .line 162
    move-object v7, v12

    goto :goto_1

    .line 179
    .end local v7           #container:Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;
    .end local v12           #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    :cond_6
    if-eqz v8, :cond_7

    .line 180
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    goto :goto_2

    .line 182
    :cond_7
    const/4 v2, 0x0

    .line 183
    .local v2, backButtonWidth:I
    const/4 v1, 0x0

    .line 184
    .local v1, backButtonHeight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v14, :cond_8

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v14}, Lcom/android/internal/view/menu/KeyBackButton;->getMeasuredWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    add-int v2, v14, v15

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v14}, Lcom/android/internal/view/menu/KeyBackButton;->getMeasuredHeight()I

    move-result v1

    .line 189
    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getChildCount()I

    move-result v4

    .line 193
    .local v4, childCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v4, :cond_9

    .line 194
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/MzActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 195
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v14

    add-int v5, v14, v2

    .line 196
    .local v5, childLeft:I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v14

    add-int v6, v14, v2

    .line 197
    .local v6, childRight:I
    invoke-virtual {v3, v5}, Landroid/view/View;->setLeft(I)V

    .line 198
    invoke-virtual {v3, v6}, Landroid/view/View;->setRight(I)V

    .line 193
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 201
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childLeft:I
    .end local v6           #childRight:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v14, :cond_a

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v2, v1}, Lcom/android/internal/view/menu/KeyBackButton;->layout(IIII)V

    .line 205
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v14, :cond_3

    .line 206
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    sub-int v11, p4, v14

    .line 207
    .local v11, menuRight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 208
    .local v13, menuWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    sub-int v15, v11, v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v11, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2
.end method

.method public onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/ScrollingTabContainerView;->isShowAtBottom()Z

    move-result v21

    if-eqz v21, :cond_3

    const/4 v9, 0x1

    .line 59
    .local v9, hasTabAtBottom:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mNeedDockActionBar:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mManager:Lcom/android/internal/app/DockActionBarManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/DockActionBarManager;->getInstance()Lcom/android/internal/app/IDockActionBar;

    move-result-object v21

    if-eqz v21, :cond_5

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 61
    :cond_0
    const/16 v21, 0x0

    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 62
    invoke-super/range {p0 .. p2}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 64
    const/4 v6, 0x0

    .line 65
    .local v6, container:Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;
    if-eqz v9, :cond_4

    .line 66
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 74
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 75
    const/16 v21, 0x80

    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 76
    .local v12, itemWidthMeasureSpec:I
    const/16 v21, 0x56

    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 77
    .local v13, itemheightMeasureSpec:I
    invoke-interface {v6, v12, v13}, Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;->measureActionItems(II)V

    .line 142
    .end local v6           #container:Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;
    .end local v12           #itemWidthMeasureSpec:I
    .end local v13           #itemheightMeasureSpec:I
    :cond_2
    :goto_2
    return-void

    .line 56
    .end local v9           #hasTabAtBottom:Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 68
    .restart local v6       #container:Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;
    .restart local v9       #hasTabAtBottom:Z
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->findActionMenuView()Lcom/android/internal/view/menu/ActionMenuView;

    move-result-object v15

    .line 69
    .local v15, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    if-eqz v15, :cond_1

    .line 70
    move-object v6, v15

    goto :goto_1

    .line 81
    .end local v6           #container:Lcom/android/internal/widget/MzActionBarContainer$ActionItemContainer;
    .end local v15           #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    :cond_5
    if-eqz v9, :cond_9

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 86
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 89
    :cond_7
    invoke-super/range {p0 .. p2}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    goto :goto_2

    .line 83
    :cond_8
    const/16 v21, 0x0

    goto :goto_3

    .line 91
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 94
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 95
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 96
    .local v20, widthSpec:I
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 97
    .local v11, heightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/view/menu/KeyBackButton;->measure(II)V

    .line 100
    .end local v11           #heightSpec:I
    .end local v20           #widthSpec:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 101
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 102
    .restart local v20       #widthSpec:I
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 103
    .restart local v11       #heightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/view/View;->measure(II)V

    .line 106
    .end local v11           #heightSpec:I
    .end local v20           #widthSpec:I
    :cond_c
    const/4 v2, 0x0

    .line 107
    .local v2, backButtonWidth:I
    const/4 v3, 0x0

    .line 108
    .local v3, backButtonWidthExtra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/KeyBackButton;->getMeasuredWidth()I

    move-result v2

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    move/from16 v21, v0

    add-int v3, v2, v21

    .line 113
    :cond_d
    const/16 v16, 0x0

    .line 114
    .local v16, menuWidth:I
    const/16 v17, 0x0

    .line 115
    .local v17, menuWidthExtra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    move/from16 v21, v0

    add-int v17, v2, v21

    .line 120
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    sub-int v21, v21, v3

    sub-int v7, v21, v17

    .line 121
    .local v7, contentWidth:I
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 123
    .local v8, contentWidthSpec:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super {v0, v8, v1}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    .line 126
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 127
    .local v5, buttonWidthSpec:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v21

    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 128
    .local v4, buttonHeightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/view/menu/KeyBackButton;->measure(II)V

    .line 131
    .end local v4           #buttonHeightSpec:I
    .end local v5           #buttonWidthSpec:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    .line 132
    const/high16 v21, 0x4000

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 133
    .local v18, menuWidthSpec:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v21

    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 134
    .local v14, menuHeightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/view/View;->measure(II)V

    .line 137
    .end local v14           #menuHeightSpec:I
    .end local v18           #menuWidthSpec:I
    :cond_10
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 138
    .local v19, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v10

    .line 139
    .local v10, height:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/MzActionBarContainer;->setMeasuredDimension(II)V

    goto/16 :goto_2
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mResumed:Z

    .line 426
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 408
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 409
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mResumed:Z

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mLostFocused:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->needDockActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->dock()V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->undock()V

    goto :goto_0
.end method

.method public setBackButtonEnable(ZZ)V
    .locals 2
    .parameter "enable"
    .parameter "addBackButton"

    .prologue
    goto :goto_miui_0

    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->addView(Landroid/view/View;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 465
    :cond_1
    :goto_0
    return-void

    :goto_miui_0
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    goto :goto_0
.end method

.method public setEnableDockActionBar(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mNeedDockActionBar:Z

    .line 48
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 478
    if-eqz p1, :cond_1

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 480
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 484
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->addView(Landroid/view/View;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10807a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 487
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    .line 488
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 446
    return-void
.end method

.method public showMenuWhenTabAtBottom(Z)V
    .locals 0
    .parameter "showMenu"

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShowMenuWhenTabAtBottom:Z

    .line 441
    return-void
.end method

.method public updateCache(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/DockActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, actionItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    if-nez p1, :cond_0

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;

    goto :goto_0
.end method

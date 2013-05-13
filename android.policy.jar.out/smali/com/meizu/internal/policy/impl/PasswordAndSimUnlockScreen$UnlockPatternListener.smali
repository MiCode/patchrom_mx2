.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;
.super Ljava/lang/Object;
.source "PasswordAndSimUnlockScreen.java"

# interfaces
.implements Lcom/meizu/widget/LockDigitView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 483
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 484
    .local v8, size:I
    add-int/lit8 v0, v8, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/widget/LockDigitView$Cell;

    .line 485
    .local v6, newCell:Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v7

    .line 486
    .local v7, newNum:Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 487
    const-string v0, "left"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$900(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/content/pm/AccessControlManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/pm/AccessControlManager;->setAccessControlGuardEnable(Z)V

    .line 489
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v10}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 560
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 562
    return-void

    .line 539
    :cond_1
    const-string v0, "right"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-static {v0, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1084(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/Object;)Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockPasswordView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 543
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v0, v1, :cond_2

    .line 544
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1300(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x10801d6

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockPasswordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/LockPasswordView;->getCurNum()I

    move-result v0

    if-lez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-wide/16 v6, 0x1770

    .line 568
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 569
    .local v3, size:I
    add-int/lit8 v4, v3, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 570
    .local v0, newCell:Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, newNum:Ljava/lang/String;
    const-string v4, "left"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "right"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 574
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getPasswordLimit()I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1500(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)I

    move-result v5

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-boolean v4, v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    if-nez v4, :cond_2

    .line 576
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iput-boolean v8, v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    .line 577
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    new-instance v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener$1;

    invoke-direct {v5, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener$1;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;)V

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    .line 641
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v4

    if-nez v4, :cond_1

    .line 642
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 643
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 645
    :cond_1
    return-void

    .line 583
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-boolean v4, v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    if-nez v4, :cond_0

    .line 584
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 585
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    .line 587
    :cond_3
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    goto :goto_0

    .line 590
    :cond_4
    const-string v4, "right"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v4, v5, :cond_9

    .line 592
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v4, v5, :cond_5

    .line 593
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPin(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1900(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_5
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v4, v5, :cond_6

    .line 595
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mCheckPuk:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2002(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->newPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1802(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 597
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    .line 599
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 600
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_0

    .line 601
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 603
    :cond_6
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->newPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v4, v5, :cond_7

    .line 604
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2102(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->confirmNewPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1802(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 606
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    .line 607
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 608
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_0

    .line 609
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 611
    :cond_7
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->confirmNewPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v4, v5, :cond_0

    .line 612
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, newPin:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 614
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z
    invoke-static {v4, v9}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2202(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z

    .line 615
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1802(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 616
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPuk()V
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2300(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    goto/16 :goto_0

    .line 618
    :cond_8
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->newPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1802(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 619
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z
    invoke-static {v4, v8}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2202(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z

    .line 620
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    .line 621
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 622
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_0

    .line 623
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 627
    .end local v2           #newPin:Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v4, v5, :cond_0

    .line 628
    if-le v3, v8, :cond_a

    .line 629
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockPasswordView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 630
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    const-string v5, ""

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1002(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 634
    :goto_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 635
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_0

    .line 636
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 632
    :cond_a
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    goto :goto_1
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

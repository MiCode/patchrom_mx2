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
    .line 457
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 7
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 469
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 470
    .local v2, size:I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 471
    .local v0, newCell:Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, newNum:Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 473
    const-string v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$900(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/content/pm/AccessControlManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/pm/AccessControlManager;->setAccessControlGuardEnable(Z)V

    .line 475
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v3, v3, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3, v5}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 544
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v3, v3, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 546
    return-void

    .line 525
    :cond_1
    const-string v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 526
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockPasswordView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockPasswordView;->getMaxNum()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 527
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-static {v3, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1084(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/Object;)Ljava/lang/String;

    .line 528
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockPasswordView;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 530
    :cond_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getPasswordLimit()I
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1300(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)I

    move-result v4

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-boolean v3, v3, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    if-nez v3, :cond_3

    .line 532
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iput-boolean v6, v3, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    .line 533
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    new-instance v4, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener$1;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener$1;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;)V

    invoke-virtual {v3, v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    .line 540
    :cond_3
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockPasswordView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/widget/LockPasswordView;->getCurNum()I

    move-result v3

    if-lez v3, :cond_0

    .line 541
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1500(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 465
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

    .line 552
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 553
    .local v3, size:I
    add-int/lit8 v4, v3, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 554
    .local v0, newCell:Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, newNum:Ljava/lang/String;
    const-string v4, "left"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "right"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 556
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-boolean v4, v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    if-nez v4, :cond_1

    .line 557
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 558
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    .line 561
    :cond_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1600(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    .line 615
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_2

    .line 616
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 617
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    :cond_2
    return-void

    .line 564
    :cond_3
    const-string v4, "right"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 565
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v4, v5, :cond_8

    .line 566
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v4, v5, :cond_4

    .line 567
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPin(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_4
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v4, v5, :cond_5

    .line 569
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mCheckPuk:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1902(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 570
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->newPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1702(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 571
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    .line 573
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 574
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_1

    .line 575
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 577
    :cond_5
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->newPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v4, v5, :cond_6

    .line 578
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2002(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->confirmNewPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1702(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 580
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    .line 581
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 582
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_1

    .line 583
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 585
    :cond_6
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->confirmNewPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v4, v5, :cond_1

    .line 586
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, newPin:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 588
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z
    invoke-static {v4, v9}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2102(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z

    .line 589
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1702(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 590
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPuk()V
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    goto/16 :goto_0

    .line 592
    :cond_7
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->newPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1702(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 593
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z
    invoke-static {v4, v8}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2102(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z

    .line 594
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    .line 595
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 596
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_1

    .line 597
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 601
    .end local v2           #newPin:Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v4, v5, :cond_1

    .line 602
    if-le v3, v8, :cond_9

    .line 603
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockPasswordView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 604
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    const-string v5, ""

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1002(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    :goto_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 609
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_1

    .line 610
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 606
    :cond_9
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    goto :goto_1
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;
.super Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;
.source "PasswordAndSimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 3
    .parameter "success"

    .prologue
    .line 715
    const-string v0, "PasswordAndSimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckSimPin :success ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    .line 718
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 721
    :cond_0
    if-eqz p1, :cond_2

    .line 722
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 723
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 724
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    const/4 v1, -0x1

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2502(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;I)I

    .line 725
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 735
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateViewForMode()V

    .line 732
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 733
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    goto :goto_0
.end method

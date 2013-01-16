.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;
.super Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;
.source "PasswordAndSimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onPassworkLockChangedResponse(Z)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 660
    const-string v0, "PasswordAndSimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPassword:result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 663
    if-eqz p1, :cond_1

    .line 664
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mPasswordError:Z
    invoke-static {v0, v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2302(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z

    .line 665
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v4}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 667
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$900(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/content/pm/AccessControlManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$900(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/content/pm/AccessControlManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/AccessControlManager;->addTopAppAccessControlPass()V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iput-boolean v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    .line 672
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mPasswordError:Z
    invoke-static {v0, v4}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$2302(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z

    .line 673
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    .line 674
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1600(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    .line 675
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 676
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

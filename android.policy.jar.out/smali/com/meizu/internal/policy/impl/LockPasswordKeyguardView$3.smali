.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "LockPasswordKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 4

    .prologue
    .line 666
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getSystemUiVisibility()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v2, v1

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isClockVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x80

    :goto_0
    or-int v0, v2, v1

    .line 668
    .local v0, visFlags:I
    const-string v1, "LockPasswordKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set visibility on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->setSystemUiVisibility(I)V

    .line 670
    return-void

    .line 666
    .end local v0           #visFlags:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPhoneStateChanged(I)V

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPhoneStateChanged(I)V

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #setter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mPluggedIn:Z
    invoke-static {v0, p2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2002(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)Z

    .line 655
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->refreshBatteryInfo(ZZI)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->refreshBatteryInfo(ZZI)V

    goto :goto_0
.end method

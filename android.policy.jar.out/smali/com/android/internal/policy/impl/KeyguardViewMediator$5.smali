.class Lcom/android/internal/policy/impl/KeyguardViewMediator$5;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityScreenshot()Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getActivityScreenshot()Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    move-result-object v0

    return-object v0
.end method

.method public getStatusbarScreenshot()Landroid/view/View;
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getStatusbarScreenshot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDragCancel()V
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelUnlock()V

    .line 1688
    return-void
.end method

.method public onDragMoveH(I)V
    .locals 1
    .parameter "posKeyguardX"

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->onlyMoveKeyguard(I)V

    .line 1718
    return-void
.end method

.method public onDragMoveV(II)V
    .locals 2
    .parameter "posTopWindow"
    .parameter "posKeyguard"

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->unlockTopWindowMove(IIZ)V

    .line 1683
    return-void
.end method

.method public onDragUnlock()V
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->realUnlockTopWindow()V

    .line 1693
    return-void
.end method

.method public relayoutForPasswordKeyguard(Z)V
    .locals 1
    .parameter "isSecure"

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->relayoutForPasswordKeyguard(Z)V

    .line 1713
    return-void
.end method

.method public setKeyguardScreenshotVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->setKeyguardScreenshotVisible(Z)V

    .line 1698
    return-void
.end method

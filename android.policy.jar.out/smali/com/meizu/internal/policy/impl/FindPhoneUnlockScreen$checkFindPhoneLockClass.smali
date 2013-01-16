.class abstract Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;
.super Ljava/lang/Thread;
.source "FindPhoneUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "checkFindPhoneLockClass"
.end annotation


# instance fields
.field private mPasswordStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "password"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 522
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->mPasswordStr:Ljava/lang/String;

    .line 523
    return-void
.end method


# virtual methods
.method abstract onFindPhoneLockChangedResponse(I)V
.end method

.method public run()V
    .locals 9

    .prologue
    .line 550
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getSN()Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1600(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, sn:Ljava/lang/String;
    const/4 v8, 0x0

    .line 552
    .local v8, ret:I
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->isUseProxy()Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1700(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Z

    move-result v6

    .line 553
    .local v6, isUseProxy:Z
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, proxy:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    .line 555
    .local v5, port:I
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getFlymeName()I
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1900(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)I

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 560
    if-eqz v6, :cond_2

    .line 561
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->mPasswordStr:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->checkFindPhoneLockFromProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 565
    :goto_0
    const-string v0, "FindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account{ name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_1
    move v7, v8

    .line 571
    .local v7, result:I
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    new-instance v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass$1;

    invoke-direct {v1, p0, v7}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass$1;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;I)V

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void

    .line 563
    .end local v7           #result:I
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->mPasswordStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkFindPhoneLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 567
    :cond_3
    const-string v0, "FindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountName is null, sn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

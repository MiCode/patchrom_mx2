.class Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;
.super Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;
.source "FindPhoneUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->checkFindPhoneLock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onFindPhoneLockChangedResponse(I)V
    .locals 12
    .parameter "result"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 430
    const-string v6, "FindPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkFindPhoneLock result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v6, "FindPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFindPhoneLockChangedResponse. result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$500(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 434
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$500(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->hide()V

    .line 436
    :cond_0
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I
    invoke-static {v6, p1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$602(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;I)I

    .line 437
    if-ne p1, v9, :cond_6

    .line 438
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceMobileDataEnabled:Z
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$700(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 439
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceMobileDataEnabled:Z
    invoke-static {v6, v10}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$702(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;Z)Z

    .line 440
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 443
    :cond_1
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceWifiDisabled:Z
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$900(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 444
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceWifiDisabled:Z
    invoke-static {v6, v10}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$902(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;Z)Z

    .line 445
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 448
    :cond_2
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 449
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1100(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LockPatternUtils;->saveFindPhoneLockState(Z)V

    .line 454
    new-instance v2, Landroid/content/Intent;

    const-string v6, "meizu.intent.action.SECURITY_STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "securityLock"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1200(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    const/4 v3, 0x0

    .line 459
    .local v3, recoveryLockState:I
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1300(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/os/PowerManager;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 460
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1300(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager;->checkLockState()I

    move-result v3

    .line 463
    :cond_3
    const-string v6, "FindPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check findphone success and setLockState 0, recoveryLockState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-ne v3, v9, :cond_4

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1300(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/os/PowerManager;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 465
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1300(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/PowerManager;->setLockState(I)I

    .line 468
    :cond_4
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 469
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 514
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #recoveryLockState:I
    :goto_0
    return-void

    .line 471
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #recoveryLockState:I
    :cond_5
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6, v9}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 474
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #recoveryLockState:I
    :cond_6
    if-ne p1, v11, :cond_7

    .line 476
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->openGPRSAndEnableNetwork()V
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1400(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    .line 478
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->clearInput()V
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1500(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    .line 479
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-virtual {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->showToast()V

    .line 480
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-virtual {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->onTouchScreen()V

    goto :goto_0

    .line 483
    :cond_7
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 484
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 485
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 486
    .local v5, type:I
    if-ne v5, v9, :cond_8

    const-string v4, "wifi"

    .line 487
    .local v4, tips:Ljava/lang/String;
    :goto_1
    const-string v6, "FindPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network is available, type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v4           #tips:Ljava/lang/String;
    .end local v5           #type:I
    :goto_2
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->clearInput()V
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1500(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    .line 510
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-virtual {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->showToast()V

    .line 511
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-virtual {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->onTouchScreen()V

    goto :goto_0

    .line 486
    .restart local v5       #type:I
    :cond_8
    const-string v4, "mobile"

    goto :goto_1

    .line 489
    .end local v5           #type:I
    :cond_9
    const-string v6, "FindPhone"

    const-string v7, "network is unavailable"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/net/ConnectivityManager;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 491
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 492
    .local v0, dataEnabled:Z
    if-nez v0, :cond_a

    .line 493
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceMobileDataEnabled:Z
    invoke-static {v6, v9}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$702(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;Z)Z

    .line 494
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 495
    const-string v6, "FindPhone"

    const-string v7, " ---- open mobile data"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v0           #dataEnabled:Z
    :cond_a
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #setter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I
    invoke-static {v6, v11}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$602(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;I)I

    goto :goto_2
.end method

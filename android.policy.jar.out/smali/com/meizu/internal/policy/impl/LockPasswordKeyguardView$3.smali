.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;
.super Ljava/lang/Object;
.source "LockPasswordKeyguardView.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;


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
    .line 252
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableUserActivity(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->enableUserActivity(Z)V

    .line 380
    return-void
.end method

.method public goToUnlockScreen()V
    .locals 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 257
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    .line 265
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->keyguardDone(Z)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    const/4 v3, 0x0

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V
    invoke-static {v1, v2, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public initCheckAndStartActivityList(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, checkPackage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, startActivity:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    return-void
.end method

.method public isPassword()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isPassword()Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isScreenShotSuccess()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->isScreenshotSuccess()Z

    move-result v0

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isSimPin()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSimPin()Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$900(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 345
    return-void
.end method

.method public keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V
    .locals 9
    .parameter "authenticated"
    .parameter "tab"

    .prologue
    const/high16 v8, 0x400

    .line 384
    sget-object v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne p2, v6, :cond_2

    .line 385
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v6}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 386
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 388
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v6

    if-nez v6, :cond_0

    .line 389
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z

    .line 390
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 392
    .restart local v3       #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 396
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v4, phoneIntent:Landroid/content/Intent;
    const-string v6, "com.android.contacts"

    const-string v7, "com.android.contacts.ContactsLaunchActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherActivity(Landroid/content/Intent;)V
    invoke-static {v6, v4}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V

    goto :goto_0

    .line 401
    .end local v4           #phoneIntent:Landroid/content/Intent;
    :cond_2
    sget-object v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne p2, v6, :cond_3

    .line 402
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v5, smsIntent:Landroid/content/Intent;
    const-string v6, "com.android.mms"

    const-string v7, "com.android.mms.ui.ConversationList"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 405
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherActivity(Landroid/content/Intent;)V
    invoke-static {v6, v5}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V

    goto :goto_0

    .line 406
    .end local v5           #smsIntent:Landroid/content/Intent;
    :cond_3
    sget-object v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne p2, v6, :cond_5

    .line 407
    const/4 v2, 0x0

    .line 409
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    :try_start_1
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/app/IUndertableStartingManager;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 410
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/app/IUndertableStartingManager;

    move-result-object v6

    const-string v7, "com.android.email"

    invoke-interface {v6, v7}, Landroid/app/IUndertableStartingManager;->getTopPendingIntentBy(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 412
    if-eqz v2, :cond_4

    .line 413
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V

    .line 414
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_2

    .line 426
    :cond_4
    :goto_1
    if-nez v2, :cond_0

    .line 427
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, emailIntent:Landroid/content/Intent;
    const-string v6, "com.android.email"

    const-string v7, "com.android.email.activity.EmailActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 430
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherActivity(Landroid/content/Intent;)V
    invoke-static {v6, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V

    goto :goto_0

    .line 418
    .end local v1           #emailIntent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 420
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 421
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 423
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 433
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :cond_5
    sget-object v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne p2, v6, :cond_6

    .line 434
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.MEIZU_LOCK_SCREEN_CAMERA"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->isSecure()Z

    move-result v8

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launchFastActivity(Landroid/content/Intent;Z)V
    invoke-static {v6, v7, v8}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 436
    :cond_6
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v6}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto/16 :goto_0
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 293
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 298
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/16 v4, 0x3e9

    .line 286
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void
.end method

.method public requestUpdateScreenshot(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "tab"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

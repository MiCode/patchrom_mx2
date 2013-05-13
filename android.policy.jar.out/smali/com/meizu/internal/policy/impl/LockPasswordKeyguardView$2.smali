.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;
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
    .line 230
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancleKeyguard()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 458
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1502(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)Z

    .line 459
    return-void
.end method

.method public enableUserActivity(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->enableUserActivity(Z)V

    .line 358
    return-void
.end method

.method public goToUnlockScreen()V
    .locals 4

    .prologue
    .line 234
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 235
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->keyguardDone(Z)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

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
    .line 453
    .local p1, checkPackage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, startActivity:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    return-void
.end method

.method public isPassword()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isPassword()Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isScreenShotSuccess()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->isScreenshotSuccess()Z

    move-result v0

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isSimPin()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSimPin()Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$900(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 323
    return-void
.end method

.method public keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V
    .locals 15
    .parameter "authenticated"
    .parameter "tab"

    .prologue
    .line 362
    sget-object v11, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 363
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v11, v11, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v11}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 364
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 366
    .local v6, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v11

    if-nez v11, :cond_0

    .line 367
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z

    .line 368
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v6           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 370
    .restart local v6       #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .line 371
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v6           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v7, phoneIntent:Landroid/content/Intent;
    const-string v11, "com.android.contacts"

    const-string v12, "com.android.contacts.ContactsLaunchActivity"

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherActivity(Landroid/content/Intent;ZJ)V
    invoke-static {v11, v7, v12, v13, v14}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;ZJ)V

    goto :goto_0

    .line 379
    .end local v7           #phoneIntent:Landroid/content/Intent;
    :cond_2
    sget-object v11, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 380
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v8, smsIntent:Landroid/content/Intent;
    const-string v11, "com.android.mms"

    const-string v12, "com.android.mms.ui.ConversationList"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const/high16 v11, 0x400

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherActivity(Landroid/content/Intent;ZJ)V
    invoke-static {v11, v8, v12, v13, v14}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;ZJ)V

    goto :goto_0

    .line 384
    .end local v8           #smsIntent:Landroid/content/Intent;
    :cond_3
    sget-object v11, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_6

    .line 385
    const/16 v9, 0x320

    .line 386
    .local v9, waitTime:I
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "access_control"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/AccessControlManager;

    .line 387
    .local v1, acm:Landroid/content/pm/AccessControlManager;
    invoke-static {}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1300()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 389
    const/4 v9, 0x0

    .line 392
    :cond_4
    const/4 v5, 0x0

    .line 394
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    :try_start_1
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;
    invoke-static {v11}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/app/IUndertableStartingManager;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 395
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;
    invoke-static {v11}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/app/IUndertableStartingManager;

    move-result-object v11

    const-string v12, "com.android.email"

    invoke-interface {v11, v12}, Landroid/app/IUndertableStartingManager;->getTopPendingIntentBy(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 397
    if-eqz v5, :cond_5

    .line 398
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    int-to-long v12, v9

    invoke-interface {v11, v12, v13}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity(J)V

    .line 399
    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V

    .line 401
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    const/4 v12, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z
    invoke-static {v11, v12}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1502(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)Z

    .line 402
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v12, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v12, v12, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0x1388

    invoke-virtual {v11, v12, v13, v14}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    const-string v11, "LockPasswordKeyguardView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unlock email according to the notifications, wait for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_2

    .line 415
    :cond_5
    :goto_1
    if-nez v5, :cond_0

    .line 416
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    const/4 v12, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z
    invoke-static {v11, v12}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1502(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)Z

    .line 417
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v12, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v12, v12, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0x1388

    invoke-virtual {v11, v12, v13, v14}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    move v10, v9

    .line 419
    .local v10, waitTimeFinal:I
    const-string v11, "LockPasswordKeyguardView"

    const-string v12, "unlock email as the pending intent is null."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v11, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;

    invoke-direct {v11, p0, v10}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;I)V

    invoke-virtual {v11}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;->start()V

    goto/16 :goto_0

    .line 407
    .end local v10           #waitTimeFinal:I
    :catch_1
    move-exception v3

    .line 409
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 410
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 412
    .local v3, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v3}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 434
    .end local v1           #acm:Landroid/content/pm/AccessControlManager;
    .end local v3           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    .end local v9           #waitTime:I
    :cond_6
    sget-object v11, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_8

    .line 436
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->isSecure()Z

    move-result v4

    .line 437
    .local v4, isSecure:Z
    if-eqz v4, :cond_7

    .line 438
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 439
    .local v2, am:Landroid/app/ActivityManager;
    const-string v11, "com.android.gallery3d"

    invoke-virtual {v2, v11}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 442
    .end local v2           #am:Landroid/app/ActivityManager;
    :cond_7
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.media.action.MEIZU_LOCK_SCREEN_CAMERA"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launchFastActivity(Landroid/content/Intent;Z)V
    invoke-static {v11, v12, v4}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1900(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 444
    .end local v4           #isSecure:Z
    :cond_8
    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v11}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto/16 :goto_0
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 271
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 276
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/16 v4, 0x3e9

    .line 264
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    return-void
.end method

.method public requestUpdateScreenshot(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "tab"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

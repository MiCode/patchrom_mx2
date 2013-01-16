.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 529
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 532
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$502(Lcom/android/server/MountService;Z)Z

    .line 534
    iget-object v10, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v7

    const-string v11, "power"

    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, v10, Lcom/android/server/MountService;->mPower:Landroid/os/PowerManager;

    .line 536
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v7, v7, Lcom/android/server/MountService;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v7, :cond_0

    .line 537
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v10, "window"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    iput-object v10, v7, Lcom/android/server/MountService;->mWindowManager:Landroid/view/IWindowManager;

    .line 540
    :cond_0
    const-string v7, "multimedia.hdmi.status"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 541
    .local v5, s:Ljava/lang/String;
    const-string v7, "available"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 542
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mbHdmiInsert:Z
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$702(Lcom/android/server/MountService;Z)Z

    .line 544
    :try_start_0
    const-string v7, "hdmi"

    const-string v10, "hdmi on --->"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v7, v7, Lcom/android/server/MountService;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v10, 0x1

    invoke-interface {v7, v10}, Landroid/view/IWindowManager;->disableRotationAnim(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    const/4 v4, 0x0

    .line 561
    .local v4, isChecked:Z
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mbHdmiInsert:Z
    invoke-static {v7}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Z

    move-result v7

    if-ne v7, v8, :cond_5

    .line 562
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v3, in:Landroid/content/Intent;
    const-string v7, "hdmi_available"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 565
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 567
    const-string v7, "MountService"

    const-string v10, "Mountservice broadcast ACTION_MEIZU_HDMI_STATUS_CHANGED"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "sound_spdif_button"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    .line 571
    const/4 v4, 0x1

    .line 572
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sound_spdif"

    if-eqz v4, :cond_4

    move v7, v8

    :goto_1
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    .end local v3           #in:Landroid/content/Intent;
    :cond_1
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEIZU_SPDIF_STATE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .restart local v3       #in:Landroid/content/Intent;
    const-string v7, "android.intent.extra.MEIZU_SPDIF_STATE"

    if-eqz v4, :cond_7

    :goto_3
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    const-string v7, "simulator"

    const-string v8, "ro.product.device"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 591
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x0

    const-string v10, "/sdcard"

    const/4 v11, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v7, v8, v10, v9, v11}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 751
    .end local v3           #in:Landroid/content/Intent;
    .end local v4           #isChecked:Z
    .end local v5           #s:Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .line 546
    .restart local v5       #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 547
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 550
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mbHdmiInsert:Z
    invoke-static {v7, v9}, Lcom/android/server/MountService;->access$702(Lcom/android/server/MountService;Z)Z

    .line 552
    :try_start_1
    const-string v7, "hdmi"

    const-string v10, "hdmi off --->"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v7, v7, Lcom/android/server/MountService;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Landroid/view/IWindowManager;->disableRotationAnim(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 554
    :catch_1
    move-exception v2

    .line 555
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #in:Landroid/content/Intent;
    .restart local v4       #isChecked:Z
    :cond_4
    move v7, v9

    .line 572
    goto :goto_1

    .line 577
    .end local v3           #in:Landroid/content/Intent;
    :cond_5
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "sound_spdif"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    move v4, v8

    :goto_5
    goto :goto_2

    :cond_6
    move v4, v9

    goto :goto_5

    .restart local v3       #in:Landroid/content/Intent;
    :cond_7
    move v8, v9

    .line 583
    goto :goto_3

    .line 595
    :cond_8
    new-instance v7, Lcom/android/server/MountService$1$1;

    invoke-direct {v7, p0}, Lcom/android/server/MountService$1$1;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v7}, Lcom/android/server/MountService$1$1;->start()V

    goto :goto_4

    .line 716
    .end local v3           #in:Landroid/content/Intent;
    .end local v4           #isChecked:Z
    .end local v5           #s:Ljava/lang/String;
    :cond_9
    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 717
    const-string v7, "connected"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "mass_storage"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    move v1, v8

    .line 719
    .local v1, available:Z
    :goto_6
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v7, v1}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Z)V

    goto :goto_4

    .end local v1           #available:Z
    :cond_a
    move v1, v9

    .line 717
    goto :goto_6

    .line 720
    :cond_b
    const-string v7, "meizu.intent.action.SECURITY_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 721
    const-string v7, "securityLock"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 722
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7}, Lcom/android/server/MountService;->isUsbMassStorageConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 723
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mDisableUmsByLock:Z
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$1902(Lcom/android/server/MountService;Z)Z

    .line 724
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v9}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    goto/16 :goto_4

    .line 727
    :cond_c
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mDisableUmsByLock:Z
    invoke-static {v7}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 728
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7}, Lcom/android/server/MountService;->isUsbMassStorageConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 729
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mDisableUmsByLock:Z
    invoke-static {v7, v9}, Lcom/android/server/MountService;->access$1902(Lcom/android/server/MountService;Z)Z

    .line 730
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v8}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    goto/16 :goto_4

    .line 734
    :cond_d
    const-string v7, "meizu.intent.action.AUTO_INSTALL_SUCCESSFUL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 735
    const-string v7, "MountService"

    const-string v8, "AUTO_INSTALL_SUCCESSFUL !!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/app/autoVerify/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    .local v6, verifyDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 738
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_4

    .line 740
    .end local v6           #verifyDir:Ljava/io/File;
    :cond_e
    const-string v7, "meizu.intent.action.HOME_LAUNCHED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 741
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/app/autoVerify/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    .restart local v6       #verifyDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 743
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "mounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 745
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mPendingAutoInstall:Z
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$2002(Lcom/android/server/MountService;Z)Z

    goto/16 :goto_4

    .line 747
    :cond_f
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->startAutoInstall()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)V

    goto/16 :goto_4
.end method

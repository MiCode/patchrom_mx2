.class Landroid/server/BluetoothService$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 1858
    iput-object p1, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x17

    const/16 v10, 0x15

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1861
    if-nez p2, :cond_1

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1865
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1866
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1869
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1870
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v6

    const/16 v7, 0x37

    invoke-virtual {v6, v7}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1872
    :cond_2
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v6

    const/16 v7, 0x38

    invoke-virtual {v6, v7}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1874
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1875
    const-string v8, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1877
    .local v5, state:I
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    if-nez v5, :cond_4

    .line 1879
    invoke-static {v12}, Landroid/server/BluetoothService;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 1880
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v6, v12}, Landroid/server/BluetoothService;->access$802(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1882
    :cond_4
    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "bluetooth_service_settings"

    iget-object v10, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1885
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dock_bluetooth_address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/server/BluetoothService;->access$700()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1886
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1888
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #state:I
    :cond_5
    const-string v8, "android.intent.action.ACTION_MEIZU_DEVICE_NAME_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1889
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    const-string/jumbo v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->setName(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1890
    :cond_6
    const-string v8, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1891
    const-string v8, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1893
    .local v3, mode:I
    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eq v3, v11, :cond_7

    if-ne v3, v10, :cond_8

    .line 1894
    :cond_7
    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "bluetooth_discoverability"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_9

    move v2, v6

    .line 1895
    .local v2, mIsDiscoverable:Z
    :goto_1
    if-ne v2, v6, :cond_a

    .line 1896
    if-ne v3, v10, :cond_8

    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->isScanmodeNeedReset:Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Z

    move-result v8

    if-ne v8, v6, :cond_8

    .line 1897
    const-string v8, "BluetoothService"

    const-string v9, "data base Discoverable is true but mode is not discoverable,reset"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v8, v7}, Landroid/server/BluetoothService;->setDiscoverableTimeout(I)Z

    .line 1899
    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    const-string v9, "Discoverable"

    #calls: Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z
    invoke-static {v8, v9, v6}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;Ljava/lang/String;Z)Z

    .line 1900
    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    const-string v9, "Pairable"

    #calls: Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z
    invoke-static {v8, v9, v6}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;Ljava/lang/String;Z)Z

    .line 1911
    .end local v2           #mIsDiscoverable:Z
    :cond_8
    :goto_2
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->isScanmodeNeedReset:Z
    invoke-static {v6, v7}, Landroid/server/BluetoothService;->access$1002(Landroid/server/BluetoothService;Z)Z

    goto/16 :goto_0

    :cond_9
    move v2, v7

    .line 1894
    goto :goto_1

    .line 1903
    .restart local v2       #mIsDiscoverable:Z
    :cond_a
    if-ne v3, v11, :cond_8

    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->isScanmodeNeedReset:Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Z

    move-result v8

    if-ne v8, v6, :cond_8

    .line 1904
    const-string v8, "BluetoothService"

    const-string v9, "data base Discoverable is false but mode is discoverable,reset"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    const-string v9, "Discoverable"

    #calls: Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z
    invoke-static {v8, v9, v7}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;Ljava/lang/String;Z)Z

    .line 1906
    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    const-string v9, "Pairable"

    #calls: Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z
    invoke-static {v8, v9, v6}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;Ljava/lang/String;Z)Z

    goto :goto_2

    .line 1912
    .end local v2           #mIsDiscoverable:Z
    .end local v3           #mode:I
    :cond_b
    const-string v6, "android.intent.action.KEYGUARD_LOCK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1913
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received ACTION_KEYGUARD_LOCK, mEnableBluetoothVisibilityDialog="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEnableBluetoothVisibilityDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEnableBluetoothVisibilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1915
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEnableBluetoothVisibilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 1917
    :cond_c
    const-string v6, "android.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1918
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received ACTION_KEYGUARD_UNLOCK, mEnableBluetoothVisibilityDialog="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEnableBluetoothVisibilityDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEnableBluetoothVisibilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1920
    iget-object v6, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEnableBluetoothVisibilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

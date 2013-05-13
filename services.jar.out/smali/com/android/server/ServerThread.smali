.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/ServerThread;->isWifiTestMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ServerThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/ServerThread;->resetAdb()V

    return-void
.end method

.method private isWifiTestMode()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    const-string v4, "sys.wifiTestMode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, strIsWifiTestMode:Ljava/lang/String;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get sys.wifiTestMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 91
    .local v0, bIsWifiTestMode:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    const-string v3, "SystemServer"

    const-string v4, "set enableAdb true for wifitest"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0           #bIsWifiTestMode:Z
    :goto_1
    return v2

    :cond_0
    move v0, v3

    .line 90
    goto :goto_0

    :cond_1
    move v2, v3

    .line 96
    goto :goto_1
.end method

.method private final resetAdb()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    iget-object v4, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v1, v2

    .line 105
    .local v1, enableAdb:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/ServerThread;->isWifiTestMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    if-eqz v1, :cond_2

    .line 125
    :cond_0
    :goto_1
    return-void

    .end local v1           #enableAdb:Z
    :cond_1
    move v1, v3

    .line 102
    goto :goto_0

    .line 109
    .restart local v1       #enableAdb:Z
    :cond_2
    const/4 v1, 0x1

    .line 115
    :cond_3
    if-eqz v1, :cond_0

    .line 116
    iget-object v4, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/server/ServerThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_2
    iget-object v3, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1073
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1074
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1076
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1078
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 81
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    return-void
.end method

.method public run()V
    .locals 133

    .prologue
    .line 130
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 133
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 135
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 138
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 139
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 143
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .line 145
    .local v109, shutdownAction:Ljava/lang/String;
    if-eqz v109, :cond_0

    invoke-virtual/range {v109 .. v109}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 146
    const/4 v3, 0x0

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_1

    const/16 v98, 0x1

    .line 149
    .local v98, reboot:Z
    :goto_0
    invoke-virtual/range {v109 .. v109}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_2

    .line 150
    const/4 v3, 0x1

    invoke-virtual/range {v109 .. v109}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v109

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v97

    .line 155
    .local v97, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v98

    move-object/from16 v1, v97

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 159
    .end local v97           #reason:Ljava/lang/String;
    .end local v98           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 160
    .local v70, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v69, 0x0

    .line 162
    .local v69, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 164
    .local v16, headless:Z
    const/16 v40, 0x0

    .line 165
    .local v40, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v58, 0x0

    .line 166
    .local v58, contentService:Landroid/content/ContentService;
    const/16 v78, 0x0

    .line 167
    .local v78, lights:Lcom/android/server/LightsService;
    const/16 v96, 0x0

    .line 168
    .local v96, power:Lcom/android/server/PowerManagerService;
    const/16 v47, 0x0

    .line 169
    .local v47, battery:Lcom/android/server/BatteryService;
    const/16 v123, 0x0

    .line 170
    .local v123, vibrator:Lcom/android/server/VibratorService;
    const/16 v44, 0x0

    .line 171
    .local v44, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 172
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 173
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v88, 0x0

    .line 174
    .local v88, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v56, 0x0

    .line 175
    .local v56, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v130, 0x0

    .line 176
    .local v130, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v128, 0x0

    .line 177
    .local v128, wifi:Lcom/android/server/WifiService;
    const/16 v104, 0x0

    .line 178
    .local v104, sambaServer:Lcom/android/server/SambaServerService;
    const/16 v102, 0x0

    .line 179
    .local v102, sambaClient:Lcom/android/server/SambaClientService;
    const/16 v108, 0x0

    .line 180
    .local v108, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v95, 0x0

    .line 181
    .local v95, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 182
    .local v4, context:Landroid/content/Context;
    const/16 v132, 0x0

    .line 183
    .local v132, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v48, 0x0

    .line 184
    .local v48, bluetooth:Landroid/server/BluetoothService;
    const/16 v50, 0x0

    .line 185
    .local v50, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v64, 0x0

    .line 186
    .local v64, dock:Lcom/android/server/DockObserver;
    const/16 v121, 0x0

    .line 187
    .local v121, usb:Lcom/android/server/usb/UsbService;
    const/16 v106, 0x0

    .line 188
    .local v106, serial:Lcom/android/server/SerialService;
    const/16 v117, 0x0

    .line 189
    .local v117, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v99, 0x0

    .line 190
    .local v99, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v113, 0x0

    .line 191
    .local v113, throttle:Lcom/android/server/ThrottleService;
    const/16 v90, 0x0

    .line 192
    .local v90, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v53, 0x0

    .line 193
    .local v53, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v75, 0x0

    .line 195
    .local v75, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v43, 0x1

    .line 196
    .local v43, airplaneModeOn:I
    const/16 v52, 0x0

    .line 200
    .local v52, bluetoothOn:I
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 203
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_56

    .line 205
    .end local v96           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 207
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static/range {v69 .. v69}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 210
    const-string v3, "moc.uziem@"

    const v9, -0x1f1f1031

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v8, v88

    .end local v88           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v47

    .line 1070
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :goto_3
    return-void

    .line 146
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v40           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v43           #airplaneModeOn:I
    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v52           #bluetoothOn:I
    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v58           #contentService:Landroid/content/ContentService;
    .end local v64           #dock:Lcom/android/server/DockObserver;
    .end local v69           #factoryTest:I
    .end local v70           #factoryTestStr:Ljava/lang/String;
    .end local v75           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v90           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v95           #pm:Landroid/content/pm/IPackageManager;
    .end local v99           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v102           #sambaClient:Lcom/android/server/SambaClientService;
    .end local v104           #sambaServer:Lcom/android/server/SambaServerService;
    .end local v106           #serial:Lcom/android/server/SerialService;
    .end local v108           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v113           #throttle:Lcom/android/server/ThrottleService;
    .end local v117           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v121           #usb:Lcom/android/server/usb/UsbService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .end local v128           #wifi:Lcom/android/server/WifiService;
    .end local v130           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v132           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_1
    const/16 v98, 0x0

    goto/16 :goto_0

    .line 152
    .restart local v98       #reboot:Z
    :cond_2
    const/16 v97, 0x0

    .restart local v97       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 160
    .end local v97           #reason:Ljava/lang/String;
    .end local v98           #reboot:Z
    .restart local v70       #factoryTestStr:Ljava/lang/String;
    :cond_3
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    goto/16 :goto_2

    .line 214
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v40       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #airplaneModeOn:I
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothOn:I
    .restart local v53       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #contentService:Landroid/content/ContentService;
    .restart local v64       #dock:Lcom/android/server/DockObserver;
    .restart local v69       #factoryTest:I
    .restart local v75       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v88       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v95       #pm:Landroid/content/pm/IPackageManager;
    .restart local v99       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v102       #sambaClient:Lcom/android/server/SambaClientService;
    .restart local v104       #sambaServer:Lcom/android/server/SambaServerService;
    .restart local v106       #serial:Lcom/android/server/SerialService;
    .restart local v108       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v113       #throttle:Lcom/android/server/ThrottleService;
    .restart local v117       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v121       #usb:Lcom/android/server/usb/UsbService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    .restart local v128       #wifi:Lcom/android/server/WifiService;
    .restart local v130       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v132       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_4
    :try_start_2
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 217
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 221
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 223
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 226
    .local v61, cryptState:Ljava/lang/String;
    const/16 v94, 0x0

    .line 227
    .local v94, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 228
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/16 v94, 0x1

    .line 235
    :cond_5
    :goto_4
    if-eqz v69, :cond_18

    const/4 v3, 0x1

    :goto_5
    move/from16 v0, v94

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v95

    .line 238
    const/16 v71, 0x0

    .line 240
    .local v71, firstBoot:Z
    :try_start_3
    invoke-interface/range {v95 .. v95}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v71

    .line 244
    :goto_6
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 246
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 250
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v41, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 252
    .end local v40           #accountManager:Landroid/accounts/AccountManagerService;
    .local v41, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_6
    const-string v3, "account"

    move-object/from16 v0, v41

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_57

    move-object/from16 v40, v41

    .line 257
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v40       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_7
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v3, 0x1

    move/from16 v0, v69

    if-ne v0, v3, :cond_19

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v58

    .line 261
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 266
    :try_start_8
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "need_to_restore"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v112

    .line 267
    .local v112, tempFlag:I
    const/16 v72, 0x0

    .line 268
    .local v72, i:I
    :cond_6
    if-eqz v112, :cond_7

    .line 269
    const-string v3, "SystemServer"

    const-string v9, "Thread.sleep(3000)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-wide/16 v9, 0xbb8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 271
    add-int/lit8 v72, v72, 0x1

    .line 272
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "need_to_restore"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v112

    .line 273
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tempFlag---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v112

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 274
    if-eqz v112, :cond_7

    const/16 v3, 0x14

    move/from16 v0, v72

    if-ne v0, v3, :cond_6

    .line 287
    .end local v72           #i:I
    .end local v112           #tempFlag:I
    :cond_7
    :goto_9
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v79, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 290
    .end local v78           #lights:Lcom/android/server/LightsService;
    .local v79, lights:Lcom/android/server/LightsService;
    :try_start_a
    sget-object v3, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 291
    const-string v3, "SystemServer"

    const-string v9, "new LedLightsService(context)"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v76, Lcom/android/server/LedLightsService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Lcom/android/server/LedLightsService;-><init>(Landroid/content/Context;)V

    .line 293
    .local v76, ledLights:Lcom/android/server/LedLightsService;
    const-string v3, "ledlights"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 296
    .end local v76           #ledLights:Lcom/android/server/LedLightsService;
    :cond_8
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v79

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_58

    .line 298
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    :try_start_b
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 300
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v124, Lcom/android/server/VibratorService;

    move-object/from16 v0, v124

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_59

    .line 302
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .local v124, vibrator:Lcom/android/server/VibratorService;
    :try_start_c
    const-string v3, "vibrator"

    move-object/from16 v0, v124

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 306
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v79

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 308
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5a

    .line 310
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    :try_start_d
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 312
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 316
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x1

    move v9, v3

    :goto_a
    if-nez v71, :cond_1b

    const/4 v3, 0x1

    :goto_b
    move/from16 v0, v94

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v132

    .line 320
    const-string v3, "window"

    move-object/from16 v0, v132

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v75

    .line 322
    const-string v3, "input"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v132

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 329
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 330
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    :goto_c
    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v78, v79

    .line 357
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v79           #lights:Lcom/android/server/LightsService;
    .end local v94           #onlyCore:Z
    .restart local v78       #lights:Lcom/android/server/LightsService;
    :goto_d
    const/16 v62, 0x0

    .line 358
    .local v62, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v110, 0x0

    .line 359
    .local v110, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v73, 0x0

    .line 360
    .local v73, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v45, 0x0

    .line 361
    .local v45, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v92, 0x0

    .line 362
    .local v92, notification:Lcom/android/server/NotificationManagerService;
    const/16 v126, 0x0

    .line 363
    .local v126, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v80, 0x0

    .line 364
    .local v80, location:Lcom/android/server/LocationManagerService;
    const/16 v59, 0x0

    .line 365
    .local v59, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v115, 0x0

    .line 366
    .local v115, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v82, 0x0

    .line 367
    .local v82, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v66, 0x0

    .line 370
    .local v66, dreamy:Landroid/service/dreams/DreamManagerService;
    const/16 v119, 0x0

    .line 374
    .local v119, undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_9

    .line 376
    :try_start_e
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v74, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v74

    move-object/from16 v1, v132

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 378
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .local v74, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_f
    const-string v3, "input_method"

    move-object/from16 v0, v74

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_55

    move-object/from16 v73, v74

    .line 384
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_e
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 393
    :cond_9
    :goto_f
    :try_start_11
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 399
    :goto_10
    :try_start_12
    invoke-interface/range {v95 .. v95}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 405
    :goto_11
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104043c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_54

    .line 412
    :goto_12
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_1f

    .line 413
    const/16 v86, 0x0

    .line 414
    .local v86, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 420
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v87, Lcom/android/server/MountService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 422
    .end local v86           #mountService:Lcom/android/server/MountService;
    .local v87, mountService:Lcom/android/server/MountService;
    :try_start_15
    const-string v3, "mount"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_53

    move-object/from16 v86, v87

    .line 429
    .end local v87           #mountService:Lcom/android/server/MountService;
    .restart local v86       #mountService:Lcom/android/server/MountService;
    :cond_a
    :goto_13
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v83, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 431
    .end local v82           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v83, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_17
    const-string v3, "lock_settings"

    move-object/from16 v0, v83

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_52

    move-object/from16 v82, v83

    .line 437
    .end local v83           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v82       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v63, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 439
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v63, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_19
    const-string v3, "device_policy"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_51

    move-object/from16 v62, v63

    .line 445
    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_15
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v111, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v111

    move-object/from16 v1, v132

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 447
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v111, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1b
    const-string v3, "statusbar"

    move-object/from16 v0, v111

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_50

    move-object/from16 v110, v111

    .line 454
    .end local v111           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_16
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "UndertableStartingManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v120, Lcom/android/server/am/UndertableStartingManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v120

    invoke-direct {v0, v4, v3}, Lcom/android/server/am/UndertableStartingManagerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    .line 456
    .end local v119           #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .local v120, undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    :try_start_1d
    const-string v3, "NotificationStarting"

    move-object/from16 v0, v120

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_4f

    move-object/from16 v119, v120

    .line 463
    .end local v120           #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .restart local v119       #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    :goto_17
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_e

    .line 471
    :goto_18
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 473
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f

    .line 479
    :goto_19
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v116, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 481
    .end local v115           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v116, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_21
    const-string v3, "textservices"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_4e

    move-object/from16 v115, v116

    .line 487
    .end local v116           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v115       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v89, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 489
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v89, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_23
    const-string v3, "netstats"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_4d

    move-object/from16 v12, v89

    .line 495
    .end local v89           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1b
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    .line 499
    .end local v88           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_25
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_4c

    .line 505
    :goto_1c
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v131, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v131

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_13

    .line 507
    .end local v130           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v131, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_27
    const-string v3, "wifip2p"

    move-object/from16 v0, v131

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_4b

    move-object/from16 v130, v131

    .line 513
    .end local v131           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v130       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1d
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v129, Lcom/android/server/WifiService;

    move-object/from16 v0, v129

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_14

    .line 515
    .end local v128           #wifi:Lcom/android/server/WifiService;
    .local v129, wifi:Lcom/android/server/WifiService;
    :try_start_29
    const-string v3, "wifi"

    move-object/from16 v0, v129

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_4a

    move-object/from16 v128, v129

    .line 521
    .end local v129           #wifi:Lcom/android/server/WifiService;
    .restart local v128       #wifi:Lcom/android/server/WifiService;
    :goto_1e
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "SambaServer Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v105, Lcom/android/server/SambaServerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/SambaServerService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 523
    .end local v104           #sambaServer:Lcom/android/server/SambaServerService;
    .local v105, sambaServer:Lcom/android/server/SambaServerService;
    :try_start_2b
    const-string v3, "samba_server"

    move-object/from16 v0, v105

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_49

    move-object/from16 v104, v105

    .line 529
    .end local v105           #sambaServer:Lcom/android/server/SambaServerService;
    .restart local v104       #sambaServer:Lcom/android/server/SambaServerService;
    :goto_1f
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "SambaClient Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v103, Lcom/android/server/SambaClientService;

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Lcom/android/server/SambaClientService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_16

    .line 531
    .end local v102           #sambaClient:Lcom/android/server/SambaClientService;
    .local v103, sambaClient:Lcom/android/server/SambaClientService;
    :try_start_2d
    const-string v3, "samba_client"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_48

    move-object/from16 v102, v103

    .line 537
    .end local v103           #sambaClient:Lcom/android/server/SambaClientService;
    .restart local v102       #sambaClient:Lcom/android/server/SambaClientService;
    :goto_20
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v57, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_17

    .line 540
    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .local v57, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2f
    const-string v3, "connectivity"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 541
    move-object/from16 v0, v57

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 542
    move-object/from16 v0, v57

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 543
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 544
    invoke-virtual/range {v130 .. v130}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_47

    move-object/from16 v56, v57

    .line 550
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v56       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_21
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v108

    .line 552
    const-string v3, "servicediscovery"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_18

    .line 559
    :goto_22
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v114, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v114

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_19

    .line 561
    .end local v113           #throttle:Lcom/android/server/ThrottleService;
    .local v114, throttle:Lcom/android/server/ThrottleService;
    :try_start_32
    const-string v3, "throttle"

    move-object/from16 v0, v114

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_46

    move-object/from16 v113, v114

    .line 568
    .end local v114           #throttle:Lcom/android/server/ThrottleService;
    .restart local v113       #throttle:Lcom/android/server/ThrottleService;
    :goto_23
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1a

    .line 580
    :goto_24
    if-eqz v86, :cond_b

    .line 581
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 585
    :cond_b
    if-eqz v40, :cond_c

    .line 586
    :try_start_34
    invoke-virtual/range {v40 .. v40}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1b

    .line 592
    :cond_c
    :goto_25
    if-eqz v58, :cond_d

    .line 593
    :try_start_35
    invoke-virtual/range {v58 .. v58}, Landroid/content/ContentService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1c

    .line 599
    :cond_d
    :goto_26
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v93, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v93

    move-object/from16 v1, v110

    move-object/from16 v2, v78

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1d

    .line 601
    .end local v92           #notification:Lcom/android/server/NotificationManagerService;
    .local v93, notification:Lcom/android/server/NotificationManagerService;
    :try_start_37
    const-string v3, "notification"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 602
    move-object/from16 v0, v93

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_45

    move-object/from16 v92, v93

    .line 608
    .end local v93           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v92       #notification:Lcom/android/server/NotificationManagerService;
    :goto_27
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1e

    .line 616
    :goto_28
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v81, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1f

    .line 618
    .end local v80           #location:Lcom/android/server/LocationManagerService;
    .local v81, location:Lcom/android/server/LocationManagerService;
    :try_start_3a
    const-string v3, "location"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_44

    move-object/from16 v80, v81

    .line 624
    .end local v81           #location:Lcom/android/server/LocationManagerService;
    .restart local v80       #location:Lcom/android/server/LocationManagerService;
    :goto_29
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v60, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_20

    .line 626
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v60, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3c
    const-string v3, "country_detector"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_43

    move-object/from16 v59, v60

    .line 632
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_2a
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 640
    :goto_2b
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_22

    .line 647
    :goto_2c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110024

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 650
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-nez v16, :cond_e

    .line 652
    new-instance v127, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_23

    .line 653
    .end local v126           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v127, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_40
    const-string v3, "wallpaper"

    move-object/from16 v0, v127

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_42

    move-object/from16 v126, v127

    .line 660
    .end local v127           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v126       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_e
    :goto_2d
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 662
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_24

    .line 670
    :cond_f
    :goto_2e
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v65, Lcom/android/server/DockObserver;

    move-object/from16 v0, v65

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_25

    .end local v64           #dock:Lcom/android/server/DockObserver;
    .local v65, dock:Lcom/android/server/DockObserver;
    move-object/from16 v64, v65

    .line 678
    .end local v65           #dock:Lcom/android/server/DockObserver;
    .restart local v64       #dock:Lcom/android/server/DockObserver;
    :goto_2f
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_26

    .line 686
    :goto_30
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v122, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v122

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_27

    .line 689
    .end local v121           #usb:Lcom/android/server/usb/UsbService;
    .local v122, usb:Lcom/android/server/usb/UsbService;
    :try_start_45
    const-string v3, "usb"

    move-object/from16 v0, v122

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_41

    move-object/from16 v121, v122

    .line 695
    .end local v122           #usb:Lcom/android/server/usb/UsbService;
    .restart local v121       #usb:Lcom/android/server/usb/UsbService;
    :goto_31
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v107, Lcom/android/server/SerialService;

    move-object/from16 v0, v107

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_28

    .line 698
    .end local v106           #serial:Lcom/android/server/SerialService;
    .local v107, serial:Lcom/android/server/SerialService;
    :try_start_47
    const-string v3, "serial"

    move-object/from16 v0, v107

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_40

    move-object/from16 v106, v107

    .line 704
    .end local v107           #serial:Lcom/android/server/SerialService;
    .restart local v106       #serial:Lcom/android/server/SerialService;
    :goto_32
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v118, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_29

    .end local v117           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v118, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v117, v118

    .line 712
    .end local v118           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v117       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_33
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2a

    .line 720
    :goto_34
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v46, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2b

    .line 722
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .local v46, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4b
    const-string v3, "appwidget"

    move-object/from16 v0, v46

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_3f

    move-object/from16 v45, v46

    .line 728
    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_35
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v100, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .end local v99           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v100, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v99, v100

    .line 735
    .end local v100           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v99       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_36
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 746
    :goto_37
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2e

    .line 754
    :goto_38
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v91, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2f

    .end local v90           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v91, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v90, v91

    .line 760
    .end local v91           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v90       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_39
    if-eqz v52, :cond_10

    if-eqz v48, :cond_10

    .line 761
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->enable()Z

    .line 765
    :cond_10
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v54, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v54

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_30

    .line 767
    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v54, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_51
    const-string v3, "commontime_management"

    move-object/from16 v0, v54

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_3e

    move-object/from16 v53, v54

    .line 773
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v53       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3a
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 779
    :goto_3b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110038

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 782
    :try_start_53
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v67, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_32

    .line 785
    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v67, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_54
    const-string v3, "dreams"

    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_3d

    move-object/from16 v66, v67

    .line 794
    .end local v67           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v86           #mountService:Lcom/android/server/MountService;
    .restart local v66       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_11
    :goto_3c
    const/16 v101, 0x0

    .line 803
    .local v101, safeMode:Z
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 809
    :try_start_55
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_33

    .line 814
    :goto_3d
    if-eqz v62, :cond_12

    .line 816
    :try_start_56
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 819
    :try_start_57
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "meizu_password_length"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v77

    .line 820
    .local v77, len:I
    if-nez v77, :cond_12

    .line 821
    new-instance v84, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, v84

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 822
    .local v84, mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v3, 0x0

    move-object/from16 v0, v84

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_35

    .line 834
    .end local v77           #len:I
    .end local v84           #mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_12
    :goto_3e
    const-string v3, "SystemServer"

    const-string v9, "new AccessControlService(context)"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v42, Lcom/android/server/pm/AccessControlService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Lcom/android/server/pm/AccessControlService;-><init>(Landroid/content/Context;)V

    .line 836
    .local v42, acs:Lcom/android/server/pm/AccessControlService;
    const-string v3, "access_control"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 837
    if-eqz v42, :cond_13

    .line 839
    :try_start_58
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/pm/AccessControlService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    .line 845
    :cond_13
    :goto_3f
    if-eqz v92, :cond_14

    .line 847
    :try_start_59
    invoke-virtual/range {v92 .. v92}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_37

    .line 855
    :cond_14
    :goto_40
    if-eqz v119, :cond_15

    .line 857
    :try_start_5a
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/am/UndertableStartingManagerService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_38

    .line 865
    :cond_15
    :goto_41
    :try_start_5b
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_39

    .line 877
    :goto_42
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v55

    .line 878
    .local v55, config:Landroid/content/res/Configuration;
    new-instance v85, Landroid/util/DisplayMetrics;

    invoke-direct/range {v85 .. v85}, Landroid/util/DisplayMetrics;-><init>()V

    .line 879
    .local v85, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v125

    check-cast v125, Landroid/view/WindowManager;

    .line 880
    .local v125, w:Landroid/view/WindowManager;
    invoke-interface/range {v125 .. v125}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 881
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v55

    move-object/from16 v1, v85

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 883
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 885
    :try_start_5c
    invoke-interface/range {v95 .. v95}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3a

    .line 890
    :goto_43
    :try_start_5d
    invoke-virtual/range {v82 .. v82}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3b

    .line 896
    :goto_44
    move-object/from16 v17, v4

    .line 897
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 898
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 899
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 900
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 901
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v56

    .line 902
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v64

    .line 903
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v121

    .line 904
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v33, v113

    .line 905
    .local v33, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v117

    .line 906
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v45

    .line 907
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v28, v126

    .line 908
    .local v28, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v29, v73

    .line 909
    .local v29, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v99

    .line 910
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v31, v80

    .line 911
    .local v31, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v32, v59

    .line 912
    .local v32, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v34, v90

    .line 913
    .local v34, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v35, v53

    .line 914
    .local v35, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v36, v115

    .line 915
    .local v36, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v30, v110

    .line 916
    .local v30, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v37, v66

    .line 917
    .local v37, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v38, v75

    .line 918
    .local v38, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v39, v48

    .line 925
    .local v39, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v39}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;Lcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1039
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1040
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_16
    new-instance v3, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v3}, Lcom/android/server/ServerThread$2;->start()V

    .line 1068
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1069
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 230
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v29           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v30           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v31           #locationF:Lcom/android/server/LocationManagerService;
    .end local v32           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v33           #throttleF:Lcom/android/server/ThrottleService;
    .end local v34           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v35           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v36           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v37           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v38           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v39           #bluetoothF:Landroid/server/BluetoothService;
    .end local v42           #acs:Lcom/android/server/pm/AccessControlService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v55           #config:Landroid/content/res/Configuration;
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v80           #location:Lcom/android/server/LocationManagerService;
    .end local v82           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v85           #metrics:Landroid/util/DisplayMetrics;
    .end local v92           #notification:Lcom/android/server/NotificationManagerService;
    .end local v101           #safeMode:Z
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v115           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v119           #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .end local v125           #w:Landroid/view/WindowManager;
    .end local v126           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v61       #cryptState:Ljava/lang/String;
    .restart local v88       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v94       #onlyCore:Z
    :cond_17
    :try_start_5e
    const-string v3, "1"

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 231
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/16 v94, 0x1

    goto/16 :goto_4

    .line 235
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 253
    .restart local v71       #firstBoot:Z
    :catch_0
    move-exception v68

    .line 254
    .local v68, e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_5e} :catch_1

    goto/16 :goto_7

    .line 352
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v68           #e:Ljava/lang/Throwable;
    .end local v71           #firstBoot:Z
    .end local v94           #onlyCore:Z
    :catch_1
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v47

    .line 353
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v68, e:Ljava/lang/RuntimeException;
    :goto_46
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 258
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v68           #e:Ljava/lang/RuntimeException;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v61       #cryptState:Ljava/lang/String;
    .restart local v71       #firstBoot:Z
    .restart local v94       #onlyCore:Z
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 279
    :catch_2
    move-exception v68

    .line 280
    .local v68, e:Ljava/lang/InterruptedException;
    :try_start_5f
    const-string v3, "System"

    const-string v9, "Failure to Thread.sleep(3000)"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    invoke-virtual/range {v68 .. v68}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 282
    .end local v68           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v68

    .line 283
    .local v68, e:Ljava/lang/Exception;
    const-string v3, "System"

    const-string v9, "Failure to Thread.sleep(3000)"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_1

    goto/16 :goto_9

    .line 317
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .end local v68           #e:Ljava/lang/Exception;
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v79       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :cond_1a
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_a

    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 331
    :cond_1c
    const/4 v3, 0x1

    move/from16 v0, v69

    if-ne v0, v3, :cond_1d

    .line 332
    :try_start_60
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 352
    :catch_4
    move-exception v68

    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v78, v79

    .end local v79           #lights:Lcom/android/server/LightsService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    goto :goto_46

    .line 334
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v79       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :cond_1d
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v49, Landroid/server/BluetoothService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_4

    .line 336
    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .local v49, bluetooth:Landroid/server/BluetoothService;
    :try_start_61
    const-string v3, "bluetooth"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 337
    invoke-virtual/range {v49 .. v49}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 339
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 340
    new-instance v51, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_5b

    .line 341
    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v51, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_62
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 343
    invoke-virtual/range {v49 .. v49}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_5c

    move-object/from16 v50, v51

    .line 346
    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_1e
    :try_start_63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_63} :catch_5b

    move-result v52

    move-object/from16 v48, v49

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_c

    .line 379
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v79           #lights:Lcom/android/server/LightsService;
    .end local v94           #onlyCore:Z
    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v80       #location:Lcom/android/server/LocationManagerService;
    .restart local v82       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v92       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v115       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v119       #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    .restart local v126       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_5
    move-exception v68

    .line 380
    .local v68, e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 387
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v68

    .line 388
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 394
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v68

    .line 395
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 400
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v68

    .line 401
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 423
    .end local v68           #e:Ljava/lang/Throwable;
    .restart local v86       #mountService:Lcom/android/server/MountService;
    :catch_9
    move-exception v68

    .line 424
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 432
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v68

    .line 433
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 440
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v68

    .line 441
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 448
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v68

    .line 449
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 457
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v68

    .line 458
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting UndertableStartingManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 466
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v68

    .line 467
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 474
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v68

    .line 475
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 482
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v68

    .line 483
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 490
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v68

    .line 491
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 500
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v68

    move-object/from16 v8, v88

    .line 501
    .end local v88           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 508
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v68

    .line 509
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 516
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v68

    .line 517
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 524
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v68

    .line 525
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "SambaServer Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 532
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v68

    .line 533
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "SambaClient Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 545
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v68

    .line 546
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 554
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v68

    .line 555
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 563
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v68

    .line 564
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 571
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v68

    .line 572
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 587
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v68

    .line 588
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 594
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v68

    .line 595
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 603
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v68

    .line 604
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 611
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v68

    .line 612
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 619
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v68

    .line 620
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 627
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v68

    .line 628
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 635
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v68

    .line 636
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 643
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v68

    .line 644
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 655
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v68

    .line 656
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 664
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v68

    .line 665
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 673
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v68

    .line 674
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 681
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v68

    .line 682
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 690
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v68

    .line 691
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 699
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v68

    .line 700
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 707
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v68

    .line 708
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 715
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v68

    .line 716
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 723
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v68

    .line 724
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 730
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v68

    .line 731
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 737
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v68

    .line 738
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 749
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v68

    .line 750
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 756
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v68

    .line 757
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 768
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v68

    .line 769
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 775
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v68

    .line 776
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 786
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v68

    .line 787
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 810
    .end local v68           #e:Ljava/lang/Throwable;
    .end local v86           #mountService:Lcom/android/server/MountService;
    .restart local v101       #safeMode:Z
    :catch_33
    move-exception v68

    .line 811
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 824
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v68

    .line 825
    .local v68, e:Ljava/lang/Exception;
    :try_start_64
    const-string v3, "System"

    const-string v9, "Failure to get meizu_password_length"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_35

    goto/16 :goto_3e

    .line 829
    .end local v68           #e:Ljava/lang/Exception;
    :catch_35
    move-exception v68

    .line 830
    .local v68, e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 840
    .end local v68           #e:Ljava/lang/Throwable;
    .restart local v42       #acs:Lcom/android/server/pm/AccessControlService;
    :catch_36
    move-exception v68

    .line 841
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making AccessControlService Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 848
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v68

    .line 849
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 858
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v68

    .line 859
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making undertableStarting Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 866
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v68

    .line 867
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 886
    .end local v68           #e:Ljava/lang/Throwable;
    .restart local v55       #config:Landroid/content/res/Configuration;
    .restart local v85       #metrics:Landroid/util/DisplayMetrics;
    .restart local v125       #w:Landroid/view/WindowManager;
    :catch_3a
    move-exception v68

    .line 887
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 891
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v68

    .line 892
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 241
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v42           #acs:Lcom/android/server/pm/AccessControlService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v55           #config:Landroid/content/res/Configuration;
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v68           #e:Ljava/lang/Throwable;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v80           #location:Lcom/android/server/LocationManagerService;
    .end local v82           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v85           #metrics:Landroid/util/DisplayMetrics;
    .end local v92           #notification:Lcom/android/server/NotificationManagerService;
    .end local v101           #safeMode:Z
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v115           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v119           #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .end local v125           #w:Landroid/view/WindowManager;
    .end local v126           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v61       #cryptState:Ljava/lang/String;
    .restart local v71       #firstBoot:Z
    .restart local v88       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v94       #onlyCore:Z
    :catch_3c
    move-exception v3

    goto/16 :goto_6

    .line 786
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v88           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v94           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v80       #location:Lcom/android/server/LocationManagerService;
    .restart local v82       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v86       #mountService:Lcom/android/server/MountService;
    .restart local v92       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v115       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v119       #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .restart local v126       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3d
    move-exception v68

    move-object/from16 v66, v67

    .end local v67           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v66       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_5e

    .line 768
    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3e
    move-exception v68

    move-object/from16 v53, v54

    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v53       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_5d

    .line 723
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v46       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3f
    move-exception v68

    move-object/from16 v45, v46

    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5c

    .line 699
    .end local v106           #serial:Lcom/android/server/SerialService;
    .restart local v107       #serial:Lcom/android/server/SerialService;
    :catch_40
    move-exception v68

    move-object/from16 v106, v107

    .end local v107           #serial:Lcom/android/server/SerialService;
    .restart local v106       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5b

    .line 690
    .end local v121           #usb:Lcom/android/server/usb/UsbService;
    .restart local v122       #usb:Lcom/android/server/usb/UsbService;
    :catch_41
    move-exception v68

    move-object/from16 v121, v122

    .end local v122           #usb:Lcom/android/server/usb/UsbService;
    .restart local v121       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5a

    .line 655
    .end local v126           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v127       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_42
    move-exception v68

    move-object/from16 v126, v127

    .end local v127           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v126       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_59

    .line 627
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_43
    move-exception v68

    move-object/from16 v59, v60

    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_58

    .line 619
    .end local v80           #location:Lcom/android/server/LocationManagerService;
    .restart local v81       #location:Lcom/android/server/LocationManagerService;
    :catch_44
    move-exception v68

    move-object/from16 v80, v81

    .end local v81           #location:Lcom/android/server/LocationManagerService;
    .restart local v80       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_57

    .line 603
    .end local v92           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v93       #notification:Lcom/android/server/NotificationManagerService;
    :catch_45
    move-exception v68

    move-object/from16 v92, v93

    .end local v93           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v92       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_56

    .line 563
    .end local v113           #throttle:Lcom/android/server/ThrottleService;
    .restart local v114       #throttle:Lcom/android/server/ThrottleService;
    :catch_46
    move-exception v68

    move-object/from16 v113, v114

    .end local v114           #throttle:Lcom/android/server/ThrottleService;
    .restart local v113       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_55

    .line 545
    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_47
    move-exception v68

    move-object/from16 v56, v57

    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v56       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_54

    .line 532
    .end local v102           #sambaClient:Lcom/android/server/SambaClientService;
    .restart local v103       #sambaClient:Lcom/android/server/SambaClientService;
    :catch_48
    move-exception v68

    move-object/from16 v102, v103

    .end local v103           #sambaClient:Lcom/android/server/SambaClientService;
    .restart local v102       #sambaClient:Lcom/android/server/SambaClientService;
    goto/16 :goto_53

    .line 524
    .end local v104           #sambaServer:Lcom/android/server/SambaServerService;
    .restart local v105       #sambaServer:Lcom/android/server/SambaServerService;
    :catch_49
    move-exception v68

    move-object/from16 v104, v105

    .end local v105           #sambaServer:Lcom/android/server/SambaServerService;
    .restart local v104       #sambaServer:Lcom/android/server/SambaServerService;
    goto/16 :goto_52

    .line 516
    .end local v128           #wifi:Lcom/android/server/WifiService;
    .restart local v129       #wifi:Lcom/android/server/WifiService;
    :catch_4a
    move-exception v68

    move-object/from16 v128, v129

    .end local v129           #wifi:Lcom/android/server/WifiService;
    .restart local v128       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_51

    .line 508
    .end local v130           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v131       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4b
    move-exception v68

    move-object/from16 v130, v131

    .end local v131           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v130       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_50

    .line 500
    :catch_4c
    move-exception v68

    goto/16 :goto_4f

    .line 490
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v88       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4d
    move-exception v68

    move-object/from16 v12, v89

    .end local v89           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4e

    .line 482
    .end local v115           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v116       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4e
    move-exception v68

    move-object/from16 v115, v116

    .end local v116           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v115       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4d

    .line 457
    .end local v119           #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .restart local v120       #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    :catch_4f
    move-exception v68

    move-object/from16 v119, v120

    .end local v120           #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .restart local v119       #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    goto/16 :goto_4c

    .line 448
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v111       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_50
    move-exception v68

    move-object/from16 v110, v111

    .end local v111           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4b

    .line 440
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_51
    move-exception v68

    move-object/from16 v62, v63

    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4a

    .line 432
    .end local v82           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v83       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_52
    move-exception v68

    move-object/from16 v82, v83

    .end local v83           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v82       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_49

    .line 423
    .end local v86           #mountService:Lcom/android/server/MountService;
    .restart local v87       #mountService:Lcom/android/server/MountService;
    :catch_53
    move-exception v68

    move-object/from16 v86, v87

    .end local v87           #mountService:Lcom/android/server/MountService;
    .restart local v86       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_48

    .line 409
    .end local v86           #mountService:Lcom/android/server/MountService;
    :catch_54
    move-exception v3

    goto/16 :goto_12

    .line 379
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_55
    move-exception v68

    move-object/from16 v73, v74

    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_47

    .line 352
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v80           #location:Lcom/android/server/LocationManagerService;
    .end local v82           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v92           #notification:Lcom/android/server/NotificationManagerService;
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v115           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v119           #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .end local v126           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v96       #power:Lcom/android/server/PowerManagerService;
    :catch_56
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v47

    .end local v47           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v96

    .end local v96           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_46

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v61       #cryptState:Ljava/lang/String;
    .restart local v71       #firstBoot:Z
    .restart local v94       #onlyCore:Z
    :catch_57
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v47

    .end local v47           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v40, v41

    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v40       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_46

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #lights:Lcom/android/server/LightsService;
    :catch_58
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v47

    .end local v47           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v78, v79

    .end local v79           #lights:Lcom/android/server/LightsService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_46

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v79       #lights:Lcom/android/server/LightsService;
    :catch_59
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v78, v79

    .end local v79           #lights:Lcom/android/server/LightsService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_46

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v79       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :catch_5a
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v78, v79

    .end local v79           #lights:Lcom/android/server/LightsService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_46

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    .restart local v79       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v68

    move-object/from16 v48, v49

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v78, v79

    .end local v79           #lights:Lcom/android/server/LightsService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_46

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    .restart local v51       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v79       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v68

    move-object/from16 v50, v51

    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v48, v49

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v78, v79

    .end local v79           #lights:Lcom/android/server/LightsService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_46

    .line 253
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    :catch_5d
    move-exception v68

    move-object/from16 v40, v41

    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v40       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_45

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v94           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v80       #location:Lcom/android/server/LocationManagerService;
    .restart local v82       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v92       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v115       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v119       #undertableStarting:Lcom/android/server/am/UndertableStartingManagerService;
    .restart local v126       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1f
    move-object/from16 v8, v88

    .end local v88           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3c
.end method

.class public Lcom/android/camera/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-static {p1}, Lcom/android/camera/Util;->getIsBatteryLow(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/camera/Util;->updateBatteryStatus(Landroid/content/Context;Z)V

    .line 20
    const-string v1, "BatteryReceiver"

    const-string v2, "battery low"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-static {p1}, Lcom/android/camera/Util;->getIsBatteryLow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/camera/Util;->updateBatteryStatus(Landroid/content/Context;Z)V

    .line 25
    const-string v1, "BatteryReceiver"

    const-string v2, "battery ok"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

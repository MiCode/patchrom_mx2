.class Lcom/android/server/sip/SipService$WifiScanProcess;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanProcess"
.end annotation


# static fields
.field private static final INTERVAL:I = 0x348

.field private static final TAG:Ljava/lang/String; = "\\WIFI_SCAN/"


# instance fields
.field private mRunning:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 2
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mRunning:Z

    .line 1146
    #getter for: Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/sip/SipService;->access$1100(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1148
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\\WIFI_SCAN/"

    const-string v1, "just wake up here for wifi scanning..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    .line 1154
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1140
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mRunning:Z

    if-eqz v0, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mRunning:Z

    .line 1142
    iget-object v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    const v1, 0xcd140

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mRunning:Z

    .line 1158
    iget-object v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1159
    return-void
.end method

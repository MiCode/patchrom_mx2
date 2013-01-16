.class Lcom/android/server/sip/SipService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    }
.end annotation


# instance fields
.field private mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

.field private mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 1
    .parameter

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1557
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTimer:Ljava/util/Timer;

    .line 1672
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1556
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/sip/SipService$ConnectivityReceiver;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/sip/SipService$ConnectivityReceiver;Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    return-object p1
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 1641
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1100(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1643
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method private onChanged(Ljava/lang/String;Z)V
    .locals 5
    .parameter "type"
    .parameter "connected"

    .prologue
    .line 1647
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1652
    if-eqz p2, :cond_1

    .line 1653
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->cancel()Z

    .line 1655
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1657
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    .line 1658
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1661
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1669
    :goto_0
    monitor-exit v1

    .line 1670
    return-void

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    #getter for: Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->access$2000(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1664
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->cancel()Z

    .line 1665
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1667
    :cond_2
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    const/4 v2, 0x0

    #calls: Lcom/android/server/sip/SipService;->onConnectivityChanged(Ljava/lang/String;Z)V
    invoke-static {v0, p1, v2}, Lcom/android/server/sip/SipService;->access$2100(Lcom/android/server/sip/SipService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1571
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1572
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1573
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1574
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1575
    const-string v6, "networkInfo"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1577
    .local v3, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 1578
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1588
    .local v4, state:Landroid/net/NetworkInfo$State;
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #setter for: Lcom/android/server/sip/SipService;->mMobileConnected:Z
    invoke-static {v6, v10}, Lcom/android/server/sip/SipService;->access$1202(Lcom/android/server/sip/SipService;Z)Z

    .line 1589
    invoke-direct {p0}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1590
    .local v1, activeNetInfo:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1591
    if-eqz v1, :cond_3

    .line 1592
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v7, "SipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active network: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v9, :cond_2

    const-string v6, " CONNECTED"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    :cond_0
    :goto_1
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 1603
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SipService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore connect event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", active: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    .end local v1           #activeNetInfo:Landroid/net/NetworkInfo;
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    .end local v5           #type:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 1592
    .restart local v1       #activeNetInfo:Landroid/net/NetworkInfo;
    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v3       #netInfo:Landroid/net/NetworkInfo;
    .restart local v4       #state:Landroid/net/NetworkInfo$State;
    .restart local v5       #type:Ljava/lang/String;
    :cond_2
    const-string v6, " DISCONNECTED"

    goto :goto_0

    .line 1597
    :cond_3
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SipService"

    const-string v7, "active network: null"

    invoke-static {v6, v7}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1607
    :cond_4
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cmwap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1611
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SipService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore connect event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", active: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", extraInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1615
    :cond_5
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_6

    .line 1619
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #setter for: Lcom/android/server/sip/SipService;->mMobileConnected:Z
    invoke-static {v6, v11}, Lcom/android/server/sip/SipService;->access$1202(Lcom/android/server/sip/SipService;Z)Z

    .line 1626
    :cond_6
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_8

    .line 1627
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "SipService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connectivity alert: CONNECTED "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :cond_7
    invoke-direct {p0, v5, v11}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->onChanged(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1629
    :cond_8
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_a

    .line 1630
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "SipService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connectivity alert: DISCONNECTED "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :cond_9
    invoke-direct {p0, v5, v10}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->onChanged(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1633
    :cond_a
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SipService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connectivity alert not processed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getExecutor()Lcom/android/server/sip/SipService$MyExecutor;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1900(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1568
    return-void
.end method

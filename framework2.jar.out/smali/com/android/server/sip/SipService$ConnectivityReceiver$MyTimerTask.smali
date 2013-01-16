.class Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
.super Ljava/util/TimerTask;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService$ConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field private mConnected:Z

.field private mNetworkType:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "connected"

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1677
    iput-object p2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    .line 1678
    iput-boolean p3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    .line 1679
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1672
    invoke-direct {p0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->realRun()V

    return-void
.end method

.method private realRun()V
    .locals 4

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v1, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1694
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    #getter for: Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    invoke-static {v0}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->access$2300(Lcom/android/server/sip/SipService$ConnectivityReceiver;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1695
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "SipService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  unexpected task: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, " CONNECTED"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1698
    monitor-exit v1

    .line 1706
    :goto_1
    return-void

    .line 1695
    :cond_1
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 1700
    :cond_2
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->access$2302(Lcom/android/server/sip/SipService$ConnectivityReceiver;Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    .line 1701
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "SipService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " deliver change for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    if-eqz v0, :cond_4

    const-string v0, " CONNECTED"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    :cond_3
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    #calls: Lcom/android/server/sip/SipService;->onConnectivityChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/server/sip/SipService;->access$2100(Lcom/android/server/sip/SipService;Ljava/lang/String;Z)V

    .line 1704
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1705
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1701
    :cond_4
    :try_start_1
    const-string v0, "DISCONNECTED"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getExecutor()Lcom/android/server/sip/SipService$MyExecutor;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1900(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask$1;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1690
    return-void
.end method

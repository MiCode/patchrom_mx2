.class Lcom/android/server/sip/SipService$AutoRegistrationProcess;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRegistrationProcess"
.end annotation


# instance fields
.field private mBackoff:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:J

.field private mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

.field private mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field private mRegistered:Z

.field private mRunning:Z

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 1
    .parameter

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 1278
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 1280
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1275
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method private backoffDuration()I
    .locals 2

    .prologue
    .line 1412
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v0, v1, 0x3c

    .line 1413
    .local v0, duration:I
    const/16 v1, 0xe10

    if-le v0, v1, :cond_0

    .line 1414
    const/16 v0, 0xe10

    .line 1418
    :goto_0
    return v0

    .line 1416
    :cond_0
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1288
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isBehindNAT(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1391
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1392
    .local v0, d:[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xac

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    aget-byte v4, v0, v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_2

    .line 1402
    .end local v0           #d:[B
    :cond_1
    :goto_0
    return v2

    .line 1399
    :catch_0
    move-exception v1

    .line 1400
    .local v1, e:Ljava/net/UnknownHostException;
    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBehindAT()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_2
    move v2, v3

    .line 1402
    goto :goto_0
.end method

.method private notCurrentSession(Landroid/net/sip/ISipSession;)Z
    .locals 3
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 1433
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eq p1, v0, :cond_0

    move-object v0, p1

    .line 1434
    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 1435
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1438
    :goto_0
    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private restart(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s later."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1408
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1409
    return-void
.end method

.method private restartLater()V
    .locals 1

    .prologue
    .line 1547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1548
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->backoffDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    .line 1549
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$KeepAliveProcess;->stop()V

    .line 1551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    .line 1553
    :cond_0
    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    return v0
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistering(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1425
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1430
    :goto_0
    return-void

    .line 1427
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1428
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 1429
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 8
    .parameter "session"
    .parameter "duration"

    .prologue
    const/16 v5, 0x384

    const/16 v7, 0x3c

    const/16 v4, 0x122

    .line 1443
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationDone(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :cond_0
    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 1445
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    .line 1506
    :goto_0
    return-void

    .line 1446
    :cond_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1448
    if-lez p2, :cond_c

    .line 1449
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, proxyHost:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMobileConnected:Z
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    .line 1451
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mSendOptionSuccess:Z
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mReregister:Z
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1600(Lcom/android/server/sip/SipService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1452
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    const/16 v3, 0x3c

    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$720(Lcom/android/server/sip/SipService;I)I

    .line 1453
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)I

    move-result v1

    if-ge v1, v4, :cond_2

    .line 1454
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    const/16 v3, 0x122

    #setter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$702(Lcom/android/server/sip/SipService;I)I

    .line 1456
    :cond_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)I

    move-result v1

    if-le v1, v5, :cond_3

    .line 1457
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    const/16 v3, 0x384

    #setter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$702(Lcom/android/server/sip/SipService;I)I

    .line 1459
    :cond_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    if-eqz v1, :cond_4

    .line 1460
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$KeepAliveProcess;->stop()V

    .line 1461
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    .line 1463
    :cond_4
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)I

    move-result v1

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mNeedAdustInterval:Z
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1500(Lcom/android/server/sip/SipService;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mAdustIntervalUp:Z
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1464
    :cond_5
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/sip/SipService;->mNeedAdustInterval:Z
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1502(Lcom/android/server/sip/SipService;Z)Z

    .line 1475
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/sip/SipService;->mReregister:Z
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1602(Lcom/android/server/sip/SipService;Z)Z

    .line 1476
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->clearReRegisterRequired()V

    .line 1477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    .line 1480
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-nez v1, :cond_a

    .line 1481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1483
    add-int/lit8 p2, p2, -0x3c

    .line 1484
    if-ge p2, v7, :cond_7

    .line 1485
    const/16 p2, 0x3c

    .line 1487
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    .line 1489
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1700(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->isBehindNAT(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getSendKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1491
    :cond_8
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    if-nez v1, :cond_9

    .line 1492
    new-instance v1, Lcom/android/server/sip/SipService$KeepAliveProcess;

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {v1, v3, v4}, Lcom/android/server/sip/SipService$KeepAliveProcess;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    .line 1495
    :cond_9
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$KeepAliveProcess;->start()V

    .line 1498
    :cond_a
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1505
    .end local v0           #proxyHost:Ljava/lang/String;
    :goto_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1467
    .restart local v0       #proxyHost:Ljava/lang/String;
    :cond_b
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/sip/SipService;->mAdustIntervalUp:Z
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1402(Lcom/android/server/sip/SipService;Z)Z

    .line 1468
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/sip/SipService;->mNeedAdustInterval:Z
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1502(Lcom/android/server/sip/SipService;Z)Z

    goto :goto_1

    .line 1500
    .end local v0           #proxyHost:Ljava/lang/String;
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1501
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    .line 1502
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "SipService"

    const-string v3, "Refresh registration immediately"

    invoke-static {v1, v3}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 3
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationFailed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1514
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1531
    :goto_0
    return-void

    .line 1516
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 1523
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    .line 1526
    :goto_1
    iput p2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1527
    iput-object p3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    .line 1528
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1530
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1519
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SipService"

    const-string v2, "   pause auto-registration"

    invoke-static {v0, v2}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1516
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationTimeout(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1537
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1544
    :goto_0
    return-void

    .line 1539
    :cond_1
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1540
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 1541
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    .line 1542
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1543
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1377
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 1387
    :goto_0
    return-void

    .line 1379
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    .line 1381
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SipService"

    const-string v2, "~~~ registering"

    invoke-static {v0, v2}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1383
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1384
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 1386
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 9
    .parameter "listener"

    .prologue
    .line 1330
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v4

    .line 1331
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 1337
    .local v1, state:I
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1339
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1367
    .end local v1           #state:I
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1368
    return-void

    .line 1334
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    move-result v1

    goto :goto_0

    .line 1340
    .restart local v1       #state:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-eqz v3, :cond_4

    .line 1341
    iget-wide v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 1343
    .local v0, duration:I
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1364
    .end local v0           #duration:I
    .end local v1           #state:I
    :catch_0
    move-exception v2

    .line 1365
    .local v2, t:Ljava/lang/Throwable;
    :try_start_4
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SipService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setListener(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1367
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 1344
    .restart local v1       #state:I
    :cond_4
    :try_start_5
    iget v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    if-eqz v3, :cond_6

    .line 1345
    iget v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    const/4 v5, -0x5

    if-ne v3, v5, :cond_5

    .line 1346
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_1

    .line 1348
    :cond_5
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v6, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    iget-object v7, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 1351
    :cond_6
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1352
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0xa

    const-string v7, "no data connection"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 1355
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v3, :cond_8

    .line 1356
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v6, -0x4

    const-string v7, "registration not running"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1360
    :cond_8
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public start(Lcom/android/server/sip/SipSessionGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    const/4 v1, 0x1

    .line 1292
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    .line 1293
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 1294
    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    .line 1295
    invoke-virtual {p1, p0}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1298
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1304
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v1, 0xe10

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 1305
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start AutoRegistrationProcess for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1311
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1312
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 1313
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1314
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1320
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    if-eqz v0, :cond_2

    .line 1321
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$KeepAliveProcess;->stop()V

    .line 1322
    iput-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    .line 1325
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1326
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->setListener(Landroid/net/sip/ISipSessionListener;)V

    goto :goto_0
.end method

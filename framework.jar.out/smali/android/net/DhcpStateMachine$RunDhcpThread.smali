.class Landroid/net/DhcpStateMachine$RunDhcpThread;
.super Ljava/lang/Thread;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunDhcpThread"
.end annotation


# instance fields
.field private mDhcpAction:Landroid/net/DhcpStateMachine$DhcpAction;

.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)V
    .locals 0
    .parameter
    .parameter "dhcpAction"

    .prologue
    .line 339
    iput-object p1, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 340
    iput-object p2, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->mDhcpAction:Landroid/net/DhcpStateMachine$DhcpAction;

    .line 341
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 10

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 346
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    const/4 v3, 0x0

    .line 347
    .local v3, success:Z
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->mDhcpAction:Landroid/net/DhcpStateMachine$DhcpAction;

    sget-object v5, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne v4, v5, :cond_2

    .line 350
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/DhcpStateMachine;->access$100(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v3

    .line 351
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #setter for: Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;
    invoke-static {v4, v0}, Landroid/net/DhcpStateMachine;->access$2402(Landroid/net/DhcpStateMachine;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;

    .line 359
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 362
    iget v4, v0, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    int-to-long v1, v4

    .line 371
    .local v1, leaseDuration:J
    const-wide/16 v4, 0x12c

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    .line 372
    const-wide/16 v1, 0x12c

    .line 377
    :cond_1
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Landroid/net/DhcpStateMachine;->access$1600(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x1e0

    mul-long/2addr v8, v1

    add-long/2addr v6, v8

    iget-object v8, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Landroid/net/DhcpStateMachine;->access$1500(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 382
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/DhcpStateMachine;->access$500(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x30005

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    .end local v1           #leaseDuration:J
    :goto_1
    monitor-exit p0

    return-void

    .line 352
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->mDhcpAction:Landroid/net/DhcpStateMachine$DhcpAction;

    sget-object v5, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne v4, v5, :cond_0

    .line 355
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/DhcpStateMachine;->access$100(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v3

    .line 356
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;
    invoke-static {v4}, Landroid/net/DhcpStateMachine;->access$2400(Landroid/net/DhcpStateMachine;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/DhcpInfoInternal;->updateFromDhcpRequest(Landroid/net/DhcpInfoInternal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    .end local v0           #dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    .end local v3           #success:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 385
    .restart local v0       #dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    .restart local v3       #success:Z
    :cond_3
    :try_start_2
    const-string v4, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DHCP failed on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/DhcpStateMachine;->access$100(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/DhcpStateMachine;->access$100(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 388
    iget-object v4, p0, Landroid/net/DhcpStateMachine$RunDhcpThread;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/DhcpStateMachine;->access$500(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x30005

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

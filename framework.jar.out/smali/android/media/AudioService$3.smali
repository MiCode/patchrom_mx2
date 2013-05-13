.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3817
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 3820
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mPhoneState:I
    invoke-static {v1, p1}, Landroid/media/AudioService;->access$8002(Landroid/media/AudioService;I)I

    .line 3821
    if-ne p1, v2, :cond_1

    .line 3823
    invoke-static {}, Landroid/media/AudioService;->access$8100()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3824
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8202(Landroid/media/AudioService;Z)Z

    .line 3825
    monitor-exit v2

    .line 3870
    :cond_0
    :goto_0
    return-void

    .line 3825
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3826
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 3828
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v2, v1, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v2

    .line 3829
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3830
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 3831
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3834
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v4}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3835
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #calls: Landroid/media/AudioService;->sendDeviceChangedBroadcast(Z)V
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;Z)V

    .line 3836
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    #setter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8302(Landroid/media/AudioService;I)I

    .line 3839
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 3841
    :cond_3
    if-nez p1, :cond_0

    .line 3843
    invoke-static {}, Landroid/media/AudioService;->access$8100()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3844
    :try_start_2
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8202(Landroid/media/AudioService;Z)Z

    .line 3845
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3847
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v2, v1, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v2

    .line 3848
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3849
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    #setter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8302(Landroid/media/AudioService;I)I

    .line 3850
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 3851
    .local v0, isConnected:Z
    if-eqz v0, :cond_6

    .line 3852
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x4

    #setter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8302(Landroid/media/AudioService;I)I

    .line 3859
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 3860
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3863
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v4}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3864
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #calls: Landroid/media/AudioService;->sendDeviceChangedBroadcast(Z)V
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;Z)V

    .line 3867
    .end local v0           #isConnected:Z
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 3845
    :catchall_3
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    .line 3854
    .restart local v0       #isConnected:Z
    :cond_6
    :try_start_5
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 3855
    if-eqz v0, :cond_4

    .line 3856
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x8

    #setter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8302(Landroid/media/AudioService;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1
.end method

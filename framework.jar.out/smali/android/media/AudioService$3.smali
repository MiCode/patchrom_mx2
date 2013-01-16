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
    .line 3852
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

    .line 3855
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mPhoneState:I
    invoke-static {v1, p1}, Landroid/media/AudioService;->access$7402(Landroid/media/AudioService;I)I

    .line 3856
    if-ne p1, v2, :cond_1

    .line 3858
    invoke-static {}, Landroid/media/AudioService;->access$8400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3859
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8502(Landroid/media/AudioService;Z)Z

    .line 3860
    monitor-exit v2

    .line 3905
    :cond_0
    :goto_0
    return-void

    .line 3860
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3861
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 3863
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v2, v1, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v2

    .line 3864
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3865
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 3866
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3869
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v4}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3870
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #calls: Landroid/media/AudioService;->sendDeviceChangedBroadcast(Z)V
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;Z)V

    .line 3871
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    #setter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;I)I

    .line 3874
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 3876
    :cond_3
    if-nez p1, :cond_0

    .line 3878
    invoke-static {}, Landroid/media/AudioService;->access$8400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3879
    :try_start_2
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$8502(Landroid/media/AudioService;Z)Z

    .line 3880
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3882
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v2, v1, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v2

    .line 3883
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mVolumeLockTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3884
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    #setter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;I)I

    .line 3885
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 3886
    .local v0, isConnected:Z
    if-eqz v0, :cond_6

    .line 3887
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x4

    #setter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;I)I

    .line 3894
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 3895
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3898
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v4}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3899
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #calls: Landroid/media/AudioService;->sendDeviceChangedBroadcast(Z)V
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;Z)V

    .line 3902
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

    .line 3880
    :catchall_3
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    .line 3889
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

    .line 3890
    if-eqz v0, :cond_4

    .line 3891
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x8

    #setter for: Landroid/media/AudioService;->mOutTypeForLock:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1
.end method

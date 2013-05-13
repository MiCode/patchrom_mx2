.class Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;
.super Landroid/os/Handler;
.source "LockControllerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockControllerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x138

    const/4 v5, 0x0

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, ne:Lcom/meizu/internal/policy/impl/LockControllerMonitor$NotificationQueueEntry;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 350
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 250
    :pswitch_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleMetaChanged()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1300(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handlePlaybackComplete()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto :goto_0

    .line 256
    :pswitch_3
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handlePlaystateChanded()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1500(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto :goto_0

    .line 259
    :pswitch_4
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleNamestateChanded()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto :goto_0

    .line 262
    :pswitch_5
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleMusicAppChanged(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    invoke-static {v4, v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1700(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    goto :goto_0

    .line 271
    :pswitch_6
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleCallingStateChanged()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto :goto_0

    .line 274
    :pswitch_7
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleCallingUpdateTime()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1900(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto :goto_0

    .line 278
    :pswitch_8
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleUsbMassStateChanded()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2000(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto :goto_0

    .line 281
    :pswitch_9
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleUsbMassConnectedChanded()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto :goto_0

    .line 284
    :pswitch_a
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z
    invoke-static {v3, v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$602(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 285
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 305
    :pswitch_b
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientGeneration:I
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2200(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_0

    .line 306
    const-string v3, "LockMusic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_UPDATE_STATE, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentPlayState:I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2300(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentPlayState:I
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2300(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eq v3, v4, :cond_0

    .line 308
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget v4, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentPlayState:I
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)I

    .line 309
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handlePlaystateChanded()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1500(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto/16 :goto_0

    .line 314
    :pswitch_c
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientGeneration:I
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2200(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_0

    .line 315
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 316
    .local v0, data:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMetadata:Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const/16 v5, 0xd

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    invoke-static {v4, v0, v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->artist:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->access$2502(Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMetadata:Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const/4 v5, 0x7

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    invoke-static {v4, v0, v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->access$2702(Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMetadata:Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const/4 v5, 0x1

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    invoke-static {v4, v0, v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->access$2802(Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    const-string v3, "LockMusic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_SET_METADATA, title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMetadata:Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;

    move-result-object v5

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;->access$2700(Lcom/meizu/internal/policy/impl/LockControllerMonitor$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x13f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleMetaChanged()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1300(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto/16 :goto_0

    .line 325
    .end local v0           #data:Landroid/os/Bundle;
    :pswitch_d
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mForceShowMusic:Z
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2900(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z

    move-result v2

    .line 326
    .local v2, oldForceShowMusic:Z
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mForceShowMusic:Z
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2900(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 329
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleMusicClientClear()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3000(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    .line 330
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentPlayState:I
    invoke-static {v3, v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)I

    .line 335
    :cond_1
    :goto_1
    const-string v3, "LockMusic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_SET_GENERATION_ID, New genId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "oldId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientGeneration:I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2200(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clearing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldForceShowMusic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget v4, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientGeneration:I
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)I

    .line 338
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/PendingIntent;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mClientIntent:Landroid/app/PendingIntent;
    invoke-static {v4, v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3102(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 333
    :cond_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->cleanForceShowMusic()V

    goto :goto_1

    .line 341
    .end local v2           #oldForceShowMusic:Z
    :pswitch_e
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleDoubleClickHome()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3200(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    goto/16 :goto_0

    .line 344
    :pswitch_f
    const-string v3, "LockMusic"

    const-string v4, "MSG_CLEAR_MUSIC_TIMEOUT, clear "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->handleMusicClientClear()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3000(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    .line 346
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentPlayState:I
    invoke-static {v3, v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$2302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)I

    .line 347
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$3;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->cleanForceShowMusic()V

    goto/16 :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

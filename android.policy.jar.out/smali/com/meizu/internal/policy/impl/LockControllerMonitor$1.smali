.class Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;
.super Landroid/os/storage/StorageEventListener;
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
    .line 122
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v11, 0x136

    const/4 v10, 0x0

    const/16 v9, 0x138

    .line 125
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v5, "shared"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 128
    .local v1, isOn:Z
    const-string v5, "mounted"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    .local v0, isOff:Z
    const-string v5, "removed"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "bad_removal"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    move v2, v4

    .line 130
    .local v2, isRemoved:Z
    :goto_1
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;
    invoke-static {v5, p3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$002(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    const-string v5, "USB Test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KUM----onStorageStateChanged ,newState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isRemoved = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "---------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x137

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x137

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    if-eqz v1, :cond_2

    .line 136
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicName:Ljava/lang/String;
    invoke-static {v5, v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mArtistName:Ljava/lang/String;
    invoke-static {v5, v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineMusicName:Ljava/lang/String;
    invoke-static {v5, v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$402(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineArtistName:Ljava/lang/String;
    invoke-static {v5, v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x12f

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x12f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    :cond_2
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v1, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$700(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/storage/StorageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 145
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$602(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 146
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$000(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unmounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 155
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    add-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v2           #isRemoved:Z
    :cond_5
    move v2, v3

    .line 129
    goto/16 :goto_1

    .line 148
    .restart local v2       #isRemoved:Z
    :cond_6
    if-eqz v2, :cond_4

    .line 149
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z
    invoke-static {v4, v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$602(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 150
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 158
    :cond_7
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 8
    .parameter "connected"

    .prologue
    const/16 v7, 0x138

    const/16 v6, 0x137

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, state:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$000(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Ljava/lang/String;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 167
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$002(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    :cond_0
    const-string v4, "removed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "bad_removal"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "unmounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v0, v3

    .line 174
    .local v0, isRemoved:Z
    :goto_0
    const-string v4, "USB Test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KUM---onUsbMassStorageConnectionChanged isRemoved = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",connected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUsbMassState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mUsbMassState:Ljava/lang/String;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$000(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 176
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z
    invoke-static {v2, v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$602(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void

    .end local v0           #isRemoved:Z
    :cond_2
    move v0, v2

    .line 172
    goto :goto_0

    .line 178
    .restart local v0       #isRemoved:Z
    :cond_3
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$1;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsUsbMassConnected:Z
    invoke-static {v3, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$602(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    goto :goto_1
.end method

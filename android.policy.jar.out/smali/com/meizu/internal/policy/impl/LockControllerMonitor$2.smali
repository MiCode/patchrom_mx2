.class Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;
.super Lcom/meizu/internal/telephony/PhoneStateListenerEx;
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
    .line 193
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-direct {p0}, Lcom/meizu/internal/telephony/PhoneStateListenerEx;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChange([Lcom/meizu/internal/telephony/CallInfo;)V
    .locals 16
    .parameter "callInfoArray"

    .prologue
    .line 196
    const/4 v5, 0x0

    .line 197
    .local v5, isCalling:Z
    const/4 v4, 0x1

    .line 198
    .local v4, idle:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v8

    .line 199
    .local v8, oldPhoneState:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v10, v0

    if-ge v3, v10, :cond_0

    .line 200
    aget-object v10, p1, v3

    iget v9, v10, Lcom/meizu/internal/telephony/CallInfo;->state:I

    .line 201
    .local v9, phoneState:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling(I)Z
    invoke-static {v10, v9}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$900(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 202
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I
    invoke-static {v10, v9}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$802(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)I

    .line 203
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    aget-object v11, p1, v3

    iget-object v11, v11, Lcom/meizu/internal/telephony/CallInfo;->address:Ljava/lang/String;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mAddress:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1002(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    const/4 v4, 0x0

    .line 205
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v10

    const/16 v11, 0x3e9

    if-ne v10, v11, :cond_8

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 207
    .local v6, now:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v10

    const/16 v11, 0x3e9

    if-ne v10, v11, :cond_6

    aget-object v10, p1, v3

    iget-wide v1, v10, Lcom/meizu/internal/telephony/CallInfo;->connectTime:J

    .line 208
    .local v1, calltime:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCreateTime:J
    invoke-static {v10, v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1102(Lcom/meizu/internal/policy/impl/LockControllerMonitor;J)J

    .line 209
    cmp-long v10, v6, v1

    if-lez v10, :cond_7

    .line 210
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    sub-long v11, v6, v1

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentTime:J
    invoke-static {v10, v11, v12}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;J)J

    .line 213
    :goto_2
    const/4 v5, 0x1

    .line 214
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x139

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    add-long/2addr v12, v14

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 219
    .end local v1           #calltime:J
    .end local v6           #now:J
    .end local v9           #phoneState:I
    :cond_0
    move-object/from16 v0, p1

    array-length v10, v0

    if-eqz v10, :cond_1

    if-eqz v4, :cond_2

    .line 220
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const/16 v11, 0x3e8

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I
    invoke-static {v10, v11}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$802(Lcom/meizu/internal/policy/impl/LockControllerMonitor;I)I

    .line 221
    const/4 v5, 0x0

    .line 223
    :cond_2
    const-string v10, "Keyguard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "phone: onPreciseCallStateChange and phoneState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I
    invoke-static {v12}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isCalling = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-nez v5, :cond_3

    .line 225
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x139

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    :cond_3
    move-object/from16 v0, p1

    array-length v10, v0

    if-gtz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v10

    if-eq v8, v10, :cond_5

    .line 228
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x139

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v10

    const/16 v11, 0x3ed

    if-ne v10, v11, :cond_9

    .line 230
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x13a

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    :cond_5
    :goto_3
    return-void

    .line 207
    .restart local v6       #now:J
    .restart local v9       #phoneState:I
    :cond_6
    aget-object v10, p1, v3

    iget-wide v1, v10, Lcom/meizu/internal/telephony/CallInfo;->createTime:J

    goto/16 :goto_1

    .line 212
    .restart local v1       #calltime:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-wide/16 v11, 0x0

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mCurrentTime:J
    invoke-static {v10, v11, v12}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$1202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;J)J

    goto/16 :goto_2

    .line 199
    .end local v1           #calltime:J
    .end local v6           #now:J
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 232
    .end local v9           #phoneState:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$2;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x13a

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3
.end method

.class Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;
.super Landroid/os/Handler;
.source "ChargingEdotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/ChargingEdotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdotHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;


# direct methods
.method private constructor <init>(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/internal/policy/impl/ChargingEdotView;Lcom/meizu/internal/policy/impl/ChargingEdotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;-><init>(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "m"

    .prologue
    const/16 v4, 0x3ea

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/ChargingEdotView;->updateEdot()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$100(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/ChargingEdotView;->bornEdot()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$200(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    goto :goto_0

    .line 221
    :pswitch_2
    const-string v0, "KeyguardCharging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charing: receive stop anim msg and remove Update and born, time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$300(Lcom/meizu/internal/policy/impl/ChargingEdotView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$300(Lcom/meizu/internal/policy/impl/ChargingEdotView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/ChargingEdotView;->mStopTime:J
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$400(Lcom/meizu/internal/policy/impl/ChargingEdotView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/meizu/internal/policy/impl/ChargingEdotView;->mStopTime:J
    invoke-static {v0, v1, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$402(Lcom/meizu/internal/policy/impl/ChargingEdotView;J)J

    goto :goto_0

    .line 228
    :pswitch_3
    const-string v0, "KeyguardCharging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charing: receive stop born msg and remove born, time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/ChargingEdotView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$300(Lcom/meizu/internal/policy/impl/ChargingEdotView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 232
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/ChargingEdotView;->updateEdotForDied()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$500(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    goto :goto_0

    .line 235
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/ChargingEdotView;->startEdoitDiedAnim()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$600(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    goto/16 :goto_0

    .line 238
    :pswitch_6
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/ChargingEdotView;->handleUpdateIlluminantOut()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$700(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    goto/16 :goto_0

    .line 241
    :pswitch_7
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/ChargingEdotView;->updateBatteryBoxOut()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$800(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    goto/16 :goto_0

    .line 244
    :pswitch_8
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/ChargingEdotView;->handleUpdateIlliminantIn()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$900(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    goto/16 :goto_0

    .line 247
    :pswitch_9
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/ChargingEdotView;->killAllEdot()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->access$1000(Lcom/meizu/internal/policy/impl/ChargingEdotView;)V

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

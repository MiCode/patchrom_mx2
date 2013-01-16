.class Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;
.super Landroid/os/Handler;
.source "UnlockAnimateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x3e8

    .line 58
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, current:J
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #getter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mStartAnimTime:J
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$000(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #getter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mDuration:I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$100(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 62
    .local v3, rate:F
    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 74
    float-to-double v4, v3

    const-wide v6, 0x3ff921fb54442d18L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 76
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #getter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAnimSpace:I
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$200(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v2, v4

    .line 77
    .local v2, offset:I
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #calls: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->updatePositionToLock(I)V
    invoke-static {v4, v2}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$300(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;I)V

    .line 79
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #getter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mCallback:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$400(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #getter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mCallback:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$400(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #getter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mStartPosition:I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$500(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)I

    move-result v5

    invoke-interface {v4, v5, v2}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;->onNotifyNewPosition(II)V

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #getter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAnimSpace:I
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$200(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #setter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mIsAnimating:Z
    invoke-static {v4, v9}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$602(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;Z)Z

    .line 87
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #getter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mCallback:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$400(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #getter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mCallback:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$400(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;->onAnimEnd()V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xe

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 97
    .end local v0           #current:J
    .end local v2           #offset:I
    .end local v3           #rate:F
    :pswitch_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    #setter for: Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mIsAnimating:Z
    invoke-static {v4, v9}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->access$602(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;Z)Z

    .line 98
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;->this$0:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/android/camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    .line 160
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const-wide/16 v5, 0x64

    const/4 v4, 0x5

    .line 165
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 167
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #calls: Lcom/android/camera/FocusManager;->cancelAutoFocus()V
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$000(Lcom/android/camera/FocusManager;)V

    goto :goto_0

    .line 171
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->enableGetEV()V

    goto :goto_0

    .line 175
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mIsGetCameraEV:Z
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$100(Lcom/android/camera/FocusManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #calls: Lcom/android/camera/FocusManager;->forbitAutoFocus()Z
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$200(Lcom/android/camera/FocusManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$300(Lcom/android/camera/FocusManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #calls: Lcom/android/camera/FocusManager;->getCameraEV()I
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$400(Lcom/android/camera/FocusManager;)I

    move-result v0

    .line 185
    .local v0, ev:I
    if-gtz v0, :cond_2

    .line 186
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$300(Lcom/android/camera/FocusManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mIsWaitAF:Z
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$500(Lcom/android/camera/FocusManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #setter for: Lcom/android/camera/FocusManager;->mIsWaitAF:Z
    invoke-static {v1, v3}, Lcom/android/camera/FocusManager;->access$502(Lcom/android/camera/FocusManager;Z)Z

    .line 192
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #setter for: Lcom/android/camera/FocusManager;->mLastEV:I
    invoke-static {v1, v0}, Lcom/android/camera/FocusManager;->access$602(Lcom/android/camera/FocusManager;I)I

    .line 193
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$300(Lcom/android/camera/FocusManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mIsDetectionEV:Z
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$700(Lcom/android/camera/FocusManager;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 198
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mLastEV:I
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$600(Lcom/android/camera/FocusManager;)I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x78

    if-le v1, v2, :cond_4

    .line 199
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #setter for: Lcom/android/camera/FocusManager;->mLastEV:I
    invoke-static {v1, v0}, Lcom/android/camera/FocusManager;->access$602(Lcom/android/camera/FocusManager;I)I

    .line 200
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #setter for: Lcom/android/camera/FocusManager;->mIsDetectionEV:Z
    invoke-static {v1, v7}, Lcom/android/camera/FocusManager;->access$702(Lcom/android/camera/FocusManager;Z)Z

    .line 215
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$300(Lcom/android/camera/FocusManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 203
    :cond_5
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$808(Lcom/android/camera/FocusManager;)I

    .line 204
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mGetEVCount:I
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$800(Lcom/android/camera/FocusManager;)I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_6

    .line 205
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #setter for: Lcom/android/camera/FocusManager;->mGetEVCount:I
    invoke-static {v1, v3}, Lcom/android/camera/FocusManager;->access$802(Lcom/android/camera/FocusManager;I)I

    .line 206
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #setter for: Lcom/android/camera/FocusManager;->mIsDetectionEV:Z
    invoke-static {v1, v3}, Lcom/android/camera/FocusManager;->access$702(Lcom/android/camera/FocusManager;Z)Z

    .line 207
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #setter for: Lcom/android/camera/FocusManager;->mIsWaitAF:Z
    invoke-static {v1, v7}, Lcom/android/camera/FocusManager;->access$502(Lcom/android/camera/FocusManager;Z)Z

    .line 208
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->autoFocus()V

    .line 209
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/FocusManager;->access$300(Lcom/android/camera/FocusManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 212
    :cond_6
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #setter for: Lcom/android/camera/FocusManager;->mLastEV:I
    invoke-static {v1, v0}, Lcom/android/camera/FocusManager;->access$602(Lcom/android/camera/FocusManager;I)I

    goto :goto_1

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

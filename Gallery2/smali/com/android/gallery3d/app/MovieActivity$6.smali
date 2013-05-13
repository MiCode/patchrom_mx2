.class Lcom/android/gallery3d/app/MovieActivity$6;
.super Landroid/os/Handler;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v2, 0x7d0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x3e9

    const/16 v3, 0x3e8

    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 575
    :goto_0
    return-void

    .line 529
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1500(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1600(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1600(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1600(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v1

    div-int v1, v2, v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 537
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1500(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1502(Lcom/android/gallery3d/app/MovieActivity;I)I

    .line 538
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1500(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 544
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #calls: Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V
    invoke-static {v0, v5}, Lcom/android/gallery3d/app/MovieActivity;->access$1800(Lcom/android/gallery3d/app/MovieActivity;Z)V

    goto :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1600(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v1

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1502(Lcom/android/gallery3d/app/MovieActivity;I)I

    .line 541
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1600(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    goto :goto_2

    .line 548
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1500(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v0

    if-lez v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1600(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonSystemBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1600(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v1

    div-int v1, v2, v1

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 556
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1500(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1502(Lcom/android/gallery3d/app/MovieActivity;I)I

    .line 557
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1500(Lcom/android/gallery3d/app/MovieActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    goto/16 :goto_0

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mHomeButtonAnimationBrightness:I
    invoke-static {v0, v5}, Lcom/android/gallery3d/app/MovieActivity;->access$1502(Lcom/android/gallery3d/app/MovieActivity;I)I

    .line 561
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/app/MovieActivity;->setHomeButtonBrightness(I)V

    .line 562
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #calls: Lcom/android/gallery3d/app/MovieActivity;->setInterceptHomeKey(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1800(Lcom/android/gallery3d/app/MovieActivity;Z)V

    goto/16 :goto_0

    .line 567
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$1700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 571
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mIsbackKey:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1902(Lcom/android/gallery3d/app/MovieActivity;Z)Z

    goto/16 :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

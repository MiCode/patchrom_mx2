.class Lcom/android/gallery3d/app/MoviePlayer$9;
.super Landroid/os/Handler;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-wide v8, 0x3fa99999a0000000L

    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 438
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 440
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1600(Lcom/android/gallery3d/app/MoviePlayer;)V

    goto :goto_0

    .line 447
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3500(Lcom/android/gallery3d/app/MoviePlayer;)V

    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2200(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    goto :goto_0

    .line 461
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2200(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->videoPrev()V

    goto :goto_0

    .line 468
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v0

    if-nez v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1600(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 478
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3702(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 479
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3802(Lcom/android/gallery3d/app/MoviePlayer;J)J

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3500(Lcom/android/gallery3d/app/MoviePlayer;)V

    goto :goto_1

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->setDlnaPlayState()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3600(Lcom/android/gallery3d/app/MoviePlayer;)V

    goto :goto_1

    .line 484
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->videoNext()V

    .line 485
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3702(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 486
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3802(Lcom/android/gallery3d/app/MoviePlayer;J)J

    .line 487
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3902(Lcom/android/gallery3d/app/MoviePlayer;J)J

    goto/16 :goto_0

    .line 492
    :pswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->videoPrev()V

    .line 493
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3702(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 494
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mHeadSetHookClick:I
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3702(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 495
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mFirHeadSetClick:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3802(Lcom/android/gallery3d/app/MoviePlayer;J)J

    .line 496
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mSecHeadSetClick:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3902(Lcom/android/gallery3d/app/MoviePlayer;J)J

    goto/16 :goto_0

    .line 501
    :pswitch_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4100(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 502
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4100(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4014

    div-double/2addr v1, v3

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4202(Lcom/android/gallery3d/app/MoviePlayer;D)D

    .line 504
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4202(Lcom/android/gallery3d/app/MoviePlayer;D)D

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4026(Lcom/android/gallery3d/app/MoviePlayer;D)D

    .line 507
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4002(Lcom/android/gallery3d/app/MoviePlayer;D)D

    .line 508
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4100(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    cmpg-double v0, v0, v8

    if-gtz v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMaxZoomLevel:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4100(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4002(Lcom/android/gallery3d/app/MoviePlayer;D)D

    goto/16 :goto_0

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->setVideoZoomLevel(DZ)V

    .line 512
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 514
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4300(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_6

    .line 516
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4300(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4008

    div-double/2addr v1, v3

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4202(Lcom/android/gallery3d/app/MoviePlayer;D)D

    .line 517
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4202(Lcom/android/gallery3d/app/MoviePlayer;D)D

    .line 519
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoopValue:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4018(Lcom/android/gallery3d/app/MoviePlayer;D)D

    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4002(Lcom/android/gallery3d/app/MoviePlayer;D)D

    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMinZoomLevel:D
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4300(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    cmpg-double v0, v0, v8

    if-gtz v0, :cond_7

    .line 522
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const-wide/high16 v1, 0x3ff0

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4002(Lcom/android/gallery3d/app/MoviePlayer;D)D

    .line 526
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mReboundLevel:D
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)D

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->setVideoZoomLevel(DZ)V

    goto/16 :goto_0

    .line 524
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 532
    :pswitch_8
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->checkHdmiState()V

    goto/16 :goto_0

    .line 438
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
    .end packed-switch
.end method

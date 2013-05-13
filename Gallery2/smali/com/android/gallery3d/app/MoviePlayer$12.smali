.class Lcom/android/gallery3d/app/MoviePlayer$12;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->initMoviePlayer()V
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
    .line 362
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mp"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 364
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z
    invoke-static {v2, v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$302(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 365
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsSeekToTail:Z
    invoke-static {v2, v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$2402(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 366
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2502(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 367
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 368
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2700(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2800(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setOnLineBitRateCount(I)V

    .line 373
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/gallery3d/app/ControllerOverlay;->setBitrateTextSelect(I)V

    .line 378
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOnLineTailDuration:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mCurUriIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3000(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 379
    .local v0, position:J
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    long-to-int v3, v0

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoTailPositon:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3202(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 402
    .end local v0           #position:J
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3700(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    if-lez v2, :cond_7

    .line 403
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3700(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 407
    :goto_3
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/ControllerOverlay;->onPrepared()V

    .line 410
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3700(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$2500(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimes(II)V

    .line 411
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3f1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 412
    return-void

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/gallery3d/app/ControllerOverlay;->setOnLineBitRateCount(I)V

    goto/16 :goto_0

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setBitrateTextSelect(I)V

    goto/16 :goto_1

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/VideoView;->initTimeTextPathAndType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 382
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->getAudioTrackCount()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setAudioTrackCount(I)V

    .line 383
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->getTimeTextCount()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimeTextCount(I)V

    .line 384
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3500(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->getTimeTextCount()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 385
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3500(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimeTextSelect(I)V

    .line 397
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3600(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3600(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->setAudioTrackIndex(I)V

    .line 399
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3600(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setTrackSelect(I)V

    goto/16 :goto_2

    .line 387
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->getTimeTextCount()I

    move-result v2

    if-eqz v2, :cond_4

    .line 388
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3500(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 389
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/app/MoviePlayer;->setTimeTextIndex(I)V

    .line 390
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimeTextSelect(I)V

    goto :goto_4

    .line 392
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3500(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->setTimeTextIndex(I)V

    .line 393
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3500(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimeTextSelect(I)V

    goto :goto_4

    .line 405
    :cond_7
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v2, v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$3702(Lcom/android/gallery3d/app/MoviePlayer;I)I

    goto/16 :goto_3
.end method

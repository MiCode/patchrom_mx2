.class Lcom/android/gallery3d/app/MoviePlayer$13;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$PlaybackInfoListener;


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
    .line 1376
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateMessage(I)V
    .locals 9
    .parameter "playbackStateEnum"

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 1396
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->isCurrentDlna()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    if-ne v4, p1, :cond_5

    .line 1400
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z
    invoke-static {v2, v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$1402(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 1401
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 1406
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1000(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    .line 1407
    .local v1, oldState:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I
    invoke-static {v2, p1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1002(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 1409
    if-ne v1, v4, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1000(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->getDlnaClientPos()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x320

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->getDlnaClientPos()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4700(Lcom/android/gallery3d/app/MoviePlayer;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getDuration()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 1414
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->dlnaPlayComplete()V
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4800(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1416
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1000(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    if-ne v2, v7, :cond_6

    if-eq v1, v7, :cond_6

    .line 1417
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1418
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1420
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mShowRemoteBuffering:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4900(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1421
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mShowRemoteBuffering:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4900(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1429
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/media/dlna/DlnaClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1430
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/media/dlna/DlnaClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/dlna/DlnaClient;->isPlaying()Z

    move-result v0

    .line 1431
    .local v0, isPlaying:Z
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$900(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1432
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z
    invoke-static {v2, v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$902(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 1433
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1434
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1403
    .end local v0           #isPlaying:Z
    .end local v1           #oldState:I
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1402(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 1404
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    goto/16 :goto_1

    .line 1422
    .restart local v1       #oldState:I
    :cond_6
    if-ne v1, v7, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1000(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    if-eq v2, v7, :cond_4

    .line 1424
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mShowRemoteBuffering:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4900(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1425
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1426
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2
.end method

.method public onPlayerTrackUriChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4600(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1442
    return-void
.end method

.method public onPositionMessage(J)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1388
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1400(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    long-to-int v1, p1

    mul-int/lit16 v1, v1, 0x3e8

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3102(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mCachedPosition:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4702(Lcom/android/gallery3d/app/MoviePlayer;J)J

    .line 1392
    return-void
.end method

.method public onVolumeMessage(F)V
    .locals 4
    .parameter "volume"

    .prologue
    const/4 v3, 0x4

    .line 1380
    const-string v0, "dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume --->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1702(Lcom/android/gallery3d/app/MoviePlayer;F)F

    .line 1382
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1383
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1384
    return-void
.end method

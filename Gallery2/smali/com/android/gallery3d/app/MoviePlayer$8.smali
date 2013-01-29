.class Lcom/android/gallery3d/app/MoviePlayer$8;
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
    .line 303
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2202(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsOnLineVideo:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2300(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOnLineHighQualityUriList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2400(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOnLineSmoothUriList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2500(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setOnLineBitRateCount(I)V

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setBitrateTextSelect(I)V

    .line 340
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    if-lez v0, :cond_7

    .line 341
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 345
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3202(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->onPrepared()V

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3200(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimes(II)V

    .line 350
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setOnLineBitRateCount(I)V

    goto/16 :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mQuality:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setBitrateTextSelect(I)V

    goto/16 :goto_1

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextPathList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2700(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTimeTextTypeList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2800(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/VideoView;->initTimeTextPathAndType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->getAudioTrackCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setAudioTrackCount(I)V

    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->getTimeTextCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimeTextCount(I)V

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->getTimeTextCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimeTextSelect(I)V

    .line 335
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3000(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3000(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->setAudioTrackIndex(I)V

    .line 337
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveAudioTrackId:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3000(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setTrackSelect(I)V

    goto/16 :goto_1

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->getTimeTextCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/MoviePlayer;->setTimeTextIndex(I)V

    .line 328
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimeTextSelect(I)V

    goto :goto_3

    .line 330
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->setTimeTextIndex(I)V

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSaveTimeText:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setTimeTextSelect(I)V

    goto :goto_3

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3102(Lcom/android/gallery3d/app/MoviePlayer;I)I

    goto/16 :goto_2
.end method

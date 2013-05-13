.class Lcom/android/gallery3d/app/MoviePlayer$2;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 202
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$102(Lcom/android/gallery3d/app/MoviePlayer;J)J

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$300(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x2

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$402(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->checkHdmiState()V

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay;->finishLoading()V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/gallery3d/app/ControllerOverlay;->setCanGesture(Z)V

    .line 224
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$402(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z
    invoke-static {v0, v5}, Lcom/android/gallery3d/app/MoviePlayer;->access$302(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->showTimeoutAlertDialog()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$900(Lcom/android/gallery3d/app/MoviePlayer;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/gallery3d/app/ControllerOverlay;->setCanGesture(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$2;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1000(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

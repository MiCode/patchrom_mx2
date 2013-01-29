.class Lcom/android/gallery3d/app/MoviePlayer$1;
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
    .line 172
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 175
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoadingBeginTime:J
    invoke-static {v5}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J
    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$002(Lcom/android/gallery3d/app/MoviePlayer;J)J

    .line 176
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v3, 0x2

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$302(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 178
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/ControllerOverlay;->checkHdmiState()V

    .line 179
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/ControllerOverlay;->finishLoading()V

    .line 180
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/android/gallery3d/app/ControllerOverlay;->setCanGesture(Z)V

    .line 195
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mRecordStatus:I
    invoke-static {v2, v8}, Lcom/android/gallery3d/app/MoviePlayer;->access$302(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 183
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLoadingDuration:J
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)J

    move-result-wide v2

    const-wide/32 v4, 0x15f90

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, hint:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 186
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 187
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 188
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/ControllerOverlay;->finishLoading()V

    .line 189
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->finishVideo()V

    goto :goto_0

    .line 191
    .end local v0           #hint:Ljava/lang/String;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/android/gallery3d/app/ControllerOverlay;->setCanGesture(Z)V

    .line 192
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

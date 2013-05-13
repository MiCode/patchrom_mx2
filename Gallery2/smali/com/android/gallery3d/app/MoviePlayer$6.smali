.class Lcom/android/gallery3d/app/MoviePlayer$6;
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
    .line 258
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 261
    iget v2, p1, Landroid/os/Message;->what:I

    .line 262
    .local v2, what:I
    packed-switch v2, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mCachedRemotePlaying:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01c1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, hint:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 273
    .local v1, toast:Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v1, v3, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 274
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 278
    .end local v0           #hint:Ljava/lang/String;
    .end local v1           #toast:Landroid/widget/Toast;
    :pswitch_2
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1400(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 280
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1600(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1600(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1600(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 283
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/media/dlna/DlnaClient;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 284
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/media/dlna/DlnaClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 286
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z
    invoke-static {v3, v7}, Lcom/android/gallery3d/app/MoviePlayer;->access$1802(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 287
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I
    invoke-static {v3, v9}, Lcom/android/gallery3d/app/MoviePlayer;->access$1402(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 288
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    sget-object v4, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$1902(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;)Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 289
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 290
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    .line 291
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto/16 :goto_0

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1600(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 298
    :pswitch_3
    const-string v3, "dlna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remote setVolume--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F
    invoke-static {v5}, Lcom/android/gallery3d/app/MoviePlayer;->access$2000(Lcom/android/gallery3d/app/MoviePlayer;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaVolume:F
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$2000(Lcom/android/gallery3d/app/MoviePlayer;)F

    move-result v4

    invoke-interface {v3, v4, v7}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVolumeProgress(FZ)V

    goto/16 :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

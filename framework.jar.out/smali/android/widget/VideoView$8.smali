.class Landroid/widget/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 703
    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Landroid/widget/VideoView;->access$1702(Landroid/widget/VideoView;I)I

    .line 704
    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Landroid/widget/VideoView;->access$1802(Landroid/widget/VideoView;I)I

    .line 705
    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$1900(Landroid/widget/VideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 706
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 707
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 708
    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 711
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 713
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 705
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 706
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 717
    iget-object v1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1, p1}, Landroid/widget/VideoView;->access$3102(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 718
    iget-object v1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/widget/VideoView;->access$3200(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 734
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/widget/VideoView;->access$3200(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, scheme:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/widget/VideoView;->access$3200(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mLastUriString:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$3300(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 723
    :cond_1
    iget-object v1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #calls: Landroid/widget/VideoView;->openVideo()V
    invoke-static {v1}, Landroid/widget/VideoView;->access$2500(Landroid/widget/VideoView;)V

    .line 724
    iget-object v1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/widget/VideoView;->access$3200(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Landroid/widget/VideoView;->mLastUriString:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/widget/VideoView;->access$3302(Landroid/widget/VideoView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 726
    :cond_2
    iget-object v1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/VideoView;->access$3400(Landroid/widget/VideoView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/widget/VideoView$8$1;

    invoke-direct {v2, p0}, Landroid/widget/VideoView$8$1;-><init>(Landroid/widget/VideoView$8;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 738
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$3102(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 739
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 740
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    #calls: Landroid/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$3500(Landroid/widget/VideoView;Z)V

    .line 741
    return-void
.end method

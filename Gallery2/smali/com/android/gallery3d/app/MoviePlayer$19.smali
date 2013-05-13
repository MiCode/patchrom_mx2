.class Lcom/android/gallery3d/app/MoviePlayer$19;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$RemoteCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->dlnaDoSetDataSourcePlay()V
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
    .line 1773
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1776
    if-eqz p1, :cond_1

    .line 1778
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$5100(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1781
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$5500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1782
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$5500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1783
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1787
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/media/dlna/DlnaClient;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$19$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$19$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer$19;)V

    invoke-virtual {v1, v0, v2}, Landroid/media/dlna/DlnaClient;->setDataSource(Ljava/lang/String;Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1829
    const-string v1, "dlna"

    const-string v2, "setDataSource fail---> "

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1600(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1832
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z
    invoke-static {v1, v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$1802(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 1833
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaPlayState:I
    invoke-static {v1, v5}, Lcom/android/gallery3d/app/MoviePlayer;->access$1402(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 1834
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    sget-object v2, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1902(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;)Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1835
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 1836
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    .line 1837
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 1784
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$5500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1785
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$5500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieActivityUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

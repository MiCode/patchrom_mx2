.class Lcom/android/gallery3d/app/MoviePlayer$19$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$RemoteCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer$19;->onActionEnd(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/MoviePlayer$19;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer$19;)V
    .locals 0
    .parameter

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$19$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$19;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1791
    if-eqz p1, :cond_0

    .line 1792
    const-string v0, "dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail  errcode--->:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$19$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$19;

    iget-object v0, v0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$5100(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1826
    :goto_0
    return-void

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$19$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$19;

    iget-object v0, v0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/media/dlna/DlnaClient;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$19$1$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$19$1$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer$19$1;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->play(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1820
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$19$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$19;

    iget-object v0, v0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1802(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    goto :goto_0

    .line 1822
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$19$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$19;

    iget-object v0, v0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1802(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 1823
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$19$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$19;

    iget-object v0, v0, Lcom/android/gallery3d/app/MoviePlayer$19;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method

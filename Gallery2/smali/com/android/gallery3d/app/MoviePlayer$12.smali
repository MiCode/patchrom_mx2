.class Lcom/android/gallery3d/app/MoviePlayer$12;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$RemoteCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->dlnaPlayComplete()V
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
    .line 1345
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1348
    if-eqz p1, :cond_0

    .line 1350
    const-string v1, "dlna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail  errcode--->:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg --->:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4600(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1366
    :goto_0
    return-void

    .line 1353
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1402(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 1354
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    sget-object v2, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->DLNA_PLAYOUT:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1502(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;)Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1355
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/app/ControllerOverlay;->setIsDlnaMode(Z)V

    .line 1356
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    if-lez v1, :cond_1

    .line 1357
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlna:Landroid/media/dlna/DlnaClient;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/media/dlna/DlnaClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/media/dlna/DlnaClient;->seek(J)Z

    move-result v0

    .line 1358
    .local v0, err:Z
    const-string v1, "dlna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const-string v1, "dlna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek mVideoPosition--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    .end local v0           #err:Z
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$200(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 1362
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    .line 1363
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2000(Lcom/android/gallery3d/app/MoviePlayer;)I

    goto :goto_0
.end method

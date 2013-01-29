.class Lcom/android/gallery3d/app/MoviePlayer$16;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$RemoteCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->doDlnaPause()V
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
    .line 1652
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$16;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 1655
    if-eqz p1, :cond_0

    .line 1656
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

    .line 1657
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$16;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->stopDlnaPlay()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4600(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1664
    :goto_0
    return-void

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$16;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaIsPlaying:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1402(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 1661
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$16;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->DLNA_PLAYOUT:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaMode:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1502(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;)Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 1662
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$16;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay;->setDlnaVideoState(I)V

    goto :goto_0
.end method

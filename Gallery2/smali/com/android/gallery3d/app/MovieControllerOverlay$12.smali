.class Lcom/android/gallery3d/app/MovieControllerOverlay$12;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/android/gallery3d/seekbar/VerSeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1128
    if-nez p3, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7702(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1133
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    goto :goto_0

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8002(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1136
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8300(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {p1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->getMax()I

    move-result v2

    div-int/2addr v1, v2

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8202(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1137
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8200(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8100(Lcom/android/gallery3d/app/MovieControllerOverlay;I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1123
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3fb

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1118
    return-void
.end method

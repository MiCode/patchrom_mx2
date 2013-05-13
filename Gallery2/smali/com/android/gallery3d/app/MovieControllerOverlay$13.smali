.class Lcom/android/gallery3d/app/MovieControllerOverlay$13;
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
    .line 1036
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/android/gallery3d/seekbar/VerSeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const v4, 0x7f0200db

    const v3, 0x7f0200da

    .line 1050
    if-nez p3, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6802(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1055
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6800(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1060
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    goto :goto_0

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7102(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1063
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMaxVolume:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7400(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {p1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->getMax()I

    move-result v2

    div-int/2addr v1, v2

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7302(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1064
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1069
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7300(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7200(Lcom/android/gallery3d/app/MovieControllerOverlay;I)V

    goto :goto_0

    .line 1067
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1045
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f9

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1040
    return-void
.end method

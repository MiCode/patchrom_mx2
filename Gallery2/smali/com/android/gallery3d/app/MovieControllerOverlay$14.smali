.class Lcom/android/gallery3d/app/MovieControllerOverlay$14;
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
    .line 1074
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/android/gallery3d/seekbar/VerSeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1088
    if-nez p3, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6502(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1092
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xfd

    div-int/lit16 v1, v1, 0x2710

    add-int/lit8 v1, v1, 0x2

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7502(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1093
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1083
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1078
    return-void
.end method

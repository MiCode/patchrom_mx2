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
    .line 1142
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/android/gallery3d/seekbar/VerSeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1156
    if-nez p3, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7302(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1160
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-static {}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7500()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7300(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v2

    invoke-static {}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7500()I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x2710

    add-int/2addr v1, v2

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8402(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1161
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAppBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8400(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1151
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$13;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1146
    return-void
.end method

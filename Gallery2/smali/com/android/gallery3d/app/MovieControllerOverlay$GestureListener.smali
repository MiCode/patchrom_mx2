.class Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MovieControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 2940
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2940
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/16 v4, 0x3ee

    const/4 v3, 0x0

    .line 2943
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getZoomLevelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2962
    :cond_0
    :goto_0
    return v3

    .line 2946
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsZoomClick:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2947
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8702(Lcom/android/gallery3d/app/MovieControllerOverlay;F)F

    .line 2948
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownY:F
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8802(Lcom/android/gallery3d/app/MovieControllerOverlay;F)F

    .line 2949
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLastDownTime:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8902(Lcom/android/gallery3d/app/MovieControllerOverlay;J)J

    .line 2950
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3908(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    .line 2951
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3900(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2952
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2953
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2955
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2956
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2957
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setZoomChange()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9100(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 2959
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3902(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4416

    .line 2966
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2967
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/view/VelocityTracker;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2968
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getVideoDuration()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2978
    :goto_0
    return v5

    .line 2971
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 2972
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/16 v1, 0x1c2

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureSpeedTime:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9302(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_0

    .line 2973
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 2974
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/16 v1, 0x10e

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureSpeedTime:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9302(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_0

    .line 2976
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/16 v1, 0x5a

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureSpeedTime:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9302(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_0
.end method

.class Lcom/android/camera/Camera$ZoomSeekBarListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomSeekBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/camera/Camera$ZoomSeekBarListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ZoomSeekBarListener;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomSeekBarListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isZoomBarVisible()Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomSeekBarListener;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomSeekBarListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomMax:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)I

    move-result v0

    if-le p2, v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomSeekBarListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomMax:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomSeekBarListener;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mZoomValue:I
    invoke-static {v0, p2}, Lcom/android/camera/Camera;->access$5902(Lcom/android/camera/Camera;I)I

    .line 1017
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomSeekBarListener;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p2}, Lcom/android/camera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomSeekBarListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->timeToHideZoomBar()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$6000(Lcom/android/camera/Camera;)V

    .line 1021
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1026
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1031
    return-void
.end method

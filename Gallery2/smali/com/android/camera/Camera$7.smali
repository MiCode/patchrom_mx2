.class Lcom/android/camera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 843
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 824
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v2

    .line 825
    .local v1, distance:F
    float-to-double v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    const/4 v0, 0x1

    .line 826
    .local v0, active:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 827
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getCurCaptureMode()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsProximityEnable:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsMenuLongPress:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInitCaptureMode:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->collapseMenuControl()Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)Z

    move-result v3

    invoke-static {v3, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsPowerPressed:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5400(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsCanProximityTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsDropFirstProximityCapture:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    iget v2, v2, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraState:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 833
    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 834
    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->keepScreenOnAwhile()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)V

    .line 835
    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    .line 838
    :cond_0
    return-void

    .end local v0           #active:Z
    :cond_1
    move v0, v2

    .line 825
    goto/16 :goto_0
.end method

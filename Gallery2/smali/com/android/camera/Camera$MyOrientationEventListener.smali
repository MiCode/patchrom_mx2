.class Lcom/android/camera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2761
    iput-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    .line 2762
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 2763
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x6

    .line 2770
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 2791
    :cond_0
    :goto_0
    return-void

    .line 2771
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10700(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v3

    #setter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$10702(Lcom/android/camera/Camera;I)I

    .line 2774
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$10700(Lcom/android/camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x168

    .line 2776
    .local v1, orientationCompensation:I
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->checkIsForbitPanoramaOrientation(I)Z
    invoke-static {v2, v1}, Lcom/android/camera/Camera;->access$11500(Lcom/android/camera/Camera;I)Z

    move-result v0

    .line 2777
    .local v0, isForbitOrientation:Z
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)I

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v2, v2, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2}, Lcom/android/camera/Util;->isFrontCamera(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsForbitOrientation:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$10000(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 2779
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v2, v1}, Lcom/android/camera/Camera;->access$10202(Lcom/android/camera/Camera;I)I

    .line 2780
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)I

    move-result v3

    const/4 v4, 0x1

    #calls: Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V
    invoke-static {v2, v3, v4}, Lcom/android/camera/Camera;->access$11600(Lcom/android/camera/Camera;IZ)V

    .line 2781
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2782
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionAngle(I)V

    .line 2787
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2788
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2789
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showTapToFocusToast()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)V

    goto/16 :goto_0
.end method

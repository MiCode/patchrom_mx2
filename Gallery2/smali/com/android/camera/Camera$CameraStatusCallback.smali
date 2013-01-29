.class final Lcom/android/camera/Camera$CameraStatusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$CameraStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1468
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$CameraStatusCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onCameraStatus(I)V
    .locals 8
    .parameter "statusValue"

    .prologue
    const/16 v2, 0x8

    const-wide/16 v6, 0x32

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1471
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 1472
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const/16 v0, 0x28

    if-ge p1, v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    add-int/lit8 v1, p1, -0xa

    #setter for: Lcom/android/camera/Camera;->mPanoramaVaule:I
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$9702(Lcom/android/camera/Camera;I)I

    .line 1474
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$9800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaVaule:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$9700(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setProgress(I)V

    .line 1475
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$9800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoraProgressBar;->invalidate()V

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    const/16 v0, 0x29

    if-ne p1, v0, :cond_2

    .line 1477
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$9800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    .line 1478
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$9800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    :cond_2
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_3

    .line 1483
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsDoingPanorama:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$9902(Lcom/android/camera/Camera;Z)Z

    .line 1484
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsForbitOrientation:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$10002(Lcom/android/camera/Camera;Z)Z

    .line 1485
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$9800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    .line 1486
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$9800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setVisibility(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1489
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->prepareCaptureModeUI()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$8800(Lcom/android/camera/Camera;)V

    .line 1490
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->deleteCurrentPhoto()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10100(Lcom/android/camera/Camera;)V

    .line 1491
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    const v2, 0x7f0a00b0

    iget-object v3, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1492
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setLedEnable(IZ)V
    invoke-static {v0, v5, v4}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;IZ)V

    .line 1493
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10300(Lcom/android/camera/Camera;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1494
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1495
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10500(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1496
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 1497
    :cond_3
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_4

    .line 1498
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsDoingPanorama:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$9902(Lcom/android/camera/Camera;Z)Z

    .line 1499
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsForbitOrientation:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$10002(Lcom/android/camera/Camera;Z)Z

    .line 1500
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1501
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setLedEnable(IZ)V
    invoke-static {v0, v5, v4}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;IZ)V

    .line 1502
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10300(Lcom/android/camera/Camera;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1503
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1504
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10500(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_0

    .line 1505
    :cond_4
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    const/16 v0, 0x3d

    if-gt p1, v0, :cond_0

    .line 1506
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setPanoramaModeUIDirection(I)V
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$10600(Lcom/android/camera/Camera;I)V

    goto/16 :goto_0

    .line 1508
    :cond_6
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1509
    const/16 v0, 0x29

    if-ne p1, v0, :cond_7

    .line 1510
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1511
    :cond_7
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_8

    .line 1512
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1513
    :cond_8
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsDoingMulti:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2902(Lcom/android/camera/Camera;Z)Z

    .line 1515
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1516
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    const v2, 0x7f0a00b0

    iget-object v3, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10700(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1517
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setLedEnable(IZ)V
    invoke-static {v0, v5, v4}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;IZ)V

    .line 1518
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)V

    goto/16 :goto_0
.end method

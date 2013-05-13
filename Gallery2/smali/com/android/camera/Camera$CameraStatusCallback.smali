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
    .line 1606
    iput-object p1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1606
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$CameraStatusCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onCameraStatus(I)V
    .locals 9
    .parameter "statusValue"

    .prologue
    const/16 v2, 0x8

    const-wide/16 v7, 0x32

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1609
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 1610
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const/16 v0, 0x28

    if-ge p1, v0, :cond_1

    .line 1611
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    add-int/lit8 v1, p1, -0xa

    #setter for: Lcom/android/camera/Camera;->mPanoramaVaule:I
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$10102(Lcom/android/camera/Camera;I)I

    .line 1612
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaVaule:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$10100(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setProgress(I)V

    .line 1613
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoraProgressBar;->invalidate()V

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1614
    :cond_1
    const/16 v0, 0x29

    if-ne p1, v0, :cond_2

    .line 1615
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    .line 1616
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setVisibility(I)V

    .line 1617
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :cond_2
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_4

    .line 1621
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsDoingPanorama:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$10302(Lcom/android/camera/Camera;Z)Z

    .line 1622
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsHomePressed:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$8402(Lcom/android/camera/Camera;Z)Z

    .line 1623
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportComprehensivePano()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1624
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsForbitOrientation:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$10402(Lcom/android/camera/Camera;Z)Z

    .line 1626
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    .line 1627
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoraProgressBar;->setVisibility(I)V

    .line 1629
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1630
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->prepareCaptureModeUI()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$9100(Lcom/android/camera/Camera;)V

    .line 1631
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->deleteCurrentPhoto()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10500(Lcom/android/camera/Camera;)V

    .line 1632
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    const v3, 0x7f0a00ba

    iget-object v4, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mToastRotateLayout:Lcom/android/camera/ui/RotateLayout;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$10700(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/RotateLayout;->getOrientation()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    #setter for: Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/ui/RotateTextToast;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$10602(Lcom/android/camera/Camera;Lcom/android/camera/ui/RotateTextToast;)Lcom/android/camera/ui/RotateTextToast;

    .line 1633
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/ui/RotateTextToast;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10600(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1634
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setLedEnable(IZ)V
    invoke-static {v0, v6, v5}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;IZ)V

    .line 1635
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10800(Lcom/android/camera/Camera;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1636
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1637
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$11000(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1638
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 1639
    :cond_4
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_6

    .line 1640
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsDoingPanorama:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$10302(Lcom/android/camera/Camera;Z)Z

    .line 1641
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportComprehensivePano()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1642
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsForbitOrientation:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$10402(Lcom/android/camera/Camera;Z)Z

    .line 1644
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1645
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setLedEnable(IZ)V
    invoke-static {v0, v6, v5}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;IZ)V

    .line 1646
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10800(Lcom/android/camera/Camera;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1647
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1648
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSwitchCameraBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$11000(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v7, v8}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    goto/16 :goto_0

    .line 1649
    :cond_6
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_7

    const/16 v0, 0x3d

    if-gt p1, v0, :cond_0

    .line 1650
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getIsSupportComprehensivePano()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1651
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setPanoramaModeUIDirection(I)V
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$11100(Lcom/android/camera/Camera;I)V

    goto/16 :goto_0

    .line 1653
    :cond_8
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPanoramaProgressBar:Lcom/android/camera/ui/PanoraProgressBar;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/PanoraProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoraProgressBar;->setDirection(I)V

    goto/16 :goto_0

    .line 1656
    :cond_9
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1657
    const/16 v0, 0x29

    if-ne p1, v0, :cond_a

    .line 1658
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1659
    :cond_a
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_b

    .line 1661
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1662
    :cond_b
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsDoingMulti:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2902(Lcom/android/camera/Camera;Z)Z

    .line 1664
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1665
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    const v2, 0x7f0a00ba

    iget-object v3, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$11200(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1666
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setLedEnable(IZ)V
    invoke-static {v0, v6, v5}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;IZ)V

    .line 1667
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStatusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)V

    goto/16 :goto_0
.end method

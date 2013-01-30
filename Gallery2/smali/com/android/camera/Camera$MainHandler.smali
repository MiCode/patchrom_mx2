.class Lcom/android/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 587
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 763
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 589
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsCanClickShutterButton:Z
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$1602(Lcom/android/camera/Camera;Z)Z

    .line 590
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    goto :goto_0

    .line 594
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 600
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeFirstTime()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 605
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;I)V

    goto :goto_0

    .line 615
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setDisplayOrientation()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)V

    .line 618
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 625
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showTapToFocusToast()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 630
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->updateThumbnail()V

    goto :goto_0

    .line 635
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->switchCamera()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 640
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    goto :goto_0

    .line 645
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeAfterCameraOpen()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 650
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-object v1, v0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 651
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;I)V

    goto/16 :goto_0

    .line 656
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-object v1, v0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 657
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-boolean v2, v0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    .line 658
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const v1, 0x7f0a0018

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 664
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-object v1, v0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 665
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-boolean v2, v0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    .line 666
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const v1, 0x7f0a0019

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 671
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->hideZoomSeekBar()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 675
    :pswitch_f
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->collapseFlashLightList()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 679
    :pswitch_10
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 680
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsDoingMulti:Z
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$2902(Lcom/android/camera/Camera;Z)Z

    .line 681
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    #calls: Lcom/android/camera/Camera;->setLedEnable(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;IZ)V

    .line 682
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCaptureModeTips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 686
    :pswitch_11
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3200(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "light-off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 689
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsMultiSetFlashLightOn:Z
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$3202(Lcom/android/camera/Camera;Z)Z

    goto/16 :goto_0

    .line 694
    :pswitch_12
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getFaceSmileLevel()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 696
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 697
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->cancelGetFacePosTask()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)V

    .line 698
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/SmileRectView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/SmileRectView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    .line 700
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsSendSmileMsg:Z
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$3502(Lcom/android/camera/Camera;Z)Z

    .line 701
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->timeToCloseCamera()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 709
    :pswitch_13
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsGotoGallery:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 716
    :pswitch_14
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mScreenShotImg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mScreenShot:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 717
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mScreenShotImg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 721
    :pswitch_15
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->hideZoomSeekBar()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)V

    .line 722
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isCameraIdle()Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCanSwitchOtherMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-static {v2}, Lcom/android/camera/Util;->setIsBeforeGotoVideo(Z)V

    .line 724
    invoke-static {}, Lcom/android/camera/Util;->setCanSwitchOtherMode()V

    .line 725
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->switchToOtherMode(I)V
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;I)V

    goto/16 :goto_0

    .line 730
    :pswitch_16
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/SmileRectView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/SmileRectView;->setPosArray([II)V

    goto/16 :goto_0

    .line 734
    :pswitch_17
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/SmileRectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/SmileRectView;->invalidate()V

    goto/16 :goto_0

    .line 738
    :pswitch_18
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/SmileRectView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/SmileRectView;->setVisibility(I)V

    goto/16 :goto_0

    .line 742
    :pswitch_19
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/SmileRectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/SmileRectView;->setVisibility(I)V

    goto/16 :goto_0

    .line 746
    :pswitch_1a
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSmileRect:Lcom/android/camera/ui/SmileRectView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ui/SmileRectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/SmileRectView;->resetPosArray()V

    goto/16 :goto_0

    .line 750
    :pswitch_1b
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;I)V

    goto/16 :goto_0

    .line 754
    :pswitch_1c
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$4202(Lcom/android/camera/Camera;I)I

    goto/16 :goto_0

    .line 758
    :pswitch_1d
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 759
    iget-object v0, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doAttach()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_1
        :pswitch_12
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_11
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
    .end packed-switch
.end method

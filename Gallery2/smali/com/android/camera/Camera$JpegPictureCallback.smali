.class final Lcom/android/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    iput-object p2, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 1448
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 22
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/Camera;->mIsSystemCapture:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$7702(Lcom/android/camera/Camera;Z)Z

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$5302(Lcom/android/camera/Camera;Z)Z

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/Camera;->mIsLastTouchFocus:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$7802(Lcom/android/camera/Camera;Z)Z

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/Camera;->mIsScreenCameraModeShowThumbnail:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$7902(Lcom/android/camera/Camera;Z)Z

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$8002(Lcom/android/camera/Camera;Z)Z

    .line 1458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/Camera;->mIsNormalSnapShot:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$8102(Lcom/android/camera/Camera;Z)Z

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/Camera;->mIsLastFileEncryptTakePic:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$8202(Lcom/android/camera/Camera;Z)Z

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/Camera;->mLuckyEggClickedTimes:I
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$4202(Lcom/android/camera/Camera;I)I

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1556
    :goto_0
    return-void

    .line 1465
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    #setter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2, v0, v1}, Lcom/android/camera/Camera;->access$8302(Lcom/android/camera/Camera;J)J

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$7500(Lcom/android/camera/Camera;)J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_3

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$7500(Lcom/android/camera/Camera;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$7400(Lcom/android/camera/Camera;)J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$8300(Lcom/android/camera/Camera;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$7500(Lcom/android/camera/Camera;)J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 1480
    :goto_1
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v0, v6, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$6900(Lcom/android/camera/Camera;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsHomePressed:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$8400(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;I)V

    .line 1491
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 1492
    .local v15, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v10

    .line 1494
    .local v10, orientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegRotation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$8500(Lcom/android/camera/Camera;)I

    move-result v2

    add-int/2addr v2, v10

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_4

    .line 1495
    iget v7, v15, Landroid/hardware/Camera$Size;->width:I

    .line 1496
    .local v7, width:I
    iget v8, v15, Landroid/hardware/Camera$Size;->height:I

    .line 1501
    .local v8, height:I
    :goto_2
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$8600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera$ImageNamer;->getMultiUri()[Landroid/net/Uri;

    move-result-object v17

    .line 1503
    .local v17, uri:[Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$8600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera$ImageNamer;->getMultiTitle()[Ljava/lang/String;

    move-result-object v16

    .line 1504
    .local v16, title:[Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p1

    array-length v3, v0

    int-to-long v0, v3

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    #setter for: Lcom/android/camera/Camera;->mDataLength:J
    invoke-static {v2, v0, v1}, Lcom/android/camera/Camera;->access$8702(Lcom/android/camera/Camera;J)J

    .line 1507
    :cond_2
    const/4 v12, 0x1

    .line 1508
    .local v12, isNeedData:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    const/16 v2, 0x9

    if-ge v11, v2, :cond_8

    .line 1509
    const/16 v2, 0x8

    if-ge v11, v2, :cond_5

    .line 1510
    const/4 v12, 0x0

    .line 1514
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v2

    if-eqz v12, :cond_6

    move-object/from16 v3, p1

    :goto_5
    aget-object v4, v17, v11

    aget-object v5, v16, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget v9, v9, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 1508
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1475
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v10           #orientation:I
    .end local v11           #i:I
    .end local v12           #isNeedData:Z
    .end local v15           #s:Landroid/hardware/Camera$Size;
    .end local v16           #title:[Ljava/lang/String;
    .end local v17           #uri:[Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$7600(Lcom/android/camera/Camera;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$7400(Lcom/android/camera/Camera;)J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$8300(Lcom/android/camera/Camera;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$7600(Lcom/android/camera/Camera;)J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 1498
    .restart local v10       #orientation:I
    .restart local v15       #s:Landroid/hardware/Camera$Size;
    :cond_4
    iget v7, v15, Landroid/hardware/Camera$Size;->height:I

    .line 1499
    .restart local v7       #width:I
    iget v8, v15, Landroid/hardware/Camera$Size;->width:I

    .restart local v8       #height:I
    goto/16 :goto_2

    .line 1512
    .restart local v11       #i:I
    .restart local v12       #isNeedData:Z
    .restart local v16       #title:[Ljava/lang/String;
    .restart local v17       #uri:[Landroid/net/Uri;
    :cond_5
    const/4 v12, 0x1

    goto :goto_4

    .line 1514
    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    .line 1518
    .end local v11           #i:I
    .end local v12           #isNeedData:Z
    .end local v16           #title:[Ljava/lang/String;
    .end local v17           #uri:[Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$8600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 1519
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$8600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 1520
    .local v5, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget v9, v3, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 1540
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #title:Ljava/lang/String;
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v10           #orientation:I
    .end local v15           #s:Landroid/hardware/Camera$Size;
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->checkStorage()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6800(Lcom/android/camera/Camera;)V

    .line 1542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1543
    .local v13, now:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$8300(Lcom/android/camera/Camera;)J

    move-result-wide v18

    sub-long v18, v13, v18

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    .line 1544
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v0, v6, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    #setter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2, v0, v1}, Lcom/android/camera/Camera;->access$8302(Lcom/android/camera/Camera;J)J

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$6900(Lcom/android/camera/Camera;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->prepareCaptureModeUI()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$9100(Lcom/android/camera/Camera;)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->homeKeyCaptureMode()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$9200(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 1524
    .end local v13           #now:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p1

    #setter for: Lcom/android/camera/Camera;->mJpegImageData:[B
    invoke-static {v2, v0}, Lcom/android/camera/Camera;->access$8802(Lcom/android/camera/Camera;[B)[B

    .line 1525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mQuickCapture:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$8900(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->gotoCaptureAlert()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$9000(Lcom/android/camera/Camera;)V

    goto/16 :goto_6

    .line 1529
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doAttach()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)V

    goto/16 :goto_6

    .line 1531
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6900(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->gotoCaptureAlert()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$9000(Lcom/android/camera/Camera;)V

    goto/16 :goto_6

    .line 1554
    .restart local v13       #now:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->stopPreview()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$9300(Lcom/android/camera/Camera;)V

    goto/16 :goto_0
.end method

.class Lcom/android/camera/Camera$ImageSaver;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Camera$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1564
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 1569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 1570
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->start()V

    .line 1571
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 19
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    .line 1682
    const/4 v15, 0x0

    .line 1683
    .local v15, ok:Z
    if-nez p1, :cond_4

    .line 1684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10900(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDataLength:J
    invoke-static {v4}, Lcom/android/camera/Camera;->access$8300(Lcom/android/camera/Camera;)J

    move-result-wide v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p8

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v3 .. v11}, Lcom/android/camera/Storage;->updateImageWithoutData(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IJII)Z

    move-result v15

    .line 1690
    :goto_0
    if-eqz v15, :cond_3

    .line 1692
    monitor-enter p0

    .line 1697
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_5

    const/4 v14, 0x1

    .line 1698
    .local v14, needThumbnail:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    if-eqz v14, :cond_2

    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z
    invoke-static {v3}, Lcom/android/camera/Camera;->access$11000(Lcom/android/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1702
    move/from16 v0, p5

    int-to-double v3, v0

    move/from16 v0, p7

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v17, v0

    .line 1703
    .local v17, ratio:I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v12

    .line 1704
    .local v12, inSampleSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$11100(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPicSizeStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$11100(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3264x2448"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1705
    const/16 v12, 0x10

    .line 1708
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10700(Lcom/android/camera/Camera;)I

    move-result v3

    div-int/lit8 v3, v3, 0x5a

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 1710
    const/16 p8, 0x5a

    .line 1713
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, p8

    move-object/from16 v2, p2

    invoke-static {v0, v1, v12, v2}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v18

    .line 1715
    .local v18, t:Lcom/android/camera/Thumbnail;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1718
    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1720
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1721
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1732
    .end local v12           #inSampleSize:I
    .end local v17           #ratio:I
    .end local v18           #t:Lcom/android/camera/Thumbnail;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1734
    .end local v14           #needThumbnail:Z
    :cond_3
    return-void

    .line 1687
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10900(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsFlymeCaptureIntent:Z
    invoke-static {v4}, Lcom/android/camera/Camera;->access$11000(Lcom/android/camera/Camera;)Z

    move-result v4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p8

    move-object/from16 v9, p1

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v3 .. v11}, Lcom/android/camera/Storage;->updateImage(Landroid/content/ContentResolver;ZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BII)Z

    move-result v15

    goto/16 :goto_0

    .line 1697
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1698
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1720
    .restart local v12       #inSampleSize:I
    .restart local v14       #needThumbnail:Z
    .restart local v17       #ratio:I
    .restart local v18       #t:Lcom/android/camera/Thumbnail;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 1723
    :cond_6
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1724
    new-instance v13, Landroid/media/MediaScanner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v13, v3}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 1725
    .local v13, mediaScanner:Landroid/media/MediaScanner;
    invoke-static/range {p3 .. p3}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "external"

    const-string v5, "image/jpeg"

    invoke-virtual {v13, v3, v4, v5}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1727
    .local v16, panoramaUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10700(Lcom/android/camera/Camera;)I

    move-result v3

    div-int/lit8 v3, v3, 0x5a

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 1728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$10900(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v4, 0x5a

    move-object/from16 v0, v16

    invoke-static {v3, v0, v4}, Lcom/android/camera/Storage;->updatePanoramaImage(Landroid/content/ContentResolver;Landroid/net/Uri;I)Z

    goto :goto_2
.end method


# virtual methods
.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 3
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 1577
    new-instance v0, Lcom/android/camera/Camera$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/camera/Camera$SaveRequest;-><init>(Lcom/android/camera/Camera$1;)V

    .line 1578
    .local v0, r:Lcom/android/camera/Camera$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/Camera$SaveRequest;->data:[B

    .line 1579
    iput-object p2, v0, Lcom/android/camera/Camera$SaveRequest;->uri:Landroid/net/Uri;

    .line 1580
    iput-object p3, v0, Lcom/android/camera/Camera$SaveRequest;->title:Ljava/lang/String;

    .line 1581
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/camera/Camera$SaveRequest;->loc:Landroid/location/Location;

    .line 1582
    iput p5, v0, Lcom/android/camera/Camera$SaveRequest;->width:I

    .line 1583
    iput p6, v0, Lcom/android/camera/Camera$SaveRequest;->height:I

    .line 1584
    iput p7, v0, Lcom/android/camera/Camera$SaveRequest;->thumbnailWidth:I

    .line 1585
    iput p8, v0, Lcom/android/camera/Camera$SaveRequest;->orientation:I

    .line 1586
    monitor-enter p0

    .line 1587
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 1589
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1590
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1581
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1594
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1596
    monitor-exit p0

    .line 1597
    return-void

    .line 1596
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 1647
    monitor-enter p0

    .line 1648
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageSaver;->mStop:Z

    .line 1649
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1650
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1656
    :goto_0
    return-void

    .line 1650
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1653
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 1604
    :goto_0
    monitor-enter p0

    .line 1605
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1606
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1610
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    return-void

    .line 1613
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1617
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1620
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1619
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/Camera$SaveRequest;

    .line 1620
    .local v9, r:Lcom/android/camera/Camera$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1621
    iget-object v1, v9, Lcom/android/camera/Camera$SaveRequest;->data:[B

    iget-object v2, v9, Lcom/android/camera/Camera$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v9, Lcom/android/camera/Camera$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/camera/Camera$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v9, Lcom/android/camera/Camera$SaveRequest;->width:I

    iget v6, v9, Lcom/android/camera/Camera$SaveRequest;->height:I

    iget v7, v9, Lcom/android/camera/Camera$SaveRequest;->thumbnailWidth:I

    iget v8, v9, Lcom/android/camera/Camera$SaveRequest;->orientation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/Camera$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 1623
    monitor-enter p0

    .line 1624
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1625
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1626
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1614
    .end local v9           #r:Lcom/android/camera/Camera$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateThumbnail()V
    .locals 4

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6600(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsScreenCameraModeShowThumbnail:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$7600(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1665
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1666
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1667
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1668
    .local v0, t:Lcom/android/camera/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1669
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    if-eqz v0, :cond_0

    .line 1672
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iput-object v0, v1, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1673
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    iget-object v2, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/MaskedRotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1674
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$10700(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->setCameraThumbRotate(I)V

    goto :goto_0

    .line 1669
    .end local v0           #t:Lcom/android/camera/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 1632
    monitor-enter p0

    .line 1633
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1635
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1636
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1640
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1641
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->updateThumbnail()V

    .line 1642
    return-void

    .line 1640
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

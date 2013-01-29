.class Lcom/android/camera/PanoramaActivity$8;
.super Ljava/lang/Thread;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->saveHighResMosaic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 792
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/camera/PanoramaActivity;->access$2700(Lcom/android/camera/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 795
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoramaActivity;->generateFinalMosaic(Z)Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 797
    .local v1, jpeg:Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/camera/PanoramaActivity;->access$2700(Lcom/android/camera/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 800
    if-nez v1, :cond_0

    .line 801
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 834
    :goto_0
    return-void

    .line 797
    .end local v1           #jpeg:Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/camera/PanoramaActivity;->access$2700(Lcom/android/camera/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    .line 802
    .restart local v1       #jpeg:Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    :cond_0
    iget-boolean v5, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->isValid:Z

    if-nez v5, :cond_1

    .line 803
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 812
    :cond_1
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mUsingFrontCamera:Z
    invoke-static {v5}, Lcom/android/camera/PanoramaActivity;->access$2800(Lcom/android/camera/PanoramaActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 815
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I
    invoke-static {v5}, Lcom/android/camera/PanoramaActivity;->access$2900(Lcom/android/camera/PanoramaActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I
    invoke-static {v6}, Lcom/android/camera/PanoramaActivity;->access$3000(Lcom/android/camera/PanoramaActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v2, v5, 0x168

    .line 819
    .local v2, orientation:I
    :goto_1
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v6, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->data:[B

    iget v7, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->width:I

    iget v8, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->height:I

    #calls: Lcom/android/camera/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;
    invoke-static {v5, v6, v7, v8, v2}, Lcom/android/camera/PanoramaActivity;->access$3100(Lcom/android/camera/PanoramaActivity;[BIII)Landroid/net/Uri;

    move-result-object v4

    .line 820
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 823
    iget v5, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->height:I

    iget v6, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->width:I

    if-le v5, v6, :cond_4

    iget v5, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->width:I

    :goto_2
    int-to-double v5, v5

    iget-object v7, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    iget v7, v7, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 826
    .local v3, ratio:I
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 827
    .local v0, inSampleSize:I
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v6, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->data:[B

    invoke-static {v6, v2, v0, v4}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v6

    iput-object v6, v5, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 829
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-static {v5, v4}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 831
    .end local v0           #inSampleSize:I
    .end local v3           #ratio:I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 817
    .end local v2           #orientation:I
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I
    invoke-static {v5}, Lcom/android/camera/PanoramaActivity;->access$2900(Lcom/android/camera/PanoramaActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/PanoramaActivity$8;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I
    invoke-static {v6}, Lcom/android/camera/PanoramaActivity;->access$3000(Lcom/android/camera/PanoramaActivity;)I

    move-result v6

    add-int/2addr v5, v6

    rem-int/lit16 v2, v5, 0x168

    .restart local v2       #orientation:I
    goto :goto_1

    .line 823
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_4
    iget v5, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->height:I

    goto :goto_2
.end method

.class Lcom/android/camera/Camera$GetFacePositionTask;
.super Landroid/os/AsyncTask;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFacePositionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5691
    iput-object p1, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5691
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$GetFacePositionTask;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5691
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera$GetFacePositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/16 v12, 0x19

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5695
    :goto_0
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsSendSmileMsg:Z
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5696
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsSendSmileMsg:Z
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5697
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getFaceNumber()I

    move-result v1

    .line 5698
    .local v1, faceNum:I
    if-le v1, v11, :cond_0

    .line 5699
    const/4 v1, 0x3

    .line 5701
    :cond_0
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/Camera;->access$13408(Lcom/android/camera/Camera;)I

    .line 5702
    if-lez v1, :cond_5

    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSmileFaceTime:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$13400(Lcom/android/camera/Camera;)I

    move-result v6

    if-le v6, v11, :cond_5

    .line 5703
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5704
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1b

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5705
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 5706
    new-array v2, v10, [I

    .line 5707
    .local v2, facePosition:[I
    new-array v0, v10, [I

    .line 5708
    .local v0, faceArea:[I
    const/4 v6, 0x4

    new-array v5, v6, [I

    .line 5709
    .local v5, posArray:[I
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6, v3}, Lcom/android/camera/CameraManager$CameraProxy;->getFacePosArray(I)[I

    move-result-object v2

    .line 5710
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6, v3}, Lcom/android/camera/CameraManager$CameraProxy;->getFaceAreaArray(I)[I

    move-result-object v0

    .line 5711
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 5712
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mConfiguration_orientation:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$13500(Lcom/android/camera/Camera;)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 5713
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreviewWidth:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$13600(Lcom/android/camera/Camera;)I

    move-result v6

    aget v7, v2, v8

    sub-int/2addr v6, v7

    aget v7, v0, v8

    sub-int/2addr v6, v7

    aput v6, v5, v9

    .line 5714
    aget v6, v2, v9

    aput v6, v5, v8

    .line 5715
    aget v6, v5, v9

    aget v7, v0, v8

    add-int/2addr v6, v7

    aput v6, v5, v10

    .line 5716
    aget v6, v5, v8

    aget v7, v0, v9

    add-int/2addr v6, v7

    aput v6, v5, v11

    .line 5723
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 5724
    .local v4, msg:Landroid/os/Message;
    const/16 v6, 0x17

    iput v6, v4, Landroid/os/Message;->what:I

    .line 5725
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 5726
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5727
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5730
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    const-wide/16 v6, 0x78

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5705
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5718
    :cond_2
    aget v6, v2, v9

    aput v6, v5, v9

    .line 5719
    aget v6, v2, v8

    aput v6, v5, v8

    .line 5720
    aget v6, v5, v9

    aget v7, v0, v9

    add-int/2addr v6, v7

    aput v6, v5, v10

    .line 5721
    aget v6, v5, v8

    aget v7, v0, v8

    add-int/2addr v6, v7

    aput v6, v5, v11

    goto :goto_2

    .line 5735
    .end local v0           #faceArea:[I
    .end local v2           #facePosition:[I
    .end local v5           #posArray:[I
    :cond_3
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5741
    .end local v1           #faceNum:I
    .end local v3           #i:I
    :cond_4
    :goto_4
    const-wide/16 v6, 0xc8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5742
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 5737
    .restart local v1       #faceNum:I
    :cond_5
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 5746
    .end local v1           #faceNum:I
    :cond_6
    iget-object v6, p0, Lcom/android/camera/Camera$GetFacePositionTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5747
    const/4 v6, 0x0

    return-object v6

    .line 5731
    .restart local v0       #faceArea:[I
    .restart local v1       #faceNum:I
    .restart local v2       #facePosition:[I
    .restart local v3       #i:I
    .restart local v5       #posArray:[I
    :catch_1
    move-exception v6

    goto :goto_3
.end method

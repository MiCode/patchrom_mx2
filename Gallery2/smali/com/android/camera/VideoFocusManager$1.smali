.class Lcom/android/camera/VideoFocusManager$1;
.super Ljava/lang/Object;
.source "VideoFocusManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoFocusManager;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoFocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 599
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 22
    .parameter "event"

    .prologue
    .line 533
    const/4 v4, 0x0

    .line 534
    .local v4, isDetection:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager$Listener;->getIsMediaRecorderRecording()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager$Listener;->getCameraId()I

    move-result v17

    sget v18, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX_BACK:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager$Listener;->getIsMeizuVideoRecord()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager$Listener;->getIsForbitAutoFocus()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager;->mListener:Lcom/android/camera/VideoFocusManager$Listener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager$Listener;->getIsCanNextFocus()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 537
    const/4 v4, 0x1

    .line 539
    :cond_0
    if-eqz v4, :cond_6

    .line 540
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v6, v17, v18

    .line 541
    .local v6, sensorValueX:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v7, v17, v18

    .line 542
    .local v7, sensorValueY:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v8, v17, v18

    .line 544
    .local v8, sensorValueZ:F
    const-wide/16 v2, 0x0

    .line 546
    .local v2, appliedAcceleration:D
    const v17, 0x411ce80a

    div-float v17, v6, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    .line 548
    .local v11, x:D
    add-double/2addr v2, v11

    .line 550
    const v17, 0x411ce80a

    div-float v17, v7, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    .line 552
    .local v13, y:D
    add-double/2addr v2, v13

    .line 554
    const v17, 0x411ce80a

    div-float v17, v8, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    .line 556
    .local v15, z:D
    add-double/2addr v2, v15

    .line 558
    const-wide v17, 0x408f400000000000L

    mul-double v17, v17, v2

    move-wide/from16 v0, v17

    double-to-int v9, v0

    .line 559
    .local v9, value:I
    const/high16 v17, 0x4120

    sub-float v17, v17, v8

    const/high16 v18, 0x447a

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v10, v0

    .line 561
    .local v10, valueZ:I
    const/16 v5, 0x40d8

    .line 562
    .local v5, lockValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/camera/VideoFocusManager;->mOrientation:I
    invoke-static/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager;->access$100(Lcom/android/camera/VideoFocusManager;)I

    move-result v17

    const/16 v18, 0xb4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/camera/VideoFocusManager;->mOrientation:I
    invoke-static/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager;->access$100(Lcom/android/camera/VideoFocusManager;)I

    move-result v17

    const/16 v18, 0x168

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 563
    :cond_1
    const/16 v5, 0x4268

    .line 566
    :cond_2
    if-le v10, v5, :cond_7

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/camera/VideoFocusManager;->mIsLockDetectionOrientation:Z
    invoke-static/range {v17 .. v18}, Lcom/android/camera/VideoFocusManager;->access$202(Lcom/android/camera/VideoFocusManager;Z)Z

    .line 572
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/camera/VideoFocusManager;->mIsDetection:Z
    invoke-static/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager;->access$300(Lcom/android/camera/VideoFocusManager;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/camera/VideoFocusManager;->mPreAccValue:I
    invoke-static/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager;->access$400(Lcom/android/camera/VideoFocusManager;)I

    move-result v17

    sub-int v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/camera/VideoFocusManager;->mIsDetection:Z
    invoke-static/range {v17 .. v18}, Lcom/android/camera/VideoFocusManager;->access$302(Lcom/android/camera/VideoFocusManager;Z)Z

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/camera/VideoFocusManager;->mAccCount:I
    invoke-static/range {v17 .. v18}, Lcom/android/camera/VideoFocusManager;->access$502(Lcom/android/camera/VideoFocusManager;I)I

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    #setter for: Lcom/android/camera/VideoFocusManager;->mTimer:J
    invoke-static/range {v17 .. v19}, Lcom/android/camera/VideoFocusManager;->access$602(Lcom/android/camera/VideoFocusManager;J)J

    .line 578
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/camera/VideoFocusManager;->mIsDetection:Z
    invoke-static/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager;->access$300(Lcom/android/camera/VideoFocusManager;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/camera/VideoFocusManager;->mPreAccValue:I
    invoke-static/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager;->access$400(Lcom/android/camera/VideoFocusManager;)I

    move-result v17

    sub-int v17, v17, v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/camera/VideoFocusManager;->mAccCount:I
    invoke-static/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager;->access$500(Lcom/android/camera/VideoFocusManager;)I

    move-result v17

    if-nez v17, :cond_4

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    #setter for: Lcom/android/camera/VideoFocusManager;->mTimer:J
    invoke-static/range {v17 .. v19}, Lcom/android/camera/VideoFocusManager;->access$602(Lcom/android/camera/VideoFocusManager;J)J

    .line 583
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager;->access$508(Lcom/android/camera/VideoFocusManager;)I

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v19, v0

    #getter for: Lcom/android/camera/VideoFocusManager;->mTimer:J
    invoke-static/range {v19 .. v19}, Lcom/android/camera/VideoFocusManager;->access$600(Lcom/android/camera/VideoFocusManager;)J

    move-result-wide v19

    sub-long v17, v17, v19

    const-wide/16 v19, 0x3e8

    cmp-long v17, v17, v19

    if-lez v17, :cond_5

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/camera/VideoFocusManager;->mIsDetection:Z
    invoke-static/range {v17 .. v18}, Lcom/android/camera/VideoFocusManager;->access$302(Lcom/android/camera/VideoFocusManager;Z)Z

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    #calls: Lcom/android/camera/VideoFocusManager;->autoFocus()V
    invoke-static/range {v17 .. v17}, Lcom/android/camera/VideoFocusManager;->access$700(Lcom/android/camera/VideoFocusManager;)V

    .line 592
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/android/camera/VideoFocusManager;->mPreAccValue:I
    invoke-static {v0, v9}, Lcom/android/camera/VideoFocusManager;->access$402(Lcom/android/camera/VideoFocusManager;I)I

    .line 594
    .end local v2           #appliedAcceleration:D
    .end local v5           #lockValue:I
    .end local v6           #sensorValueX:F
    .end local v7           #sensorValueY:F
    .end local v8           #sensorValueZ:F
    .end local v9           #value:I
    .end local v10           #valueZ:I
    .end local v11           #x:D
    .end local v13           #y:D
    .end local v15           #z:D
    :cond_6
    return-void

    .line 569
    .restart local v2       #appliedAcceleration:D
    .restart local v5       #lockValue:I
    .restart local v6       #sensorValueX:F
    .restart local v7       #sensorValueY:F
    .restart local v8       #sensorValueZ:F
    .restart local v9       #value:I
    .restart local v10       #valueZ:I
    .restart local v11       #x:D
    .restart local v13       #y:D
    .restart local v15       #z:D
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/camera/VideoFocusManager;->mIsLockDetectionOrientation:Z
    invoke-static/range {v17 .. v18}, Lcom/android/camera/VideoFocusManager;->access$202(Lcom/android/camera/VideoFocusManager;Z)Z

    goto/16 :goto_0

    .line 589
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoFocusManager$1;->this$0:Lcom/android/camera/VideoFocusManager;

    move-object/from16 v18, v0

    #getter for: Lcom/android/camera/VideoFocusManager;->mTimer:J
    invoke-static/range {v18 .. v18}, Lcom/android/camera/VideoFocusManager;->access$600(Lcom/android/camera/VideoFocusManager;)J

    move-result-wide v18

    const-wide/16 v20, 0x64

    add-long v18, v18, v20

    #setter for: Lcom/android/camera/VideoFocusManager;->mTimer:J
    invoke-static/range {v17 .. v19}, Lcom/android/camera/VideoFocusManager;->access$602(Lcom/android/camera/VideoFocusManager;J)J

    goto :goto_1
.end method

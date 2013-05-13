.class Lcom/android/camera/FocusManager$1;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FocusManager;


# direct methods
.method constructor <init>(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 820
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19
    .parameter "event"

    .prologue
    .line 765
    const/4 v3, 0x0

    .line 766
    .local v3, isDetection:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    #calls: Lcom/android/camera/FocusManager;->forbitAutoFocus()Z
    invoke-static {v15}, Lcom/android/camera/FocusManager;->access$200(Lcom/android/camera/FocusManager;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 767
    const/4 v3, 0x1

    .line 770
    :cond_0
    if-eqz v3, :cond_4

    .line 771
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v4, v15, v16

    .line 772
    .local v4, sensorValueX:F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v5, v15, v16

    .line 773
    .local v5, sensorValueY:F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v6, v15, v16

    .line 775
    .local v6, sensorValueZ:F
    const-wide/16 v1, 0x0

    .line 776
    .local v1, appliedAcceleration:D
    const v15, 0x411ce80a

    div-float v15, v4, v15

    float-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    .line 778
    .local v9, x:D
    add-double/2addr v1, v9

    .line 780
    const v15, 0x411ce80a

    div-float v15, v5, v15

    float-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    .line 782
    .local v11, y:D
    add-double/2addr v1, v11

    .line 784
    const v15, 0x411ce80a

    div-float v15, v6, v15

    float-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    .line 786
    .local v13, z:D
    add-double/2addr v1, v13

    .line 788
    const-wide v15, 0x408f400000000000L

    mul-double/2addr v15, v1

    double-to-int v8, v15

    .line 789
    .local v8, value:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mPreAccValue:I
    invoke-static {v15}, Lcom/android/camera/FocusManager;->access$900(Lcom/android/camera/FocusManager;)I

    move-result v15

    sub-int v15, v8, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 791
    .local v7, v:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mIsDetection:Z
    invoke-static {v15}, Lcom/android/camera/FocusManager;->access$1000(Lcom/android/camera/FocusManager;)Z

    move-result v15

    if-nez v15, :cond_1

    const/16 v15, 0x64

    if-le v7, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mPreAccValue:I
    invoke-static {v15}, Lcom/android/camera/FocusManager;->access$900(Lcom/android/camera/FocusManager;)I

    move-result v15

    if-eqz v15, :cond_1

    .line 792
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    const/16 v16, 0x1

    #setter for: Lcom/android/camera/FocusManager;->mIsDetection:Z
    invoke-static/range {v15 .. v16}, Lcom/android/camera/FocusManager;->access$1002(Lcom/android/camera/FocusManager;Z)Z

    .line 793
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    const/16 v16, 0x0

    #setter for: Lcom/android/camera/FocusManager;->mAccCount:I
    invoke-static/range {v15 .. v16}, Lcom/android/camera/FocusManager;->access$1102(Lcom/android/camera/FocusManager;I)I

    .line 794
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    const-wide/16 v16, 0x0

    #setter for: Lcom/android/camera/FocusManager;->mTimer:J
    invoke-static/range {v15 .. v17}, Lcom/android/camera/FocusManager;->access$1202(Lcom/android/camera/FocusManager;J)J

    .line 798
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mIsDetection:Z
    invoke-static {v15}, Lcom/android/camera/FocusManager;->access$1000(Lcom/android/camera/FocusManager;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 799
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mPreAccValue:I
    invoke-static {v15}, Lcom/android/camera/FocusManager;->access$900(Lcom/android/camera/FocusManager;)I

    move-result v15

    sub-int/2addr v15, v8

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    const/16 v16, 0x32

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 800
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mAccCount:I
    invoke-static {v15}, Lcom/android/camera/FocusManager;->access$1100(Lcom/android/camera/FocusManager;)I

    move-result v15

    if-nez v15, :cond_2

    .line 801
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    #setter for: Lcom/android/camera/FocusManager;->mTimer:J
    invoke-static/range {v15 .. v17}, Lcom/android/camera/FocusManager;->access$1202(Lcom/android/camera/FocusManager;J)J

    .line 803
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    invoke-static {v15}, Lcom/android/camera/FocusManager;->access$1108(Lcom/android/camera/FocusManager;)I

    .line 804
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/camera/FocusManager;->mTimer:J
    invoke-static/range {v17 .. v17}, Lcom/android/camera/FocusManager;->access$1200(Lcom/android/camera/FocusManager;)J

    move-result-wide v17

    sub-long v15, v15, v17

    const-wide/16 v17, 0x12c

    cmp-long v15, v15, v17

    if-lez v15, :cond_3

    .line 806
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    invoke-virtual {v15}, Lcom/android/camera/FocusManager;->autoFocus()V

    .line 813
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    #setter for: Lcom/android/camera/FocusManager;->mPreAccValue:I
    invoke-static {v15, v8}, Lcom/android/camera/FocusManager;->access$902(Lcom/android/camera/FocusManager;I)I

    .line 815
    .end local v1           #appliedAcceleration:D
    .end local v4           #sensorValueX:F
    .end local v5           #sensorValueY:F
    .end local v6           #sensorValueZ:F
    .end local v7           #v:I
    .end local v8           #value:I
    .end local v9           #x:D
    .end local v11           #y:D
    .end local v13           #z:D
    :cond_4
    return-void

    .line 809
    .restart local v1       #appliedAcceleration:D
    .restart local v4       #sensorValueX:F
    .restart local v5       #sensorValueY:F
    .restart local v6       #sensorValueZ:F
    .restart local v7       #v:I
    .restart local v8       #value:I
    .restart local v9       #x:D
    .restart local v11       #y:D
    .restart local v13       #z:D
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/FocusManager$1;->this$0:Lcom/android/camera/FocusManager;

    const/16 v16, 0x0

    #setter for: Lcom/android/camera/FocusManager;->mAccCount:I
    invoke-static/range {v15 .. v16}, Lcom/android/camera/FocusManager;->access$1102(Lcom/android/camera/FocusManager;I)I

    goto :goto_0
.end method

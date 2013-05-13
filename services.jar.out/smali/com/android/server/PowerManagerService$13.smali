.class Lcom/android/server/PowerManagerService$13;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4214
    iput-object p1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 4238
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4216
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3

    .line 4217
    :try_start_0
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 4220
    .local v1, distance:F
    float-to-double v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    const/high16 v4, 0x40a0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 4223
    .local v0, active:Z
    :goto_0
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mProximityListenerForLightSensor is Active ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    if-eqz v0, :cond_2

    .line 4226
    iget-object v2, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIphone5PolicyScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIphone5PolicyScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4227
    iget-object v2, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIphone5PolicyScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->resetAnimation()V

    .line 4229
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mIsProximityActived:Z
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$7502(Lcom/android/server/PowerManagerService;Z)Z

    .line 4233
    :goto_1
    monitor-exit v3

    .line 4234
    return-void

    .end local v0           #active:Z
    :cond_1
    move v0, v2

    .line 4220
    goto :goto_0

    .line 4231
    .restart local v0       #active:Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mIsProximityActived:Z
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$7502(Lcom/android/server/PowerManagerService;Z)Z

    goto :goto_1

    .line 4233
    .end local v0           #active:Z
    .end local v1           #distance:F
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

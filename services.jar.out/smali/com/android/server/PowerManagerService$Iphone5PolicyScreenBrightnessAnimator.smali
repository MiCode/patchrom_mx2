.class Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Iphone5PolicyScreenBrightnessAnimator"
.end annotation


# static fields
.field static final ANIMATE_LIGHTS:I = 0xa

.field static final ANIMATE_POWER_OFF:I = 0xb


# instance fields
.field private cancel:Z

.field private currentMask:I

.field volatile currentValue:I

.field private delayValue:I

.field private duration:I

.field volatile endValue:I

.field private final prefix:Ljava/lang/String;

.field private startTimeMillis:J

.field volatile startValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 2630
    iput-object p1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    .line 2631
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->cancel:Z

    .line 2632
    iput-object p2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->prefix:Ljava/lang/String;

    .line 2633
    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2617
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->cancel:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2617
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->animateInternal(IZI)V

    return-void
.end method

.method private animateInternal(IZI)V
    .locals 5
    .parameter "mask"
    .parameter "turningOff"
    .parameter "delay"

    .prologue
    .line 2677
    monitor-enter p0

    .line 2678
    :try_start_0
    iget v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    iget v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->endValue:I

    if-ge v2, v3, :cond_2

    .line 2679
    iget v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    .line 2684
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    .line 2694
    .local v1, newValue:I
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->cancel:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsProximityActived:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2695
    iget-object v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIphon5PolicyBrightnessHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2697
    iget-object v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIphon5PolicyBrightnessHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2699
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIphon5PolicyBrightnessHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->delayValue:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2701
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit p0

    .line 2702
    return-void

    .line 2680
    .end local v1           #newValue:I
    :cond_2
    iget v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    iget v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->endValue:I

    if-le v2, v3, :cond_0

    .line 2681
    iget v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    goto :goto_0

    .line 2701
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public animateTo(III)V
    .locals 1
    .parameter "target"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->animateTo(IIII)V

    .line 2715
    return-void
.end method

.method public animateTo(IIII)V
    .locals 3
    .parameter "target"
    .parameter "sensorTarget"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    .line 2718
    monitor-enter p0

    .line 2719
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->startValue:I

    iput v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    .line 2720
    iput p1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->endValue:I

    .line 2721
    iput p3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentMask:I

    .line 2722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->cancel:Z

    .line 2723
    iput p4, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->duration:I

    .line 2724
    iget v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->endValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->startValue:I

    if-eq v0, v1, :cond_1

    .line 2725
    iget v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->duration:I

    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->endValue:I

    iget v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->startValue:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->delayValue:I

    .line 2729
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->startTimeMillis:J

    .line 2738
    iget v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    if-eq p1, v0, :cond_0

    .line 2739
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->animateInternal(IZI)V

    .line 2741
    :cond_0
    monitor-exit p0

    .line 2742
    return-void

    .line 2727
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->delayValue:I

    goto :goto_0

    .line 2741
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelAnimation()V
    .locals 3

    .prologue
    .line 2775
    iget v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentMask:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->animateTo(III)V

    .line 2776
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "string"

    .prologue
    .line 2705
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  animating: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->startValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->endValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startTimeMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentMask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentMask:I

    #calls: Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6900(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2711
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v0

    return v0
.end method

.method public goFast()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 2764
    monitor-enter p0

    .line 2765
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->delayValue:I

    if-le v0, v1, :cond_0

    .line 2766
    iget v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->delayValue:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->delayValue:I

    .line 2768
    iget v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->delayValue:I

    if-ge v0, v1, :cond_0

    .line 2769
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->delayValue:I

    .line 2771
    :cond_0
    monitor-exit p0

    .line 2772
    return-void

    .line 2771
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAnimating()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2749
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->cancel:Z

    if-eqz v1, :cond_0

    .line 2753
    :goto_0
    return v0

    .line 2752
    :cond_0
    monitor-enter p0

    .line 2753
    :try_start_0
    iget v1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->currentValue:I

    iget v2, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->endValue:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2754
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;-><init>(Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;)V

    #setter for: Lcom/android/server/PowerManagerService;->mIphon5PolicyBrightnessHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$7102(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2670
    monitor-enter p0

    .line 2671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mInitComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$6602(Lcom/android/server/PowerManagerService;Z)Z

    .line 2672
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2673
    monitor-exit p0

    .line 2674
    return-void

    .line 2673
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAnimation()V
    .locals 1

    .prologue
    .line 2758
    monitor-enter p0

    .line 2759
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->cancel:Z

    .line 2760
    monitor-exit p0

    .line 2761
    return-void

    .line 2760
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

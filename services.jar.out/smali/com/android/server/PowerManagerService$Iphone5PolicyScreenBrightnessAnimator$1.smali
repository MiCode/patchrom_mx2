.class Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 2637
    iput-object p1, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 2639
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    #getter for: Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->cancel:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->access$7200(Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2668
    :cond_0
    :goto_0
    return-void

    .line 2642
    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget-object v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget-object v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2645
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget-object v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2648
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget-object v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2652
    const/4 v0, 0x1

    .line 2653
    .local v0, brightnessMode:I
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 2654
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2655
    .local v1, mask:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2656
    .local v2, value:I
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    .line 2657
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget-object v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2658
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget-object v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2659
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget-object v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I
    invoke-static {v3, v2}, Lcom/android/server/PowerManagerService;->access$6102(Lcom/android/server/PowerManagerService;I)I

    .line 2660
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget-object v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v3, v2}, Lcom/android/server/PowerManagerService;->access$6202(Lcom/android/server/PowerManagerService;I)I

    .line 2661
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget-object v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I
    invoke-static {v3, v2}, Lcom/android/server/PowerManagerService;->access$2102(Lcom/android/server/PowerManagerService;I)I

    .line 2664
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    iget v3, v3, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->endValue:I

    if-eq v2, v3, :cond_0

    .line 2665
    iget-object v3, p0, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;

    #calls: Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->animateInternal(IZI)V
    invoke-static {v3, v1, v5, v5}, Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;->access$7400(Lcom/android/server/PowerManagerService$Iphone5PolicyScreenBrightnessAnimator;IZI)V

    goto :goto_0
.end method

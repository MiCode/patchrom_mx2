.class final Lcom/android/camera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 9
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x12c

    .line 1438
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusStartTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$9200(Lcom/android/camera/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/Camera;->mAutoFocusTime:J

    .line 1447
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v2, v2, Lcom/android/camera/Camera;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v0, v8}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;I)V

    .line 1449
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManager;->onAutoFocus(Z)V

    .line 1450
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsShutterLongPressedFocusFinished:Z
    invoke-static {v0, v8}, Lcom/android/camera/Camera;->access$9302(Lcom/android/camera/Camera;Z)Z

    .line 1451
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$7700(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z
    invoke-static {v0, v7}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;Z)Z

    .line 1453
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsShutterLongPressedSnapShot:Z
    invoke-static {v0, v7}, Lcom/android/camera/Camera;->access$7702(Lcom/android/camera/Camera;Z)Z

    .line 1454
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mClearHoldFocusRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$9400(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1455
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mClearHoldFocusRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$9400(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1456
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$9500(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1457
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$9500(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1459
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsNormalSnapShot:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$7800(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterUpRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$9600(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1461
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterUpRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$9600(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1462
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$9500(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1463
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$9500(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

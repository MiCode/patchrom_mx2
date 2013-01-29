.class final Lcom/android/camera/Camera$ShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1282
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/Camera;->access$7102(Lcom/android/camera/Camera;J)J

    .line 1287
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/android/camera/Camera;->access$7100(Lcom/android/camera/Camera;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v3, v3, Lcom/android/camera/Camera;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/Camera;->mShutterLag:J

    .line 1288
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v2, v2, Lcom/android/camera/Camera;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    return-void
.end method

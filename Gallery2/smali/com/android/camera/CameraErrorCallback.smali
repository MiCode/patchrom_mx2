.class public Lcom/android/camera/CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraErrorCallback$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/CameraErrorCallback$Listener;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraErrorCallback$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/CameraErrorCallback;->mListener:Lcom/android/camera/CameraErrorCallback$Listener;

    .line 36
    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 40
    const-string v0, "CameraErrorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got camera error callback. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Media server died."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    const/16 v0, -0x26

    if-ne p1, v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mListener:Lcom/android/camera/CameraErrorCallback$Listener;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mListener:Lcom/android/camera/CameraErrorCallback$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraErrorCallback$Listener;->takePictureFail()V

    .line 51
    const-string v0, "CameraErrorCallback"

    const-string v1, "Take picture fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    return-void
.end method

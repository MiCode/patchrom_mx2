.class Lcom/android/camera/Camera$12;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->capture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/android/camera/Camera$12;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/camera/Camera$12;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget-object v1, p0, Lcom/android/camera/Camera$12;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->getCameraRotation()I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$11200(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 1948
    return-void
.end method

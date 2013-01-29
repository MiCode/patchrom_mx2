.class Lcom/android/camera/Camera$17;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onResume()V
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
    .line 3763
    iput-object p1, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/Camera;->firstPrepareCaptureModeUI(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$12400(Lcom/android/camera/Camera;Z)V

    .line 3766
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->updateFlashLightUI()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$12500(Lcom/android/camera/Camera;)V

    .line 3767
    return-void
.end method

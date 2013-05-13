.class Lcom/android/camera/Camera$16;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onSwitchCameraClicked(Landroid/view/View;)V
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
    .line 3510
    iput-object p1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$10900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 3514
    return-void
.end method

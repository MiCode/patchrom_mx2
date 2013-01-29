.class Lcom/android/camera/Camera$14;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V
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
    .line 2874
    iput-object p1, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraControl:Lcom/android/camera/ui/ControlPanelLayout;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$11700(Lcom/android/camera/Camera;)Lcom/android/camera/ui/ControlPanelLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->checkViewVISIBLE(Landroid/view/View;)Z

    .line 2878
    return-void
.end method

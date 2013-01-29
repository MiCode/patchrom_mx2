.class Lcom/android/camera/VideoCamera$7;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/camera/VideoCamera$7;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/camera/VideoCamera$7;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mVideoControlPaneLayout:Lcom/android/camera/ui/ControlPanelLayout;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$4000(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/ControlPanelLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->checkViewVISIBLE(Landroid/view/View;)Z

    .line 1087
    return-void
.end method

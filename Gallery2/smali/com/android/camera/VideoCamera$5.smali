.class Lcom/android/camera/VideoCamera$5;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
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
    .line 500
    iput-object p1, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 503
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->isMeizuSystemCaptureIntent()Z
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$2600(Lcom/android/camera/VideoCamera;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIsLockViewIntent:Z
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$2700(Lcom/android/camera/VideoCamera;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v2}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 508
    .local v1, win:Landroid/view/Window;
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 512
    .end local v1           #win:Landroid/view/Window;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIsLockView:Z
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$2800(Lcom/android/camera/VideoCamera;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v2}, Lcom/android/camera/VideoCamera;->finish()V

    .line 515
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIsGotoGallery:Z
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$1700(Lcom/android/camera/VideoCamera;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$1800(Lcom/android/camera/VideoCamera;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z
    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 517
    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v2}, Lcom/android/camera/VideoCamera;->finish()V

    .line 520
    :cond_3
    return-void
.end method

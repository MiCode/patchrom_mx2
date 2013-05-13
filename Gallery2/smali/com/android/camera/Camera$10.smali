.class Lcom/android/camera/Camera$10;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
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
    .line 1366
    iput-object p1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1369
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1370
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1371
    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$7000(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsLockViewIntent:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$7100(Lcom/android/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1373
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1374
    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->releaseLightScreen()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$7200(Lcom/android/camera/Camera;)V

    .line 1378
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsLockView:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$7300(Lcom/android/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1379
    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->finish()V

    .line 1384
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_3

    .line 1385
    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/Camera;->mIsPowerPressed:Z
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$5402(Lcom/android/camera/Camera;Z)Z

    .line 1391
    :cond_3
    :goto_0
    return-void

    .line 1388
    :cond_4
    const-string v1, "android.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1389
    iget-object v1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/Camera;->mIsPowerPressed:Z
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$5402(Lcom/android/camera/Camera;Z)Z

    goto :goto_0
.end method

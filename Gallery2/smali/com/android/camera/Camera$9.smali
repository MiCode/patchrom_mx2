.class Lcom/android/camera/Camera$9;
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
    .line 1235
    iput-object p1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1240
    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isMeizuSystemCaptureIntent()Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6700(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsLockViewIntent:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6800(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    :cond_0
    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1243
    .local v1, win:Landroid/view/Window;
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1244
    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->releaseLightScreen()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6900(Lcom/android/camera/Camera;)V

    .line 1248
    .end local v1           #win:Landroid/view/Window;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsLockView:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$7000(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1249
    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    .line 1254
    :cond_2
    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsCall_State_OffHook:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4400(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1255
    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/Camera;->mIsPowerPressed:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$5202(Lcom/android/camera/Camera;Z)Z

    .line 1261
    :cond_3
    :goto_0
    return-void

    .line 1258
    :cond_4
    const-string v2, "android.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1259
    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/Camera;->mIsPowerPressed:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$5202(Lcom/android/camera/Camera;Z)Z

    goto :goto_0
.end method

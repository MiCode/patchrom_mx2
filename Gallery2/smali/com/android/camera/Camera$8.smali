.class Lcom/android/camera/Camera$8;
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
    .line 1216
    iput-object p1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1220
    .local v0, action:Ljava/lang/String;
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->checkStorage()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6500(Lcom/android/camera/Camera;)V

    .line 1231
    :cond_1
    :goto_0
    return-void

    .line 1225
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1226
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->checkStorage()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6500(Lcom/android/camera/Camera;)V

    .line 1227
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsMeizuCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6600(Lcom/android/camera/Camera;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->isThirdPartyUseCamera(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getLastThumbnail()V

    goto :goto_0
.end method

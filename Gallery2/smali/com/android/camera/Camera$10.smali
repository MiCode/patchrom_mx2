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
    .line 1264
    iput-object p1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1269
    iget-object v2, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->checkIsLowBattery(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    iget-object v2, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    const-string v2, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1273
    const-string v2, "multimedia.hdmi.status"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1274
    .local v1, s:Ljava/lang/String;
    const-string v2, "available"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1275
    iget-object v2, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    const v3, 0x7f0a00bb

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1276
    iget-object v2, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

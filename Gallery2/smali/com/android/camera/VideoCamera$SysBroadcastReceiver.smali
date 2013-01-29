.class Lcom/android/camera/VideoCamera$SysBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SysBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 517
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v2}, Lcom/android/camera/Util;->checkIsLowBattery(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v2}, Lcom/android/camera/VideoCamera;->finish()V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    const-string v2, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    const-string v2, "multimedia.hdmi.status"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, s:Ljava/lang/String;
    const-string v2, "available"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    const v3, 0x7f0a00bb

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 526
    iget-object v2, p0, Lcom/android/camera/VideoCamera$SysBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v2}, Lcom/android/camera/VideoCamera;->finish()V

    goto :goto_0
.end method

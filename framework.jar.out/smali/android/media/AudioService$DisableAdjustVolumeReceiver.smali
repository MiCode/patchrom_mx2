.class Landroid/media/AudioService$DisableAdjustVolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableAdjustVolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 4481
    iput-object p1, p0, Landroid/media/AudioService$DisableAdjustVolumeReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4481
    invoke-direct {p0, p1}, Landroid/media/AudioService$DisableAdjustVolumeReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4483
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4484
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.meizu.flyme.service.enable_vol_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4485
    const-string v1, "AudioTest"

    const-string/jumbo v2, "receive enable vol key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    iget-object v1, p0, Landroid/media/AudioService$DisableAdjustVolumeReceiver;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mDisableAdjustVolume:Z
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$8802(Landroid/media/AudioService;Z)Z

    .line 4492
    :cond_0
    :goto_0
    return-void

    .line 4488
    :cond_1
    const-string v1, "com.meizu.flyme.service.disable_vol_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4489
    const-string v1, "AudioTest"

    const-string/jumbo v2, "receive disable vol key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    iget-object v1, p0, Landroid/media/AudioService$DisableAdjustVolumeReceiver;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #setter for: Landroid/media/AudioService;->mDisableAdjustVolume:Z
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$8802(Landroid/media/AudioService;Z)Z

    goto :goto_0
.end method

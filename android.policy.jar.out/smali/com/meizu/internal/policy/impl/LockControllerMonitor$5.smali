.class Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;
.super Landroid/content/BroadcastReceiver;
.source "LockControllerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/LockControllerMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x12d

    const/4 v4, 0x0

    .line 497
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 500
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 517
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 503
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    const-string v3, "com.android.music"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 509
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPlaying:Z
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 510
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 511
    :cond_2
    const-string v3, "com.meizu.musiconline"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsOnlineMusicPlaying:Z
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 513
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    sget-object v4, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSIC_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->listenMusicAppChanged(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    .line 514
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$5;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.class Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;
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
    .line 376
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x12f

    const/16 v6, 0x12e

    const/16 v5, 0x12d

    const/16 v4, 0x12c

    const/4 v3, 0x0

    .line 379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mArtistName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "playing"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPlaying:Z
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 389
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const-string v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mArtistName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "playing"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPlaying:Z
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 396
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 397
    :cond_2
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mArtistName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "playing"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPlaying:Z
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 402
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPlaying:Z
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3300(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSIC_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->listenMusicAppChanged(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    .line 405
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 406
    :cond_4
    const-string v1, "com.android.music.name_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 409
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mArtistName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$202(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "playing"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPlaying:Z
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3302(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 412
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 413
    :cond_5
    const-string v1, "com.android.musiconline.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 415
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineArtistName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineMusicName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$402(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "playing"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsOnlineMusicPlaying:Z
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 418
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 419
    :cond_6
    const-string v1, "com.android.musiconline.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 420
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineArtistName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineMusicName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$402(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "playing"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsOnlineMusicPlaying:Z
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 423
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsOnlineMusicPlaying:Z
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3500(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 424
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSICONLINE_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    #calls: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->listenMusicAppChanged(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3400(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    .line 426
    :cond_7
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 428
    :cond_8
    const-string v1, "com.android.musiconline.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 430
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineArtistName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineMusicName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$402(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "playing"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsOnlineMusicPlaying:Z
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 433
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 435
    :cond_9
    const-string v1, "com.android.musiconline.name_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 437
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineArtistName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mOnlineMusicName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$402(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "playing"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsOnlineMusicPlaying:Z
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3502(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 440
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 442
    :cond_a
    const-string v1, "meizu.intent.action.phone_recorder_mode_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 443
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    const-string v2, "meizu.intent.extra.phone_recorder_mode_changed"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPhoneRecordMode:Z
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3602(Lcom/meizu/internal/policy/impl/LockControllerMonitor;Z)Z

    .line 444
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    const-string v1, "LockControllerMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive ACTION_MEIZU_PHONE_RECORDER_MODE_CHANGED, phoneState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mPhoneState:I
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$800(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneRecordMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mIsPhoneRecordMode:Z
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3600(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 479
    :cond_b
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    const-string v1, "meizu.intent.double_home_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    const-string v1, "LockControllerMonitor"

    const-string v2, "receive DOUBLE_CLICK_HOME_ACTION "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3700(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mMusicInfoCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$3700(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 499
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x13e

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->this$0:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    #getter for: Lcom/meizu/internal/policy/impl/LockControllerMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->access$100(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x13e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor$4;->abortBroadcast()V

    .line 503
    :cond_c
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

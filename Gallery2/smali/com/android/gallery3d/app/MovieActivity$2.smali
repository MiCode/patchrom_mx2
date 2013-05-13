.class Lcom/android/gallery3d/app/MovieActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 331
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieActivity;->access$100(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 332
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 335
    :cond_0
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsOnPause:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieActivity;->access$200(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 405
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    const-string v9, "android.media.audio.HEADSET_PLUG"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 338
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Landroid/media/AudioManager;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v5

    .line 339
    .local v5, volumeType:I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_4

    .line 340
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mIsHeadSetPlugIn:Z
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/MovieActivity;->access$402(Lcom/android/gallery3d/app/MovieActivity;Z)Z

    .line 344
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #calls: Lcom/android/gallery3d/app/MovieActivity;->setIsSilentMode()V
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$500(Lcom/android/gallery3d/app/MovieActivity;)V

    .line 345
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 346
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/MoviePlayer;->resetControllVolum()V

    .line 348
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$700(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 349
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$700(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/MovieMmsPlayer;->resetVolum()V

    goto :goto_0

    .line 342
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mIsHeadSetPlugIn:Z
    invoke-static {v8, v7}, Lcom/android/gallery3d/app/MovieActivity;->access$402(Lcom/android/gallery3d/app/MovieActivity;Z)Z

    goto :goto_1

    .line 351
    .end local v5           #volumeType:I
    :cond_5
    const-string v9, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 352
    const/4 v3, 0x0

    .line 353
    .local v3, isSilent:Z
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Landroid/media/AudioManager;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 354
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsHeadSetPlugIn:Z
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieActivity;->access$400(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v10

    if-nez v10, :cond_7

    :goto_2
    and-int v3, v9, v7

    .line 356
    :cond_6
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 357
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/gallery3d/app/MoviePlayer;->setIsSilentMode(Z)V

    goto :goto_0

    :cond_7
    move v7, v8

    .line 354
    goto :goto_2

    .line 359
    .end local v3           #isSilent:Z
    :cond_8
    const-string v9, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 360
    const-string v7, "MovieActivity"

    const-string v8, "ACTION_MEIZU_HDMI_STATUS_CHANGED --->"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #calls: Lcom/android/gallery3d/app/MovieActivity;->getHdmiStatus()V
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$800(Lcom/android/gallery3d/app/MovieActivity;)V

    .line 362
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 363
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/MovieActivity;->access$900(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/app/MoviePlayer;->setSpdifStatus(Z)V

    .line 364
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/MoviePlayer;->checkHdmiState()V

    .line 366
    :cond_9
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$700(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 367
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$700(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/MovieActivity;->access$900(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/app/MovieMmsPlayer;->setSpdifStatus(Z)V

    goto/16 :goto_0

    .line 369
    :cond_a
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 370
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieActivity;->access$100(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/app/MoviePlayer;->getCurrentUriIsStreamMedia()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 371
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 372
    .local v2, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 373
    .local v4, mobile:Landroid/net/NetworkInfo$State;
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 374
    .local v6, wifi:Landroid/net/NetworkInfo$State;
    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 375
    .local v1, bluetouth:Landroid/net/NetworkInfo$State;
    const-string v7, "ontouch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "video mobile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v7, "ontouch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "video wifi "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v7, "ontouch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "video bluetouth "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v7, :cond_c

    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mWifiState:Landroid/net/NetworkInfo$State;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$1000(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMobileState:Landroid/net/NetworkInfo$State;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$1100(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eq v7, v8, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mWifiState:Landroid/net/NetworkInfo$State;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$1000(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-ne v7, v6, :cond_d

    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMobileState:Landroid/net/NetworkInfo$State;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$1100(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-ne v7, v4, :cond_d

    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mBlueWifiState:Landroid/net/NetworkInfo$State;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$1200(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-ne v7, v1, :cond_d

    .line 379
    :cond_c
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mWifiState:Landroid/net/NetworkInfo$State;
    invoke-static {v7, v6}, Lcom/android/gallery3d/app/MovieActivity;->access$1002(Lcom/android/gallery3d/app/MovieActivity;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 380
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mMobileState:Landroid/net/NetworkInfo$State;
    invoke-static {v7, v4}, Lcom/android/gallery3d/app/MovieActivity;->access$1102(Lcom/android/gallery3d/app/MovieActivity;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 381
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mBlueWifiState:Landroid/net/NetworkInfo$State;
    invoke-static {v7, v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1202(Lcom/android/gallery3d/app/MovieActivity;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    goto/16 :goto_0

    .line 384
    :cond_d
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mWifiState:Landroid/net/NetworkInfo$State;
    invoke-static {v7, v6}, Lcom/android/gallery3d/app/MovieActivity;->access$1002(Lcom/android/gallery3d/app/MovieActivity;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 385
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mMobileState:Landroid/net/NetworkInfo$State;
    invoke-static {v7, v4}, Lcom/android/gallery3d/app/MovieActivity;->access$1102(Lcom/android/gallery3d/app/MovieActivity;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 386
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mBlueWifiState:Landroid/net/NetworkInfo$State;
    invoke-static {v7, v1}, Lcom/android/gallery3d/app/MovieActivity;->access$1202(Lcom/android/gallery3d/app/MovieActivity;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 388
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_10

    .line 389
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/MoviePlayer;->getIsPrepareFinish()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 390
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 392
    :cond_e
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsOnlyUseWifi:Z
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$1300(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 393
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    sget-object v8, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->ONLY_WIFI:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    #calls: Lcom/android/gallery3d/app/MovieActivity;->showNetworkAlertDialog(Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/MovieActivity;->access$1400(Lcom/android/gallery3d/app/MovieActivity;Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V

    goto/16 :goto_0

    .line 395
    :cond_f
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    sget-object v8, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->WIFI_MOBILE:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    #calls: Lcom/android/gallery3d/app/MovieActivity;->showNetworkAlertDialog(Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/MovieActivity;->access$1400(Lcom/android/gallery3d/app/MovieActivity;Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V

    goto/16 :goto_0

    .line 397
    :cond_10
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mWifiState:Landroid/net/NetworkInfo$State;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$1000(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_1

    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_1

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v7, :cond_1

    .line 398
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/MoviePlayer;->getIsPrepareFinish()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 399
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v7}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 401
    :cond_11
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    sget-object v8, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->NO_CONNECT:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    #calls: Lcom/android/gallery3d/app/MovieActivity;->showNetworkAlertDialog(Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/MovieActivity;->access$1400(Lcom/android/gallery3d/app/MovieActivity;Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V

    goto/16 :goto_0
.end method

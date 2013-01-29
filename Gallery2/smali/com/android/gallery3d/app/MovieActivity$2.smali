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
    .line 229
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsOnLineVideo:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$100(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsOnPause:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$200(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    const-string v2, "android.media.audio.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 243
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->resetControllVolum()V

    .line 245
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$400(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$400(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieMmsPlayer;->resetVolum()V

    goto :goto_0

    .line 248
    :cond_4
    const-string v2, "android.intent.action.MEIZU_HDMI_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 249
    const-string v2, "MovieActivity"

    const-string v3, "ACTION_MEIZU_HDMI_STATUS_CHANGED --->"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #calls: Lcom/android/gallery3d/app/MovieActivity;->getHdmiStatus()V
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$500(Lcom/android/gallery3d/app/MovieActivity;)V

    .line 251
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 252
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->setSpdifStatus(Z)V

    .line 253
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->checkHdmiState()V

    .line 255
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$400(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMmsPlayer:Lcom/android/gallery3d/app/MovieMmsPlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$400(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MovieMmsPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsHdmiOn:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/MovieMmsPlayer;->setSpdifStatus(Z)V

    goto :goto_0

    .line 258
    :cond_6
    const-string v2, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 260
    const-string v2, "renderer_count"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 261
    .local v1, cachedCount:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/MoviePlayer;->upDataDeviceList(I)V

    goto/16 :goto_0
.end method

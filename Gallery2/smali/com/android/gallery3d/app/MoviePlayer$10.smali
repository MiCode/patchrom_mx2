.class Lcom/android/gallery3d/app/MoviePlayer$10;
.super Landroid/content/BroadcastReceiver;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$10;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 828
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, action:Ljava/lang/String;
    const-string v2, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 830
    const-string v2, "renderer_count"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 831
    .local v1, count:I
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$10;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->updateDLNADevicesList()Z
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4400(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 832
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$10;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/ControllerOverlay;->hideDlnaButton()V

    .line 836
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$10;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/MoviePlayer;->upDataDeviceList(I)V

    .line 839
    .end local v1           #count:I
    :cond_1
    return-void

    .line 834
    .restart local v1       #count:I
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$10;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/ControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/ControllerOverlay;->showDlnaButton()V

    goto :goto_0
.end method

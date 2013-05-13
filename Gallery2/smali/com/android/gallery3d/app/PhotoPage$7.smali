.class Lcom/android/gallery3d/app/PhotoPage$7;
.super Landroid/content/BroadcastReceiver;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->dlnaInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 910
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, action:Ljava/lang/String;
    const-string v1, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const-string v2, "renderer_count"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mDlnaNum:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3402(Lcom/android/gallery3d/app/PhotoPage;I)I

    .line 913
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateDLNADevicesList()Z
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3600(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 915
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$3700(Lcom/android/gallery3d/app/PhotoPage;Z)V

    .line 916
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 917
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3800(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3800(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v2, 0x1

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3700(Lcom/android/gallery3d/app/PhotoPage;Z)V

    goto :goto_0
.end method

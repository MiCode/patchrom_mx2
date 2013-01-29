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
    .line 860
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 863
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, action:Ljava/lang/String;
    const-string v2, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    const-string v2, "renderer_count"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 866
    .local v1, num:I
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3100(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateDLNADevicesList()Z
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3200(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 868
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$3300(Lcom/android/gallery3d/app/PhotoPage;Z)V

    .line 869
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 870
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3400(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 871
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3400(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 877
    .end local v1           #num:I
    :cond_0
    :goto_0
    return-void

    .line 873
    .restart local v1       #num:I
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v3, 0x1

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showDlnaButton(Z)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$3300(Lcom/android/gallery3d/app/PhotoPage;Z)V

    goto :goto_0
.end method

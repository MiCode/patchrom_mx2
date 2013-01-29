.class Lcom/android/gallery3d/app/SlideshowPage$3;
.super Landroid/content/BroadcastReceiver;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage$3;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, action:Ljava/lang/String;
    const-string v2, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const-string v2, "renderer_count"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 204
    .local v1, num:I
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$3;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    #calls: Lcom/android/gallery3d/app/SlideshowPage;->updateDLNADevicesList()Z
    invoke-static {v2}, Lcom/android/gallery3d/app/SlideshowPage;->access$400(Lcom/android/gallery3d/app/SlideshowPage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$3;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    #calls: Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnPause()V
    invoke-static {v2}, Lcom/android/gallery3d/app/SlideshowPage;->access$500(Lcom/android/gallery3d/app/SlideshowPage;)V

    .line 206
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$3;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    #calls: Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnDestroy()V
    invoke-static {v2}, Lcom/android/gallery3d/app/SlideshowPage;->access$600(Lcom/android/gallery3d/app/SlideshowPage;)V

    .line 209
    .end local v1           #num:I
    :cond_0
    return-void
.end method

.class Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;
.super Landroid/os/Handler;
.source "SelectDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 721
    if-nez p1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 726
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const v2, 0x102026f

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 727
    .local v0, title:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 728
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const v2, 0x7f0c0005

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

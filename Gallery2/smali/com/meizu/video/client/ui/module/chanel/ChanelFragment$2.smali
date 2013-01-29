.class Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;
.super Landroid/os/Handler;
.source "ChanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 275
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 276
    if-nez p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->isLoading:Z
    invoke-static {v0, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$502(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Z)Z

    .line 282
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channel_progressbar_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->InitAdapter()V

    .line 284
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->setList(Ljava/util/ArrayList;)V

    .line 285
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->notifyDataSetChanged()V

    .line 286
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_network_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 295
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->InitAdapter()V

    .line 296
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->setList(Ljava/util/ArrayList;)V

    .line 297
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

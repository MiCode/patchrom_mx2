.class Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;
.super Landroid/os/Handler;
.source "ChanelDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

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

    .line 272
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 273
    if-nez p1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 276
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->isLoading:Z
    invoke-static {v0, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1202(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Z)Z

    .line 280
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->InitAdapter()V

    .line 281
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->setList(Ljava/util/ArrayList;)V

    .line 282
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalPage:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->currentChannelDetailPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->setMLastFlag(Z)V

    .line 287
    :goto_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->notifyDataSetChanged()V

    .line 288
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalPage:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v0

    if-nez v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_network_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->setMLastFlag(Z)V

    goto :goto_1

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->InitAdapter()V

    .line 301
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->setList(Ljava/util/ArrayList;)V

    .line 302
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

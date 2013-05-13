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
    .line 292
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

    .line 296
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 297
    if-nez p1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 300
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mIsLoading:Z
    invoke-static {v0, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$502(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Z)Z

    .line 303
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelProgressbarLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->InitAdapter()V

    .line 305
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->setList(Ljava/util/ArrayList;)V

    .line 306
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->notifyDataSetChanged()V

    .line 307
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoNetworkTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setNoNetWorkStyle()V

    .line 314
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoNetworkTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->InitAdapter()V

    .line 321
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->setList(Ljava/util/ArrayList;)V

    .line 322
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

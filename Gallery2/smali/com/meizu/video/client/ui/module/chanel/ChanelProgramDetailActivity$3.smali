.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;
.super Landroid/os/Handler;
.source "ChanelProgramDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 621
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 622
    if-nez p1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 627
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getConfigurationDirect()V

    .line 628
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailProgressbarLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 629
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoading:Z
    invoke-static {v2, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1302(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z

    .line 630
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 631
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 632
    :cond_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoNetworkTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1400(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 636
    :goto_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setNoNetWorkStyle()V

    .line 637
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoAvailableNetwork:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 634
    :cond_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoNetworkTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1400(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 639
    :cond_4
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoAvailableNetwork:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadImageIntroduction()V
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    .line 641
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadTextIntroduction()V
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    .line 642
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getCurrentPlayPage(Z)V

    .line 643
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadEpisodes()V
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1800(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    .line 644
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadSimilarvideo()V
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1900(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    .line 645
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getImdb()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getImdb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 646
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initData(II)V
    invoke-static {v2, v5, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;II)V

    .line 648
    :cond_5
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->checkDownloadAddress()V

    .line 649
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailContentScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto/16 :goto_0

    .line 653
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoading:Z
    invoke-static {v2, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1302(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z

    goto/16 :goto_0

    .line 657
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoading:Z
    invoke-static {v2, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1302(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z

    .line 658
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadComment()V
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    goto/16 :goto_0

    .line 661
    :pswitch_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const v3, 0x102026f

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 662
    .local v1, title:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const v3, 0x1020270

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 663
    .local v0, subtitle:Landroid/widget/TextView;
    if-eqz v1, :cond_6

    .line 664
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const v3, 0x7f0c0006

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 666
    :cond_6
    if-eqz v0, :cond_0

    .line 667
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const v3, 0x7f0c0007

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

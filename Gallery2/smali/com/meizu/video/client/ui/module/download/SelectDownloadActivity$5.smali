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
    .line 846
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 850
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 851
    if-nez p1, :cond_0

    .line 887
    :goto_0
    return-void

    .line 854
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 856
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1100(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 857
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 858
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$602(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 860
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 861
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    .line 863
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 864
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 865
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 866
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 863
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 870
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showEpisodesView()V

    goto :goto_0

    .line 873
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const/4 v3, 0x0

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mIsLoading:Z
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1202(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Z)Z

    .line 874
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    move-result-object v2

    if-nez v2, :cond_5

    .line 875
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    new-instance v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;-><init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;I)V

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1302(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    .line 876
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1100(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 877
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/GridView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 882
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showEpisodesView()V

    goto/16 :goto_0

    .line 879
    :cond_6
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 854
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/meizu/video/client/ui/module/search/SearchFragment$3;
.super Landroid/os/Handler;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 377
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 378
    if-nez p1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 383
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->isLoading:Z
    invoke-static {v1, v4}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1702(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z

    .line 385
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->InitAdapter()V

    .line 386
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->setList(Ljava/util/ArrayList;)V

    .line 387
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$100(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " totalPage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentSearchPage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 389
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->setMLastFlag(Z)V

    .line 393
    :goto_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->notifyDataSetChanged()V

    .line 394
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mPreTimeOut:Z
    invoke-static {v1, v4}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1902(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z

    .line 395
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v1

    if-nez v1, :cond_6

    .line 396
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 397
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mPreTimeOut:Z
    invoke-static {v1, v5}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1902(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z

    .line 398
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_network_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 403
    :goto_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->setMLastFlag(Z)V

    goto :goto_1

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoSearchResult:Z
    invoke-static {v1, v5}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2102(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z

    .line 401
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_network_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 406
    :cond_5
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 409
    :cond_6
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoSearchResult:Z
    invoke-static {v1, v4}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2102(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z

    .line 410
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 415
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 416
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 418
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_7
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I
    invoke-static {v1, v5}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$402(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I

    .line 422
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #calls: Lcom/meizu/video/client/ui/module/search/SearchFragment;->initData(I)V
    invoke-static {v1, v5}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2300(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)V

    goto/16 :goto_0

    .line 418
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 425
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->InitAdapter()V

    .line 426
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->setList(Ljava/util/ArrayList;)V

    .line 427
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 430
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 431
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 432
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 433
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 435
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 436
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 437
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

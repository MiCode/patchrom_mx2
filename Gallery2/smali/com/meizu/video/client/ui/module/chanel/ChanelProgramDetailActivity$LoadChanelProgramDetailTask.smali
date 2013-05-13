.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;
.super Landroid/os/AsyncTask;
.source "ChanelProgramDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadChanelProgramDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mFreshPageType:I

.field mLoadDataType:I

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 538
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 540
    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mFreshPageType:I

    .line 541
    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mLoadDataType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 546
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v5

    .line 602
    :goto_0
    return-object v4

    .line 550
    :cond_0
    aget-object v4, p1, v8

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mContext:Landroid/content/Context;

    .line 551
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mFreshPageType:I

    .line 552
    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mLoadDataType:I

    .line 554
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mLoadDataType:I

    if-ne v4, v6, :cond_7

    .line 555
    sget v4, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    if-ne v4, v6, :cond_3

    .line 556
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/meizu/video/client/util/TestData;->getChanelProgramDetailData(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 557
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_1

    .line 558
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 560
    :cond_1
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 561
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v5, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    .line 580
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 563
    :cond_3
    sget v4, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    if-ne v4, v7, :cond_6

    .line 564
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    move-result-object v4

    if-nez v4, :cond_4

    .line 565
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    new-instance v5, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    .line 567
    :cond_4
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v4

    if-nez v4, :cond_5

    .line 568
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    new-instance v5, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$702(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 570
    :cond_5
    const/4 v3, 0x1

    .line 572
    .local v3, type:I
    :try_start_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMediaDataType:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 575
    :goto_2
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVid:Ljava/lang/String;
    invoke-static {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mp4"

    invoke-static {v4, v5, v6, v7, v3}, Lcom/meizu/video/client/util/CommonUtil;->getChannelProgramDetailFromLS(Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 576
    .end local v3           #type:I
    :cond_6
    sget v4, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    if-ne v4, v9, :cond_2

    goto :goto_1

    .line 581
    :cond_7
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mLoadDataType:I

    if-ne v4, v7, :cond_8

    move-object v4, v5

    .line 583
    goto/16 :goto_0

    .line 584
    :cond_8
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mLoadDataType:I

    if-ne v4, v9, :cond_d

    .line 585
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_9

    .line 586
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1002(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 588
    :cond_9
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentCommentPage:I
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v5}, Lcom/meizu/video/client/util/TestData;->getCommentData(IILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 589
    .local v1, commentPartListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/CommentEntity;>;"
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 590
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 591
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 592
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/CommentEntity;

    .line 593
    .local v0, commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    if-eqz v0, :cond_a

    .line 594
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 597
    .end local v0           #commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    :cond_b
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1108(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    .line 600
    .end local v2           #i:I
    :cond_c
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    goto/16 :goto_0

    .line 597
    .restart local v2       #i:I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v1           #commentPartListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/CommentEntity;>;"
    .end local v2           #i:I
    :cond_d
    move-object v4, v5

    .line 602
    goto/16 :goto_0

    .line 573
    .restart local v3       #type:I
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mFreshPageType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->mFreshPageType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

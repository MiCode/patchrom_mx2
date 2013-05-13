.class Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;
.super Landroid/os/AsyncTask;
.source "ChanelDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadChanelDetailListTask"
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
.field mFreshPageType:I

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->mFreshPageType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .parameter "params"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 232
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    new-instance v1, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$202(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 233
    sget v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    const/16 v2, 0x1e

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/meizu/video/client/util/TestData;->getChannelDetailData(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 243
    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalNum:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$702(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I

    .line 244
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalNum:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalPage:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$802(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I

    .line 245
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalNum:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x1e

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$808(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v1

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOldTotalPage:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$902(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_2
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->mFreshPageType:I

    .line 254
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1002(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 258
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 259
    :try_start_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 260
    .local v14, part_count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v14, :cond_6

    .line 261
    new-instance v11, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    invoke-direct {v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;-><init>()V

    .line 262
    .local v11, chanelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #chanelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    check-cast v11, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    .line 263
    .restart local v11       #chanelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 235
    .end local v11           #chanelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .end local v13           #i:I
    .end local v14           #part_count:I
    :cond_4
    sget v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 237
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelId:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOrderby:Ljava/lang/String;
    invoke-static {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    iget-object v8, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mCurrentChannelDetailPage:I
    invoke-static {v8}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x1e

    const/16 v9, 0x1e

    iget-object v10, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelType:I
    invoke-static {v10}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v10

    invoke-static/range {v0 .. v10}, Lcom/meizu/video/client/util/CommonUtil;->getChannelDetailFromLS(Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_1

    .line 238
    :cond_5
    sget v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    .line 249
    :catch_0
    move-exception v12

    .line 250
    .local v12, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOldTotalPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v1

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalPage:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$802(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I

    goto/16 :goto_2

    .line 265
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v13       #i:I
    .restart local v14       #part_count:I
    :cond_6
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$508(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    .line 269
    .end local v13           #i:I
    .end local v14           #part_count:I
    :cond_7
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_0

    .line 265
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->mFreshPageType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->mFreshPageType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

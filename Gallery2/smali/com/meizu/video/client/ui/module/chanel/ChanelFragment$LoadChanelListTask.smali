.class Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;
.super Landroid/os/AsyncTask;
.source "ChanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadChanelListTask"
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
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "params"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    const/4 v2, 0x0

    .line 279
    :goto_0
    return-object v2

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    new-instance v3, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v3}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$302(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 248
    :cond_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mTypeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    if-nez v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    new-instance v3, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v3}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mTypeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$402(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 251
    :cond_3
    sget v2, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 252
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    const/16 v4, 0x14

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/meizu/video/client/util/TestData;->getChannelData(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v3, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 278
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  channelListEntity.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 253
    :cond_5
    sget v2, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 254
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 255
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v3, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 262
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 263
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 264
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    .line 265
    .local v0, chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    if-eqz v0, :cond_7

    const-string v2, "164"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 266
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v1, v1, -0x1

    .line 263
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 257
    .end local v0           #chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .end local v1           #i:I
    :cond_8
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mTypeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->getTypeAreaYearFromLs(Lcom/meizu/video/client/ui/entity/MsgEntity;Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 258
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 259
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v3, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_2

    .line 276
    :cond_9
    sget v2, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    goto/16 :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 284
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

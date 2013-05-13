.class Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;
.super Landroid/os/AsyncTask;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadRecommendListTask"
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

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    new-instance v1, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$302(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 256
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$102(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 258
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$402(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 259
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$502(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 260
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$602(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 261
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$702(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 263
    aget-object v0, p1, v3

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->mContext:Landroid/content/Context;

    .line 265
    sget v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    const/16 v2, 0xd

    aget-object v0, p1, v3

    check-cast v0, Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/meizu/video/client/util/TestData;->getRecommendData(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$402(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 272
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_2
    sget v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 268
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$600(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$700(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/meizu/video/client/util/CommonUtil;->getRecommendFromLS(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 269
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->changeDataSort()V

    goto :goto_1

    .line 270
    :cond_3
    sget v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

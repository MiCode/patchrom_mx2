.class Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;
.super Landroid/os/AsyncTask;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSearchListTask"
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
.field currentSearchKeyWord:Ljava/lang/String;

.field freshPageType:I

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->freshPageType:I

    .line 299
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->currentSearchKeyWord:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;Lcom/meizu/video/client/ui/module/search/SearchFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0xa

    const/4 v12, 0x1

    .line 303
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$802(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 308
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgTypeNumListEntity:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$902(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 309
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    new-instance v2, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v1, v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1002(Lcom/meizu/video/client/ui/module/search/SearchFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 311
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->currentSearchKeyWord:Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->currentSearchKeyWord:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->currentSearchKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    sget v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    if-ne v0, v12, :cond_5

    .line 318
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgTypeNumListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$900(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v7, v12, v0, v2}, Lcom/meizu/video/client/util/TestData;->getSearchData(IILandroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$802(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 326
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->currentSearchKeyWord:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalNum:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1302(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I

    .line 329
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalNum:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1402(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I

    .line 330
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalNum:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1408(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v1

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOldTotalPage:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1502(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_2
    aget-object v0, p1, v12

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->freshPageType:I

    .line 340
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$302(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 344
    :try_start_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 345
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 346
    .local v10, part_count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v10, :cond_7

    .line 347
    new-instance v11, Lcom/meizu/video/client/ui/entity/SearchEntity;

    invoke-direct {v11}, Lcom/meizu/video/client/ui/entity/SearchEntity;-><init>()V

    .line 348
    .local v11, searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    check-cast v11, Lcom/meizu/video/client/ui/entity/SearchEntity;

    .line 349
    .restart local v11       #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 319
    .end local v9           #i:I
    .end local v10           #part_count:I
    .end local v11           #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    :cond_5
    sget v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 320
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgTypeNumListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$900(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->currentSearchKeyWord:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->cid:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1100(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->order:Ljava/lang/String;
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I
    invoke-static {v6}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0xa

    invoke-static/range {v0 .. v7}, Lcom/meizu/video/client/util/CommonUtil;->getSearchFromLS(Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 321
    :cond_6
    sget v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto/16 :goto_1

    .line 334
    :catch_0
    move-exception v8

    .line 335
    .local v8, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOldTotalPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v1

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1402(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I

    goto/16 :goto_2

    .line 352
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 353
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$408(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    .line 355
    :cond_8
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :cond_9
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->currentSearchKeyWord:Ljava/lang/String;

    goto/16 :goto_0

    .line 355
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
    .line 363
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->freshPageType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->currentSearchKeyWord:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->freshPageType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

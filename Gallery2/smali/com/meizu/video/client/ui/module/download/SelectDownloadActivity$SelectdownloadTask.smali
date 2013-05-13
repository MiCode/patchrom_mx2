.class Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;
.super Landroid/os/AsyncTask;
.source "SelectDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectdownloadTask"
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

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1000
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->mFreshPageType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "params"

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1005
    const/4 v10, 0x0

    .line 1053
    :goto_0
    return-object v10

    .line 1008
    :cond_0
    const/4 v10, 0x0

    aget-object v10, p1, v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->mFreshPageType:I

    .line 1010
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1011
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getEpisodesListEntity()Ljava/util/ArrayList;

    move-result-object v11

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v10, v11}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$402(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1014
    :cond_1
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #calls: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getAllDownLoadVideo()Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1015
    .local v0, allVideo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 1016
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const/4 v11, 0x0

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCanDownloadNum:I
    invoke-static {v10, v11}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1802(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I)I

    .line 1017
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_8

    .line 1018
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 1019
    .local v2, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v2, :cond_6

    .line 1020
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 1021
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setExistOrDownload(Z)V

    .line 1024
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoQualityType:I
    invoke-static {v10}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1900(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v10

    invoke-static {v2, v10}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v9

    .line 1025
    .local v9, videoUrl:Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1026
    :cond_2
    const/4 v10, 0x1

    invoke-static {v2, v10}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v9

    .line 1028
    :cond_3
    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1029
    .local v6, start:I
    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1031
    .local v1, end:I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_7

    const/4 v10, -0x1

    if-eq v1, v10, :cond_7

    if-ge v6, v1, :cond_7

    .line 1032
    invoke-virtual {v9, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1036
    .local v7, suffixName:Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1038
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1039
    .local v8, video:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1040
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setExistOrDownload(Z)V

    .line 1041
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1045
    .end local v8           #video:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1046
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-static {v10}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1808(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    .line 1017
    .end local v1           #end:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #start:I
    .end local v7           #suffixName:Ljava/lang/String;
    .end local v9           #videoUrl:Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1034
    .restart local v1       #end:I
    .restart local v6       #start:I
    .restart local v9       #videoUrl:Ljava/lang/String;
    :cond_7
    const-string v7, ".mp4"

    .restart local v7       #suffixName:Ljava/lang/String;
    goto :goto_2

    .line 1053
    .end local v1           #end:I
    .end local v2           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v3           #i:I
    .end local v6           #start:I
    .end local v7           #suffixName:Ljava/lang/String;
    .end local v9           #videoUrl:Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v10

    goto/16 :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->mFreshPageType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1062
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->mFreshPageType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

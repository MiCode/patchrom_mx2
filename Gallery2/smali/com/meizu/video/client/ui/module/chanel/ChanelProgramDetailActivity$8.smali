.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;
.super Ljava/lang/Object;
.source "ChanelProgramDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1317
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1320
    if-nez p1, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1324
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1351
    :sswitch_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getImdb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getImdb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_other:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bc4\u8bba\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initData(II)V
    invoke-static {v0, v2, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;II)V

    goto :goto_0

    .line 1327
    :sswitch_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I
    invoke-static {v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;I)I

    .line 1329
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesVarietyPartListView()V

    goto :goto_0

    .line 1333
    :sswitch_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v0

    if-le v0, v4, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$110(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    .line 1335
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesVarietyPartListView()V

    goto :goto_0

    .line 1339
    :sswitch_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$108(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    .line 1341
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesVarietyPartListView()V

    goto :goto_0

    .line 1345
    :sswitch_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v1

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;I)I

    .line 1347
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesVarietyPartListView()V

    goto/16 :goto_0

    .line 1358
    :sswitch_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1360
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 1361
    if-eqz v0, :cond_0

    .line 1362
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->videoQualityType:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v1

    .line 1364
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1365
    :cond_2
    invoke-static {v0, v4}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v1

    .line 1369
    :cond_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->downloandService:Landroid/net/DownloadService;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3300(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/net/DownloadService;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1371
    :try_start_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->downloandService:Landroid/net/DownloadService;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3300(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/net/DownloadService;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->getFullFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/net/DownloadService;->downloadByPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1379
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1380
    const-string v1, "style"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->style:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3400(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1381
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v1, v0, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1386
    :sswitch_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1387
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    new-instance v1, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    .line 1389
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1390
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->addToFavorites(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I

    move-result v0

    .line 1391
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z
    invoke-static {v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z

    .line 1393
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2300(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->favorite:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1397
    :cond_7
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->deleteFromFavorites(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I

    move-result v0

    .line 1398
    if-lez v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z
    invoke-static {v0, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z

    .line 1400
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2300(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->favorite:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1372
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 1324
    :sswitch_data_0
    .sparse-switch
        0x7f0d002e -> :sswitch_0
        0x7f0d003c -> :sswitch_1
        0x7f0d003d -> :sswitch_2
        0x7f0d003e -> :sswitch_3
        0x7f0d003f -> :sswitch_4
        0x7f0d0045 -> :sswitch_5
        0x7f0d0046 -> :sswitch_6
    .end sparse-switch
.end method

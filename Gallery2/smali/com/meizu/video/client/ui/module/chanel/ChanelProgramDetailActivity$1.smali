.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;
.super Ljava/lang/Object;
.source "ChanelProgramDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initListeners()V
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
    .line 419
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "positon"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 423
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt p3, v4, :cond_0

    .line 424
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 425
    .local v1, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v1, :cond_0

    .line 426
    const-string v4, "0"

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v4

    if-le v4, v6, :cond_0

    .line 428
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$110(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    .line 429
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesTVPartListView()V

    .line 464
    .end local v1           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_0
    :goto_0
    return-void

    .line 431
    .restart local v1       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_1
    const-string v4, "1"

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 432
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 433
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-static {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$108(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I

    .line 434
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesTVPartListView()V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getPlay_address()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, title:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getProgression()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I
    invoke-static {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$302(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_1
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v4, v2, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->playVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I
    invoke-static {v4, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$302(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;I)I

    goto :goto_1
.end method

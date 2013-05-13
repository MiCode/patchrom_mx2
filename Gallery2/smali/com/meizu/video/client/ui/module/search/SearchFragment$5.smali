.class Lcom/meizu/video/client/ui/module/search/SearchFragment$5;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 514
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 517
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/SearchEntity;

    .line 519
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getCid()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getVid()Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v4

    .line 523
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getIntro()Ljava/lang/String;

    move-result-object v0

    .line 525
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    const-string v6, "chanelProgramName"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const-string v1, "cid"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v1, "vid"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string v1, "mediaDataType"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v1, "intro"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 533
    :cond_0
    return-void
.end method

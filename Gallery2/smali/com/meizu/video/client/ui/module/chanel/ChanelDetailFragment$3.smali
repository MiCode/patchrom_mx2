.class Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;
.super Ljava/lang/Object;
.source "ChanelDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 383
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt p3, v7, :cond_0

    .line 384
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    .line 385
    .local v1, channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, chanelProgramName:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getVid()Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, vid:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getCid()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, cid:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, mediaDataType:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getIntro()Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, intro:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "chanelName"

    iget-object v8, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelName:Ljava/lang/String;
    invoke-static {v8}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1800(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v7, "chanelProgramName"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v7, "cid"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v7, "vid"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v7, "mediaDataType"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v7, "intro"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 400
    .end local v0           #chanelProgramName:Ljava/lang/String;
    .end local v1           #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .end local v2           #cid:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #intro:Ljava/lang/String;
    .end local v5           #mediaDataType:Ljava/lang/String;
    .end local v6           #vid:Ljava/lang/String;
    :cond_0
    return-void
.end method

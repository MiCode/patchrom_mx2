.class Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

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
    .line 204
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p3, :cond_0

    .line 205
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p3, v0

    .line 206
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getCid()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getVid()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getIntro()Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const-string v6, "chanelProgramName"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "cid"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "vid"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "mediaDataType"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "intro"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 224
    :cond_0
    return-void
.end method

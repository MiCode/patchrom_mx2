.class Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;
.super Ljava/lang/Object;
.source "ChanelFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 199
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " channelGridview onItemClick positon="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt p3, v6, :cond_0

    .line 201
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    .line 202
    .local v1, chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, channelTitle:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, id_tag:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "chanelName"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v6, "chanelId"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v5, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;-><init>()V

    .line 209
    .local v5, newfragment:Landroid/app/Fragment;
    invoke-virtual {v5, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 210
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 211
    .local v3, ft:Landroid/app/FragmentTransaction;
    const v6, 0x7f0d001c

    const-string v7, "chaneldetailtabFragment"

    invoke-virtual {v3, v6, v5, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 212
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 215
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .end local v2           #channelTitle:Ljava/lang/String;
    .end local v3           #ft:Landroid/app/FragmentTransaction;
    .end local v4           #id_tag:Ljava/lang/String;
    .end local v5           #newfragment:Landroid/app/Fragment;
    :cond_0
    return-void
.end method

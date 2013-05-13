.class Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;
.super Ljava/lang/Object;
.source "SelectDownloadActivity.java"

# interfaces
.implements Landroid/view/ActionMode$BackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 518
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 519
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 521
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 522
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    goto :goto_0

    .line 524
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->unCheckedAll()V

    .line 525
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    .line 526
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->finishMultiChoice()V

    .line 527
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$502(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I)I

    .line 528
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;->this$1:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 529
    const/4 v2, 0x1

    return v2
.end method

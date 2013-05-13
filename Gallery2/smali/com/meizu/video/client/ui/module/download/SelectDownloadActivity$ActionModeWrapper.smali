.class Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;
.super Ljava/lang/Object;
.source "SelectDownloadActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [J

    #calls: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->actionItemClick(I[J)Z
    invoke-static {v0, v1, v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$800(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I[J)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 493
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 494
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v2, 0x7f11000b

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 495
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const v3, 0x7f0d01b8

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$102(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 496
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const v3, 0x7f0d01b9

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$202(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 497
    const v2, 0x7f0a000b

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitle(I)V

    .line 498
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$200(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SelectionButton;

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v3, v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$302(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;

    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, total:I
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 505
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    new-instance v3, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$1;

    invoke-direct {v3, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$1;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 513
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 515
    new-instance v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;)V

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V

    .line 533
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroyActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 552
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 556
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemCheckedStateChanged position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mEpisodesListEntity.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBeginDownload="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBeginDownload:Z
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$900(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBeginDownload:Z
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$900(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 562
    .local v1, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload()Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    .line 564
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$602(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 566
    :cond_2
    if-eqz p5, :cond_4

    .line 567
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 568
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$508(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    .line 569
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 571
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 583
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCurrentStartListPosition:I
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v3

    sub-int v0, p2, v3

    .line 584
    .local v0, currentViewIndex:I
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemCheckedStateChanged  position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCurrentStartListPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCurrentStartListPosition:I
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 586
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 587
    if-eqz p5, :cond_5

    .line 589
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-virtual {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 574
    .end local v0           #currentViewIndex:I
    .end local v2           #view:Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 575
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$510(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    .line 576
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 577
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 578
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    goto/16 :goto_1

    .line 591
    .restart local v0       #currentViewIndex:I
    .restart local v2       #view:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 538
    const/4 v0, 0x1

    return v0
.end method

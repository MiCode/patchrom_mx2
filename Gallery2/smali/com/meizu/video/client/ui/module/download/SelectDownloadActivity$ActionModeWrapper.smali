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
    .line 458
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
    .line 511
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
    .line 461
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 462
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v2, 0x7f11000b

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 463
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const v3, 0x7f0d0199

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$102(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 464
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const v3, 0x7f0d019a

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$202(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 466
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$200(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SelectionButton;

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v3, v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$302(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;

    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, total:I
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 473
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    new-instance v3, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$1;

    invoke-direct {v3, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$1;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 481
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 483
    new-instance v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper$2;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;)V

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V

    .line 501
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroyActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 520
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 3
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemCheckedStateChanged position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " episodesListEntity.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " beginDownload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownload:Z
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$900(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownload:Z
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$900(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$602(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 532
    :cond_2
    if-eqz p5, :cond_3

    .line 533
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$508(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    .line 535
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 537
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    goto :goto_0

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$510(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    .line 542
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 544
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #getter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    goto/16 :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 506
    const/4 v0, 0x1

    return v0
.end method

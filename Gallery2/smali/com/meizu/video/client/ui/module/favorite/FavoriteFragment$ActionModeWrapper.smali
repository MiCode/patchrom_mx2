.class Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;
.super Ljava/lang/Object;
.source "FavoriteFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 440
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 441
    .local v1, id:I
    const v3, 0x7f0d01b0

    if-ne v1, v3, :cond_0

    .line 443
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;)V

    .line 444
    .local v0, cdl:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1030323

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f10

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0145

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0153

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 453
    .end local v0           #cdl:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v4, 0x7f0d01b2

    .line 349
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f11000c

    invoke-virtual {v2, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 351
    const v2, 0x7f0a01f8

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitle(I)V

    .line 353
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectMenuItem:Landroid/view/MenuItem;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1002(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 355
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SelectionButton;

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v3, v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;

    .line 357
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 358
    .local v0, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SelectionButton;

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v3, v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, total:I
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$902(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 368
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    new-instance v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;

    invoke-direct {v3, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 404
    new-instance v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$2;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$2;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;)V

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V

    .line 430
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 458
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 462
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 498
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 466
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$902(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 468
    :cond_1
    if-eqz p5, :cond_5

    .line 469
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setSelected(Z)V

    .line 470
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 471
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mCurrentStartListPosition:I
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1300(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)I

    move-result v2

    sub-int v0, p2, v2

    .line 481
    .local v0, currentViewIndex:I
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_3

    .line 482
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1402(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 485
    :cond_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 486
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$600(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 490
    .local v1, view:Landroid/view/View;
    :goto_2
    if-eqz v1, :cond_4

    .line 491
    if-eqz p5, :cond_7

    .line 492
    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 497
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    goto/16 :goto_0

    .line 474
    .end local v0           #currentViewIndex:I
    .end local v1           #view:Landroid/view/View;
    :cond_5
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setSelected(Z)V

    .line 475
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 488
    .restart local v0       #currentViewIndex:I
    :cond_6
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$500(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1       #view:Landroid/view/View;
    goto :goto_2

    .line 494
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

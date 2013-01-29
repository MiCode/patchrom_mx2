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
    .line 331
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

    .line 422
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 423
    .local v1, id:I
    const v3, 0x7f0d0192

    if-ne v1, v3, :cond_0

    .line 425
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;)V

    .line 426
    .local v0, cdl:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1030317

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

    const v4, 0x7f0a013a

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0148

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 435
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
    const v4, 0x7f0d0194

    .line 334
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f11000c

    invoke-virtual {v2, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 335
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectMenuItem:Landroid/view/MenuItem;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1002(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 337
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SelectionButton;

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v3, v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;

    .line 339
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 340
    .local v0, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SelectionButton;

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v3, v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, total:I
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$902(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 350
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    new-instance v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;

    invoke-direct {v3, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
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

    .line 386
    new-instance v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$2;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$2;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;)V

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V

    .line 412
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 440
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 9
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    const-wide/high16 v7, 0x4016

    const/4 v6, 0x0

    .line 444
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, p2, :cond_0

    .line 487
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->InitAdapter()V

    .line 448
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$800(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    move-result-object v4

    invoke-virtual {v4, p2, p5}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->setPositionCheck(IZ)V

    .line 449
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_1

    .line 450
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$902(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 452
    :cond_1
    if-eqz p5, :cond_5

    .line 453
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setSelected(Z)V

    .line 454
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 455
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 464
    .local v0, colNum:I
    const/4 v2, 0x0

    .line 465
    .local v2, topSpace:I
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->currentStartListPosition:I
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1300(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)I

    move-result v4

    sub-int v1, p2, v4

    .line 466
    .local v1, currentViewIndex:I
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 467
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$600(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 468
    .local v3, view:Landroid/view/View;
    const/4 v0, 0x2

    .line 469
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7, v8}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    add-int/lit8 v2, v4, 0x62

    .line 475
    :goto_2
    if-eqz v3, :cond_4

    .line 476
    div-int v4, p2, v0

    if-eqz v4, :cond_3

    .line 477
    const/4 v2, 0x0

    .line 479
    :cond_3
    if-eqz p5, :cond_7

    .line 480
    const v4, 0x7f020070

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 484
    :goto_3
    invoke-virtual {v3, v6, v2, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 486
    :cond_4
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    goto/16 :goto_0

    .line 458
    .end local v0           #colNum:I
    .end local v1           #currentViewIndex:I
    .end local v2           #topSpace:I
    .end local v3           #view:Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    invoke-virtual {v4, v6}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setSelected(Z)V

    .line 459
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 471
    .restart local v0       #colNum:I
    .restart local v1       #currentViewIndex:I
    .restart local v2       #topSpace:I
    :cond_6
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$500(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 472
    .restart local v3       #view:Landroid/view/View;
    const/4 v0, 0x1

    .line 473
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7, v8}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    add-int/lit8 v2, v4, 0x62

    goto :goto_2

    .line 482
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

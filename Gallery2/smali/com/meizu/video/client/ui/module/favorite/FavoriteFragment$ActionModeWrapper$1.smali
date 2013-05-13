.class Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;
.super Ljava/lang/Object;
.source "FavoriteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 371
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/widget/SelectionButton;->isAllSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 373
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

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

    check-cast v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 374
    .local v0, favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setSelected(Z)V

    goto :goto_0

    .line 376
    .end local v0           #favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->InitAdapter()V

    .line 377
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$800(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->setList(Ljava/util/ArrayList;)V

    .line 378
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$600(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->finishMultiChoice()V

    .line 400
    :goto_1
    return-void

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$500(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->finishMultiChoice()V

    goto :goto_1

    .line 384
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 385
    .restart local v0       #favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 386
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setSelected(Z)V

    goto :goto_2

    .line 390
    .end local v0           #favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    :cond_4
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->InitAdapter()V

    .line 391
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$800(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->setList(Ljava/util/ArrayList;)V

    .line 392
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 393
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$600(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->invalidateViews()V

    .line 398
    :goto_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    goto/16 :goto_1

    .line 395
    :cond_5
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper$1;->this$1:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$500(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->checkedAll()V

    goto :goto_3
.end method

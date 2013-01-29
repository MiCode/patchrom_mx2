.class Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "FavoriteFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 584
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x2

    .line 560
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 561
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$200(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    new-instance v3, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$202(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    .line 564
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 565
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 566
    .local v0, favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$200(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->deleteFromFavorites(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I

    .line 567
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 569
    .end local v0           #favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 571
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 572
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$600(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->finishMultiChoice()V

    .line 576
    :goto_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 579
    :cond_3
    return-void

    .line 574
    :cond_4
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$500(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->finishMultiChoice()V

    goto :goto_1
.end method

.class Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;
.super Landroid/os/AsyncTask;
.source "FavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFavoriteListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "params"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$200(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    move-result-object v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    new-instance v1, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$202(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$200(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->getAllFavoritesList()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 259
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

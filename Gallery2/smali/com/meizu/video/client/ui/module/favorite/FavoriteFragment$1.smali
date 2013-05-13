.class Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;
.super Landroid/os/Handler;
.source "FavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 277
    if-nez p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$300(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$500(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 285
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$600(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 290
    :goto_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsLoading:Z
    invoke-static {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$702(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Z)Z

    .line 291
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->InitAdapter()V

    .line 292
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$800(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->setList(Ljava/util/ArrayList;)V

    .line 293
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$800(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->notifyDataSetChanged()V

    .line 294
    invoke-virtual {p0, v5}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->removeMessages(I)V

    .line 295
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v5, v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$600(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 288
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$500(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 298
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 299
    :cond_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 301
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "tag_favorite"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 302
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    const v3, 0x7f0a01e2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 304
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

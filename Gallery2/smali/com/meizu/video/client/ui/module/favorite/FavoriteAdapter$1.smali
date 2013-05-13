.class Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;
.super Ljava/lang/Object;
.source "FavoriteAdapter.java"

# interfaces
.implements Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->updateViewData(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/FavoriteEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

.field final synthetic val$id_tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 3
    .parameter "imageBitmap"
    .parameter "imageUrl"
    .parameter "position"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->access$000(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->access$000(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->access$000(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->access$000(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 292
    .local v0, imageViewByTag:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 293
    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    .end local v0           #imageViewByTag:Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 301
    .restart local v0       #imageViewByTag:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 302
    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    .end local v0           #imageViewByTag:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

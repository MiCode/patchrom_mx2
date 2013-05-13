.class Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/search/SearchAdapter;->updateViewData(Landroid/view/View;Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/SearchEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

.field final synthetic val$id_tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/search/SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;->val$id_tag:Ljava/lang/String;

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
    .line 279
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->access$000(Lcom/meizu/video/client/ui/module/search/SearchAdapter;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->access$000(Lcom/meizu/video/client/ui/module/search/SearchAdapter;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->access$000(Lcom/meizu/video/client/ui/module/search/SearchAdapter;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 281
    .local v0, imageViewByTag:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 282
    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 287
    .end local v0           #imageViewByTag:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

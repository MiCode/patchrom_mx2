.class Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;
.super Ljava/lang/Object;
.source "RecommendAdapter.java"

# interfaces
.implements Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

.field final synthetic val$id_tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 3
    .parameter "imageBitmap"
    .parameter "imageUrl"
    .parameter "positon"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->access$000(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->access$000(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->access$000(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .local v0, imageViewByTag:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    .end local v0           #imageViewByTag:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.class Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;
.super Ljava/lang/Object;
.source "ChanelAdapter.java"

# interfaces
.implements Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

.field final synthetic val$id_tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 4
    .parameter "imageBitmap"
    .parameter "imageUrl"
    .parameter "pos"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " imageUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    invoke-virtual {v1, p3, p2}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->updateChannelUrl(ILjava/lang/String;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 135
    .local v0, imageViewByTag:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 136
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    .end local v0           #imageViewByTag:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

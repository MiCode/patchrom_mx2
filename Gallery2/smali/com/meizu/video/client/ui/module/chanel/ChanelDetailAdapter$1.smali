.class Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;
.super Ljava/lang/Object;
.source "ChanelDetailAdapter.java"

# interfaces
.implements Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

.field final synthetic val$id_tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;->val$id_tag:Ljava/lang/String;

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
    .line 234
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->gridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->gridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->gridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;->val$id_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 236
    .local v0, imageViewByTag:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 237
    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 245
    .end local v0           #imageViewByTag:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 241
    .restart local v0       #imageViewByTag:Landroid/widget/ImageView;
    :cond_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.class Lcom/meizu/video/client/util/AsyncImageLoader$2;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/util/AsyncImageLoader;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$height:I

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$type:Lcom/meizu/video/client/common/Constant$InterfaceType;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/meizu/video/client/util/AsyncImageLoader;Ljava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->this$0:Lcom/meizu/video/client/util/AsyncImageLoader;

    iput-object p2, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$type:Lcom/meizu/video/client/common/Constant$InterfaceType;

    iput-object p4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$cid:Ljava/lang/String;

    iput p5, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$width:I

    iput p6, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$height:I

    iput-object p7, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$handler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 64
    iget-object v2, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$imageUrl:Ljava/lang/String;

    .line 65
    .local v2, lastImageUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$type:Lcom/meizu/video/client/common/Constant$InterfaceType;

    sget-object v5, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNEL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    if-ne v4, v5, :cond_1

    .line 66
    iget-object v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v5, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$cid:Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/video/client/util/JsonParse;->getChannelImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->this$0:Lcom/meizu/video/client/util/AsyncImageLoader;

    #getter for: Lcom/meizu/video/client/util/AsyncImageLoader;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/video/client/util/AsyncImageLoader;->access$000(Lcom/meizu/video/client/util/AsyncImageLoader;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastImageUrl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    const/4 v0, 0x0

    .line 72
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->this$0:Lcom/meizu/video/client/util/AsyncImageLoader;

    iget v5, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$width:I

    iget v6, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$height:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadImageFromUrl(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    iget-object v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->this$0:Lcom/meizu/video/client/util/AsyncImageLoader;

    iget-object v4, v4, Lcom/meizu/video/client/util/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    new-instance v1, Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;

    iget-object v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->this$0:Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v1, v4}, Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;-><init>(Lcom/meizu/video/client/util/AsyncImageLoader;)V

    .line 77
    .local v1, callBackEntity:Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;
    iput-object v0, v1, Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 78
    iput-object v2, v1, Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;->imageUrl:Ljava/lang/String;

    .line 80
    iget-object v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 81
    .local v3, message:Landroid/os/Message;
    iget-object v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method

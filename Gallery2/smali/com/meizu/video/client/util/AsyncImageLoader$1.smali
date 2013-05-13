.class Lcom/meizu/video/client/util/AsyncImageLoader$1;
.super Landroid/os/Handler;
.source "AsyncImageLoader.java"


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

.field final synthetic val$imageCallback:Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/video/client/util/AsyncImageLoader;Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/video/client/util/AsyncImageLoader$1;->this$0:Lcom/meizu/video/client/util/AsyncImageLoader;

    iput-object p2, p0, Lcom/meizu/video/client/util/AsyncImageLoader$1;->val$imageCallback:Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;

    iput p3, p0, Lcom/meizu/video/client/util/AsyncImageLoader$1;->val$position:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;

    .line 54
    .local v0, entry:Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;
    iget-object v1, p0, Lcom/meizu/video/client/util/AsyncImageLoader$1;->val$imageCallback:Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;

    iget-object v2, v0, Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;->mImageUrl:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/video/client/util/AsyncImageLoader$1;->val$position:I

    invoke-interface {v1, v2, v3, v4}, Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

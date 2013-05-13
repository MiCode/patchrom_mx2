.class public Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/util/AsyncImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallBackEntity"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mImageUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/video/client/util/AsyncImageLoader;


# direct methods
.method public constructor <init>(Lcom/meizu/video/client/util/AsyncImageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;->this$0:Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

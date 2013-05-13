.class Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;
.super Landroid/os/AsyncTask;
.source "VideoGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/VideoGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCommonDataTask"
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
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoGallery;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/VideoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/VideoGallery;Lcom/android/gallery3d/app/VideoGallery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;-><init>(Lcom/android/gallery3d/app/VideoGallery;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    :goto_0
    return-object v2

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #getter for: Lcom/android/gallery3d/app/VideoGallery;->channelMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/android/gallery3d/app/VideoGallery;->access$600(Lcom/android/gallery3d/app/VideoGallery;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    new-instance v1, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    #setter for: Lcom/android/gallery3d/app/VideoGallery;->channelMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/VideoGallery;->access$602(Lcom/android/gallery3d/app/VideoGallery;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #getter for: Lcom/android/gallery3d/app/VideoGallery;->typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/android/gallery3d/app/VideoGallery;->access$700(Lcom/android/gallery3d/app/VideoGallery;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    new-instance v1, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    #setter for: Lcom/android/gallery3d/app/VideoGallery;->typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/VideoGallery;->access$702(Lcom/android/gallery3d/app/VideoGallery;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #getter for: Lcom/android/gallery3d/app/VideoGallery;->channelMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/android/gallery3d/app/VideoGallery;->access$600(Lcom/android/gallery3d/app/VideoGallery;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #getter for: Lcom/android/gallery3d/app/VideoGallery;->typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v1}, Lcom/android/gallery3d/app/VideoGallery;->access$700(Lcom/android/gallery3d/app/VideoGallery;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->getTypeAreaYearFromLs(Lcom/meizu/video/client/ui/entity/MsgEntity;Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 566
    return-void
.end method

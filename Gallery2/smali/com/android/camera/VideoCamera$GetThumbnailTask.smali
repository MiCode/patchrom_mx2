.class Lcom/android/camera/VideoCamera$GetThumbnailTask;
.super Landroid/os/AsyncTask;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2473
    iput-object p1, p0, Lcom/android/camera/VideoCamera$GetThumbnailTask;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2473
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$GetThumbnailTask;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2473
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/VideoCamera$GetThumbnailTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "params"

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x0

    .line 2476
    const/16 v1, 0x280

    const/16 v2, 0x3c0

    invoke-static {v1, v2}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2477
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 2491
    :goto_0
    return-object v9

    .line 2479
    :cond_0
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2480
    .local v5, m:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/camera/VideoCamera$GetThumbnailTask;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mOrientation:I
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2500(Lcom/android/camera/VideoCamera;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 2481
    iget-object v8, p0, Lcom/android/camera/VideoCamera$GetThumbnailTask;->this$0:Lcom/android/camera/VideoCamera;

    const/16 v1, 0x5b

    const/4 v2, 0x0

    const/16 v3, 0x1ca

    const/16 v4, 0x356

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;
    invoke-static {v8, v1}, Lcom/android/camera/VideoCamera;->access$5002(Lcom/android/camera/VideoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2482
    iget-object v1, p0, Lcom/android/camera/VideoCamera$GetThumbnailTask;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mScreenShot:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$5000(Lcom/android/camera/VideoCamera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2483
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2484
    const/4 v0, 0x0

    .line 2486
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera$GetThumbnailTask;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2487
    .end local v5           #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v7

    .line 2488
    .local v7, e:Ljava/lang/OutOfMemoryError;
    iget-object v1, p0, Lcom/android/camera/VideoCamera$GetThumbnailTask;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

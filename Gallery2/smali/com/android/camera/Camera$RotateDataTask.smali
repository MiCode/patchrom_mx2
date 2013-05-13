.class Lcom/android/camera/Camera$RotateDataTask;
.super Landroid/os/AsyncTask;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3638
    iput-object p1, p0, Lcom/android/camera/Camera$RotateDataTask;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3638
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$RotateDataTask;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method

.method private rotatePictureData([BI)[B
    .locals 11
    .parameter "data"
    .parameter "rotate"

    .prologue
    const/4 v1, 0x0

    .line 3647
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3648
    const/4 v0, 0x0

    .line 3649
    .local v0, tmp:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 3651
    .local v9, tmpRotate:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_0
    array-length v6, p1

    invoke-static {p1, v2, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3656
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 3657
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 3658
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3659
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v2, p2

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    invoke-virtual {v5, v2, v6, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 3660
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3661
    if-eqz v0, :cond_0

    .line 3662
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3663
    const/4 v0, 0x0

    .line 3665
    :cond_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3666
    .local v8, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v9, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3667
    if-eqz v9, :cond_1

    .line 3668
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 3669
    const/4 v9, 0x0

    .line 3671
    :cond_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 3673
    .end local v0           #tmp:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #stream:Ljava/io/ByteArrayOutputStream;
    .end local v9           #tmpRotate:Landroid/graphics/Bitmap;
    .end local p1
    :cond_2
    :goto_0
    return-object p1

    .line 3652
    .restart local v0       #tmp:Landroid/graphics/Bitmap;
    .restart local v9       #tmpRotate:Landroid/graphics/Bitmap;
    .restart local p1
    :catch_0
    move-exception v7

    .line 3653
    .local v7, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "camera"

    const-string v2, "Rotate picture data error !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3638
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera$RotateDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/android/camera/Camera$RotateDataTask;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$RotateDataTask;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegImageData:[B
    invoke-static {v1}, Lcom/android/camera/Camera;->access$8800(Lcom/android/camera/Camera;)[B

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/Camera$RotateDataTask;->rotatePictureData([BI)[B

    move-result-object v1

    #setter for: Lcom/android/camera/Camera;->mJpegImageData:[B
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$8802(Lcom/android/camera/Camera;[B)[B

    .line 3643
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3638
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera$RotateDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 3678
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3679
    return-void
.end method

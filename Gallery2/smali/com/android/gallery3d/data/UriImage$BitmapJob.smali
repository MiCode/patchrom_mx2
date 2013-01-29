.class Lcom/android/gallery3d/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mSupportFullImage:Z

.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/UriImage;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/data/UriImage;IZ)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "supportFullImage"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p2, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    .line 187
    iput-boolean p3, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mSupportFullImage:Z

    .line 188
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 192
    iget-object v4, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #calls: Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v4, p1}, Lcom/android/gallery3d/data/UriImage;->access$100(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 214
    :goto_0
    return-object v0

    .line 193
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    iget-boolean v5, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mSupportFullImage:Z

    invoke-static {v4, v5}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(IZ)I

    move-result v2

    .line 194
    .local v2, targetSize:I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 196
    iget-object v4, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Lcom/android/gallery3d/data/UriImage;->access$200(Lcom/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {p1, v4, v1, v2, v5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v3

    .line 200
    goto :goto_0

    .line 203
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 205
    invoke-static {v0, v2, v6}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    #setter for: Lcom/android/gallery3d/data/UriImage;->mWidth:I
    invoke-static {v3, v4}, Lcom/android/gallery3d/data/UriImage;->access$302(Lcom/android/gallery3d/data/UriImage;I)I

    .line 213
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    #setter for: Lcom/android/gallery3d/data/UriImage;->mHeight:I
    invoke-static {v3, v4}, Lcom/android/gallery3d/data/UriImage;->access$402(Lcom/android/gallery3d/data/UriImage;I)I

    goto :goto_0

    .line 210
    :cond_3
    invoke-static {v0, v2, v6}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/UriImage$BitmapJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

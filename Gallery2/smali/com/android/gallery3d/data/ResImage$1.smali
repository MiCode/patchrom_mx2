.class Lcom/android/gallery3d/data/ResImage$1;
.super Ljava/lang/Object;
.source "ResImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ResImage;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/gallery3d/data/ResImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ResImage;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/gallery3d/data/ResImage$1;->this$0:Lcom/android/gallery3d/data/ResImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/data/ResImage$1;->this$0:Lcom/android/gallery3d/data/ResImage;

    #getter for: Lcom/android/gallery3d/data/ResImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/android/gallery3d/data/ResImage;->access$000(Lcom/android/gallery3d/data/ResImage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/ResImage$1;->this$0:Lcom/android/gallery3d/data/ResImage;

    #getter for: Lcom/android/gallery3d/data/ResImage;->mResId:I
    invoke-static {v1}, Lcom/android/gallery3d/data/ResImage;->access$100(Lcom/android/gallery3d/data/ResImage;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ResImage$1;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

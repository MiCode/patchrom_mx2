.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ScreenNailJob;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 150
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 156
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    .line 157
    .local v1, s:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 165
    :cond_0
    :goto_0
    return-object v2

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 160
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    if-eqz v0, :cond_2

    .line 162
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3, v5}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    :cond_2
    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ScreenNailJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

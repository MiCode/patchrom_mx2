.class Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;
.super Lcom/android/gallery3d/ui/BitmapTexture;
.source "GifScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GifScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifTexture"
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    return-void
.end method


# virtual methods
.method setContentBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;->invalidateContent()V

    .line 112
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/android/gallery3d/data/ResImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "ResImage.java"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mHeight:I

.field private mResId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "path"
    .parameter "application"

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-static {}, Lcom/android/gallery3d/data/ResImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 15
    iput v2, p0, Lcom/android/gallery3d/data/ResImage;->mResId:I

    .line 16
    iput v2, p0, Lcom/android/gallery3d/data/ResImage;->mWidth:I

    .line 17
    iput v2, p0, Lcom/android/gallery3d/data/ResImage;->mHeight:I

    .line 21
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/ResImage;->mResId:I

    .line 22
    iput-object p2, p0, Lcom/android/gallery3d/data/ResImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/ResImage;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/gallery3d/data/ResImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/ResImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/android/gallery3d/data/ResImage;->mResId:I

    return v0
.end method


# virtual methods
.method public calcItemRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3
    .parameter "rect"
    .parameter "slotSize"

    .prologue
    const/4 v2, 0x0

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/ResImage;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/data/ResImage;->mHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    return-object p1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/gallery3d/data/ResImage;->mHeight:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/data/ResImage;->mWidth:I

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/data/ResImage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/ResImage$1;-><init>(Lcom/android/gallery3d/data/ResImage;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/gallery3d/data/ResImage;->mHeight:I

    .line 61
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/gallery3d/data/ResImage;->mWidth:I

    .line 57
    return-void
.end method

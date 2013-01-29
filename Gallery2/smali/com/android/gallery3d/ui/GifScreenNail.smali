.class public Lcom/android/gallery3d/ui/GifScreenNail;
.super Ljava/lang/Object;
.source "GifScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;
    }
.end annotation


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCount:I

.field private mFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

.field private mHeight:I

.field private mIndex:I

.field private mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

.field private mTime:J

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 1
    .parameter "uri"
    .parameter "application"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mIndex:I

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mUri:Landroid/net/Uri;

    .line 33
    iput-object p2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 34
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GifScreenNail;->initGif()V

    .line 35
    return-void
.end method

.method private initGif()V
    .locals 4

    .prologue
    .line 116
    new-instance v2, Lcom/android/gallery3d/app/GifDecoder;

    invoke-direct {v2}, Lcom/android/gallery3d/app/GifDecoder;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/GifDecoder;->read(Ljava/io/InputStream;)I

    .line 123
    iget-object v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GifDecoder;->getFrames()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mFrames:Ljava/util/ArrayList;

    .line 124
    iget-object v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mCount:I

    .line 125
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mIndex:I

    .line 126
    iget v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mCount:I

    if-gtz v2, :cond_1

    .line 127
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    if-eqz v1, :cond_0

    .line 138
    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    :cond_0
    return-void

    .line 130
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTime:J

    .line 132
    iget-object v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GifDecoder;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mWidth:I

    .line 133
    iget-object v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GifDecoder;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    if-eqz v1, :cond_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_0

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 138
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    :cond_2
    throw v2
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 9
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 49
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v7

    .line 50
    .local v7, now:J
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GifScreenNail;->initGif()V

    .line 54
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-wide v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTime:J

    sub-long v1, v7, v0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mFrames:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GifDecoder$GifFrame;

    iget v0, v0, Lcom/android/gallery3d/app/GifDecoder$GifFrame;->delay:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 55
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mIndex:I

    .line 56
    iput-wide v7, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTime:J

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mFrames:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GifDecoder$GifFrame;

    iget-object v6, v0, Lcom/android/gallery3d/app/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 59
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    if-nez v0, :cond_5

    .line 60
    new-instance v0, Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    invoke-direct {v0, v6}, Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    .line 66
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 69
    :cond_4
    return-void

    .line 62
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;->setContentBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    if-nez v0, :cond_0

    .line 90
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v5, -0xddddde

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    iget v1, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;->recycle()V

    .line 79
    iput-object v1, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mTexture:Lcom/android/gallery3d/ui/GifScreenNail$GifTexture;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GifDecoder;->recycle()V

    .line 83
    iput-object v1, p0, Lcom/android/gallery3d/ui/GifScreenNail;->mGifDecoder:Lcom/android/gallery3d/app/GifDecoder;

    .line 85
    :cond_1
    return-void
.end method

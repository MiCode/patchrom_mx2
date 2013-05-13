.class public Lcom/android/gallery3d/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/BitmapScreenNail;->setSize(II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method

.method private getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 195
    invoke-static {}, Lcom/android/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    .line 196
    .local v0, r:F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 65
    :cond_0
    const/16 p1, 0x280

    .line 66
    const/16 p2, 0x1e0

    .line 68
    :cond_1
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4420

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 69
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 70
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 71
    return-void
.end method


# virtual methods
.method public combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 104
    .end local p0
    :goto_0
    return-object p0

    .line 80
    .restart local p0
    :cond_0
    instance-of v1, p1, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-nez v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    move-object p0, p1

    .line 82
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 87
    check-cast v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 88
    .local v0, newer:Lcom/android/gallery3d/ui/BitmapScreenNail;
    iget v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 89
    iget v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 90
    iget-object v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 92
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    iput-object v3, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 97
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 99
    iput-object v3, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 103
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 142
    iget-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 143
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 145
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    const v5, 0x7f222222

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 163
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 153
    :cond_2
    iget-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 154
    invoke-static {}, Lcom/android/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    const v2, 0x7f222222

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->getRatio()F

    move-result v3

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/gallery3d/ui/GLCanvas;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIII)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 168
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v5, 0x7f222222

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-wide v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 187
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xb4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 184
    const-wide/16 v1, -0x3

    iput-wide v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 131
    iput-object v2, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 135
    iput-object v2, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 137
    :cond_1
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/BitmapScreenNail;->setSize(II)V

    goto :goto_0
.end method

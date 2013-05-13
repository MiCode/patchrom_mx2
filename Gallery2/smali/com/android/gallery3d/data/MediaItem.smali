.class public abstract Lcom/android/gallery3d/data/MediaItem;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

.field private static final sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field private static final sThumbPool:Lcom/android/gallery3d/data/BitmapPool;


# instance fields
.field private mSizeInvalid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 50
    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/BitmapPool;-><init>(I)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    .line 54
    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/BitmapPool;-><init>(I)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    .line 55
    new-instance v0, Lcom/android/gallery3d/data/BytesBufferPool;

    const v1, 0x32000

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 67
    return-void
.end method

.method public static getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method public static getTargetSize(IZ)I
    .locals 2
    .parameter "type"
    .parameter "supportFullImage"

    .prologue
    .line 118
    packed-switch p0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    if-eqz p1, :cond_0

    const/16 v0, 0x280

    .line 122
    :goto_0
    return v0

    .line 120
    :cond_0
    const/16 v0, 0x500

    goto :goto_0

    .line 122
    :pswitch_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method


# virtual methods
.method public calcItemRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 11
    .parameter "rect"
    .parameter "slotSize"

    .prologue
    const/4 v7, 0x1

    const v10, 0x3fcccccd

    const/4 v8, 0x0

    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v6

    .line 178
    .local v6, rotation:I
    div-int/lit8 v9, v6, 0x5a

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v7, :cond_2

    move v5, v7

    .line 180
    .local v5, rotated:Z
    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v3

    .line 181
    .local v3, imgWidth:I
    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    .line 185
    .local v2, imgHeight:I
    :goto_2
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 186
    int-to-float v7, v3

    int-to-float v9, v2

    div-float v4, v7, v9

    .line 187
    .local v4, ratio:F
    cmpl-float v7, v4, v10

    if-lez v7, :cond_5

    .line 188
    int-to-float v7, v2

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 192
    :cond_1
    :goto_3
    if-lt v3, v2, :cond_6

    .line 193
    move v1, p2

    .line 194
    .local v1, dispWidth:I
    mul-int v7, v1, v2

    int-to-float v7, v7

    int-to-float v9, v3

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 199
    .local v0, dispHeight:I
    :goto_4
    iput-boolean v8, p0, Lcom/android/gallery3d/data/MediaItem;->mSizeInvalid:Z

    .line 205
    .end local v4           #ratio:F
    :goto_5
    invoke-virtual {p1, v8, v8, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    return-object p1

    .end local v0           #dispHeight:I
    .end local v1           #dispWidth:I
    .end local v2           #imgHeight:I
    .end local v3           #imgWidth:I
    .end local v5           #rotated:Z
    :cond_2
    move v5, v8

    .line 178
    goto :goto_0

    .line 180
    .restart local v5       #rotated:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    goto :goto_1

    .line 181
    .restart local v3       #imgWidth:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    goto :goto_2

    .line 189
    .restart local v2       #imgHeight:I
    .restart local v4       #ratio:F
    :cond_5
    const/high16 v7, 0x3f20

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 190
    int-to-float v7, v3

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_3

    .line 196
    :cond_6
    move v0, p2

    .line 197
    .restart local v0       #dispHeight:I
    mul-int v7, v0, v3

    int-to-float v7, v7

    int-to-float v9, v2

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .restart local v1       #dispWidth:I
    goto :goto_4

    .line 201
    .end local v0           #dispHeight:I
    .end local v1           #dispWidth:I
    .end local v4           #ratio:F
    :cond_7
    move v0, p2

    .restart local v0       #dispHeight:I
    move v1, p2

    .line 202
    .restart local v1       #dispWidth:I
    iput-boolean v7, p0, Lcom/android/gallery3d/data/MediaItem;->mSizeInvalid:Z

    goto :goto_5
.end method

.method public calcItemWidth(I)I
    .locals 9
    .parameter "slotSize"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const v8, 0x3fcccccd

    .line 146
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    .line 147
    .local v4, rotation:I
    div-int/lit8 v7, v4, 0x5a

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v5, :cond_1

    move v3, v5

    .line 149
    .local v3, rotated:Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    .line 150
    .local v1, imgWidth:I
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    .line 152
    .local v0, imgHeight:I
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 153
    int-to-float v5, v1

    int-to-float v7, v0

    div-float v2, v5, v7

    .line 154
    .local v2, ratio:F
    cmpl-float v5, v2, v8

    if-lez v5, :cond_4

    .line 155
    int-to-float v5, v0

    mul-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 159
    :cond_0
    :goto_3
    iput-boolean v6, p0, Lcom/android/gallery3d/data/MediaItem;->mSizeInvalid:Z

    .line 160
    mul-int v5, p1, v1

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 163
    .end local v2           #ratio:F
    .end local p1
    :goto_4
    return p1

    .end local v0           #imgHeight:I
    .end local v1           #imgWidth:I
    .end local v3           #rotated:Z
    .restart local p1
    :cond_1
    move v3, v6

    .line 147
    goto :goto_0

    .line 149
    .restart local v3       #rotated:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    goto :goto_1

    .line 150
    .restart local v1       #imgWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    goto :goto_2

    .line 156
    .restart local v0       #imgHeight:I
    .restart local v2       #ratio:F
    :cond_4
    const/high16 v5, 0x3f20

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    .line 157
    int-to-float v5, v1

    mul-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_3

    .line 162
    .end local v2           #ratio:F
    :cond_5
    iput-boolean v5, p0, Lcom/android/gallery3d/data/MediaItem;->mSizeInvalid:Z

    goto :goto_4
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Lcom/android/gallery3d/data/Face;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    const-wide/16 v1, 0x0

    .line 78
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 79
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 80
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public isSizeInvalid()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/gallery3d/data/MediaItem;->mSizeInvalid:Z

    return v0
.end method

.method public abstract requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method

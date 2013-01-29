.class public Lcom/android/gallery3d/photoeditor/filters/CropFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "CropFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/CropFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bounds:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCropBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/android/gallery3d/photoeditor/Photo;->changeDimension(II)V

    .line 51
    const-string v1, "android.media.effect.effects.CropEffect"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 52
    .local v0, effect:Landroid/media/effect/Effect;
    const-string v1, "xorigin"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string v1, "yorigin"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v1, "width"

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v1, "height"

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 57
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->bounds:Landroid/graphics/RectF;

    .line 67
    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->bounds:Landroid/graphics/RectF;

    .line 40
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->bounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method

.class public Lcom/android/gallery3d/photoeditor/filters/RotateFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "RotateFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/RotateFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private degrees:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 43
    iget v1, p0, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->degrees:F

    const/high16 v2, 0x4334

    rem-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/android/gallery3d/photoeditor/Photo;->changeDimension(II)V

    .line 46
    :cond_0
    const-string v1, "android.media.effect.effects.RotateEffect"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 47
    .local v0, effect:Landroid/media/effect/Effect;
    const-string v1, "angle"

    iget v2, p0, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->degrees:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 49
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->degrees:F

    .line 59
    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->degrees:F

    .line 39
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->degrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    return-void
.end method

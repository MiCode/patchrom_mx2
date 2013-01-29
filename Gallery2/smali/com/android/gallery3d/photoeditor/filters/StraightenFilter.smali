.class public Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "StraightenFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;",
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
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->CREATOR:Landroid/os/Parcelable$Creator;

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
.method public getAngle()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->degrees:F

    return v0
.end method

.method public process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 45
    const-string v1, "android.media.effect.effects.StraightenEffect"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 46
    .local v0, effect:Landroid/media/effect/Effect;
    const-string v1, "maxAngle"

    const/high16 v2, 0x4234

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    const-string v1, "angle"

    iget v2, p0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->degrees:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    iput v0, p0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->degrees:F

    .line 59
    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->degrees:F

    .line 37
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->degrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    return-void
.end method

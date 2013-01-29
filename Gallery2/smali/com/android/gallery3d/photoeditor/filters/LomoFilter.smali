.class public Lcom/android/gallery3d/photoeditor/filters/LomoFilter;
.super Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;
.source "LomoFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/LomoFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/LomoFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/LomoFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/LomoFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 6
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 19
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 20
    .local v1, random:Ljava/util/Random;
    const-string v2, "LomoEffect"

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/filters/LomoFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 21
    .local v0, effect:Landroid/media/effect/Effect;
    const-string v2, "YOffset"

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const-string v2, "ROffset"

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    const-string v2, "GOffset"

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const-string v2, "BOffset"

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    const-string v2, "VignetteScale"

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    const v4, 0x3ecccccd

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 27
    return-void
.end method

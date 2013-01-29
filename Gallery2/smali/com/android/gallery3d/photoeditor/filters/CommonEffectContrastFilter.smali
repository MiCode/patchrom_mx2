.class public Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;
.super Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;
.source "CommonEffectContrastFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/high16 v6, 0x4348

    const/high16 v5, 0x42c8

    .line 16
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    .line 17
    .local v0, commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;
    const-string v2, "CommonEffect"

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    .line 18
    .local v1, effect:Landroid/media/effect/Effect;
    const-string v2, "brightnessValue"

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getBrightness()F

    move-result v3

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    const-string v2, "contrastValue"

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getContrast()F

    move-result v3

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    const-string v2, "colorTemperatureValue"

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getColorTemperature()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    const-string v2, "saturationValue"

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getSaturation()F

    move-result v3

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 23
    return-void
.end method

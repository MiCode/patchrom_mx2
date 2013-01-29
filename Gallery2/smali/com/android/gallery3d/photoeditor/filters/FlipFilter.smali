.class public Lcom/android/gallery3d/photoeditor/filters/FlipFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "FlipFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/FlipFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final flips:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->flips:[Z

    return-void
.end method


# virtual methods
.method public process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 41
    const-string v1, "android.media.effect.effects.FlipEffect"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 42
    .local v0, effect:Landroid/media/effect/Effect;
    const-string v1, "horizontal"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->flips:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    const-string v1, "vertical"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->flips:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 45
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->flips:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 55
    return-void
.end method

.method public setFlip(ZZ)V
    .locals 2
    .parameter "flipHorizontal"
    .parameter "flipVertical"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->flips:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->flips:[Z

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    .line 37
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->flips:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 50
    return-void
.end method

.class public Lcom/android/camera/ui/MaskedRotateImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "MaskedRotateImageView.java"


# instance fields
.field private mFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/MaskedRotateImageView;->mFilter:Landroid/graphics/ColorFilter;

    .line 15
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->drawableStateChanged()V

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/ui/MaskedRotateImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/MaskedRotateImageView;->mFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/android/camera/ui/MaskedRotateImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/camera/ui/MaskedRotateImageView;->mFilter:Landroid/graphics/ColorFilter;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MaskedRotateImageView;->mFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MaskedRotateImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MaskedRotateImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

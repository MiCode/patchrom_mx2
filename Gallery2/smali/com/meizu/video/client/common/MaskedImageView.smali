.class public Lcom/meizu/video/client/common/MaskedImageView;
.super Landroid/widget/ImageView;
.source "MaskedImageView.java"


# instance fields
.field private mFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/common/MaskedImageView;->mFilter:Landroid/graphics/ColorFilter;

    .line 18
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 22
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 23
    invoke-virtual {p0}, Lcom/meizu/video/client/common/MaskedImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/meizu/video/client/common/MaskedImageView;->mFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/meizu/video/client/common/MaskedImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/meizu/video/client/common/MaskedImageView;->mFilter:Landroid/graphics/ColorFilter;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/common/MaskedImageView;->mFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/common/MaskedImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/common/MaskedImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

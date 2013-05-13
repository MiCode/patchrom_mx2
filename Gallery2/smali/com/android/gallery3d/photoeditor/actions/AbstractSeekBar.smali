.class abstract Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;
.super Landroid/widget/SeekBar;
.source "AbstractSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f020161

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 39
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 61
    return-void
.end method

.class public abstract Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$SlotRenderer;


# instance fields
.field private final mAddNewFolderIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mAddNewFolderIconPressed:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

.field private final mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mLockIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPanoramaBorder:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020100

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 40
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f0200a2

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 41
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f0200d7

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mLockIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 42
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f0200cf

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaBorder:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 43
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020076

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 44
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020077

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 45
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02001d

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mAddNewFolderIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 46
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02001e

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mAddNewFolderIconPressed:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 47
    return-void
.end method

.method protected static checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 150
    instance-of v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method protected static drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "padding"
    .parameter "frame"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 145
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p4, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 147
    return-void
.end method

.method public static drawRotatedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;ILandroid/graphics/Rect;)V
    .locals 10
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "paint"
    .parameter "rotation"
    .parameter "destRect"

    .prologue
    const/4 v9, 0x0

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 169
    .local v1, bmWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 171
    .local v0, bmHeight:I
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 173
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 174
    .local v5, w:I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 176
    .local v2, h:I
    iget v6, p4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v2, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    int-to-float v6, p3

    invoke-virtual {p0, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 178
    div-int/lit8 v6, p3, 0x5a

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 179
    move v4, v5

    .local v4, t:I
    move v5, v2

    move v2, v4

    .line 181
    .end local v4           #t:I
    :cond_0
    neg-int v6, v5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 183
    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    int-to-float v7, v2

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 184
    .local v3, scale:F
    invoke-virtual {p0, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 186
    invoke-virtual {p0, p1, v9, v9, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 189
    return-void
.end method


# virtual methods
.method protected drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V
    .locals 7
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 60
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 62
    if-eqz p5, :cond_1

    .line 63
    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    invoke-interface {p1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 64
    int-to-float v2, p5

    invoke-interface {p1, v2, v4, v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 65
    div-int/lit8 v2, p5, 0x5a

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 66
    move v1, p4

    .line 67
    .local v1, temp:I
    move p4, p3

    .line 68
    move p3, v1

    .line 70
    .end local v1           #temp:I
    :cond_0
    neg-int v2, p3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    neg-int v3, p4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-interface {p1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 74
    :cond_1
    int-to-float v2, p3

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p4

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 77
    .local v0, scale:F
    invoke-interface {p1, v0, v0, v5}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 78
    invoke-interface {p2, p1, v6, v6}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 80
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 81
    return-void
.end method

.method protected drawContentStretched(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;II)V
    .locals 4
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 52
    int-to-float v0, p3

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p4

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 54
    invoke-interface {p2, p1, v3, v3}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 55
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 56
    return-void
.end method

.method protected drawLockIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mLockIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v4

    .line 103
    .local v4, w:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mLockIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v5

    .line 104
    .local v5, h:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mLockIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v1, p2, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, p3, v5

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 105
    return-void
.end method

.method protected drawNewFolderIcon(Lcom/android/gallery3d/ui/GLCanvas;Z)V
    .locals 6
    .parameter "canvas"
    .parameter "pressed"

    .prologue
    const/4 v2, 0x0

    .line 97
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mAddNewFolderIconPressed:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 98
    .local v0, v:Lcom/android/gallery3d/ui/ResourceTexture;
    :goto_0
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 99
    return-void

    .line 97
    .end local v0           #v:Lcom/android/gallery3d/ui/ResourceTexture;
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mAddNewFolderIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0
.end method

.method protected drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 137
    return-void
.end method

.method protected drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/android/gallery3d/ui/FadeOutTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/FadeOutTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 133
    return-void
.end method

.method protected drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 141
    return-void
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 125
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/BitmapTexture;III)I
    .locals 7
    .parameter "canvas"
    .parameter "labelTexture"
    .parameter "boderSize"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 158
    invoke-static {p2}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    .line 159
    .local v0, content:Lcom/android/gallery3d/ui/Texture;
    if-eqz v0, :cond_0

    .line 160
    move v6, p3

    .line 161
    .local v6, b:I
    invoke-interface {v0}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v5

    .line 162
    .local v5, h:I
    neg-int v2, v6

    sub-int v1, p5, v5

    add-int v3, v1, v6

    add-int v1, p4, v6

    add-int v4, v1, v6

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 164
    .end local v5           #h:I
    .end local v6           #b:I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

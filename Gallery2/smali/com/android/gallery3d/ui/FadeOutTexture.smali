.class public Lcom/android/gallery3d/ui/FadeOutTexture;
.super Lcom/android/gallery3d/ui/FadeTexture;
.source "FadeOutTexture.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FadeTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 27
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeOutTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 35
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 37
    :cond_0
    return-void
.end method

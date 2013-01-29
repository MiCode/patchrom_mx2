.class public Lcom/android/gallery3d/ui/FadeInTexture;
.super Lcom/android/gallery3d/ui/FadeTexture;
.source "FadeInTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(ILcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0
    .parameter "color"
    .parameter "texture"

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/FadeTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 29
    iput p1, p0, Lcom/android/gallery3d/ui/FadeInTexture;->mColor:I

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/gallery3d/ui/FadeTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v2, p0, Lcom/android/gallery3d/ui/FadeInTexture;->mColor:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeInTexture;->getRatio()F

    move-result v3

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/gallery3d/ui/GLCanvas;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIII)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

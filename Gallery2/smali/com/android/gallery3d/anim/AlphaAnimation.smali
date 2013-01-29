.class public Lcom/android/gallery3d/anim/AlphaAnimation;
.super Lcom/android/gallery3d/anim/CanvasAnimation;
.source "AlphaAnimation.java"


# instance fields
.field private mCurrentAlpha:F

.field private final mEndAlpha:F

.field private final mStartAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "from"
    .parameter "to"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/anim/CanvasAnimation;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mStartAlpha:F

    .line 29
    iput p2, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mEndAlpha:F

    .line 30
    iput p1, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    .line 31
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 36
    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mStartAlpha:F

    iget v1, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mEndAlpha:F

    iget v2, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mStartAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    .line 47
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mStartAlpha:F

    iput v0, p0, Lcom/android/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    .line 52
    return-void
.end method

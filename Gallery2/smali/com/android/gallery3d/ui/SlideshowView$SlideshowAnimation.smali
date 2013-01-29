.class Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;
.super Lcom/android/gallery3d/anim/CanvasAnimation;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlideshowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideshowAnimation"
.end annotation


# instance fields
.field private final mHeight:I

.field private mProgress:F

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlideshowView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/SlideshowView;IILjava/util/Random;)V
    .locals 1
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "random"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-direct {p0}, Lcom/android/gallery3d/anim/CanvasAnimation;-><init>()V

    .line 134
    iput p2, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    .line 135
    iput p3, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    .line 136
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->setDuration(I)V

    .line 137
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 141
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlideshowView;->getWidth()I

    move-result v5

    .line 142
    .local v5, viewWidth:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlideshowView;->getHeight()I

    move-result v4

    .line 144
    .local v4, viewHeight:I
    int-to-float v6, v5

    iget v7, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v4

    iget v8, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 145
    .local v3, scale:F
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v0

    .line 146
    .local v0, alpha:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v0, v6

    if-gez v6, :cond_0

    .line 147
    const v6, 0x3f4ccccd

    const v7, 0x3e4ccccd

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    mul-float/2addr v3, v6

    .line 150
    :cond_0
    int-to-float v6, v5

    const/high16 v7, 0x3fc0

    iget v8, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    sub-float/2addr v7, v8

    mul-float v1, v6, v7

    .line 151
    .local v1, centerX:F
    int-to-float v6, v4

    const/high16 v7, 0x3f00

    mul-float v2, v6, v7

    .line 153
    .local v2, centerY:F
    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 154
    const/4 v6, 0x0

    invoke-interface {p1, v3, v3, v6}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 155
    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x2

    return v0
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 164
    iput p1, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    .line 165
    return-void
.end method

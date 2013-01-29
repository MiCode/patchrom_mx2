.class public Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;
.super Lcom/android/gallery3d/ui/SlotView$SlotAnimation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScatteringAnimation"
.end annotation


# instance fields
.field private PHOTO_DISTANCE:I

.field private mCenter:Lcom/android/gallery3d/ui/RelativePosition;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/RelativePosition;)V
    .locals 1
    .parameter "center"

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;-><init>()V

    .line 427
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;->PHOTO_DISTANCE:I

    .line 431
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;->mCenter:Lcom/android/gallery3d/ui/RelativePosition;

    .line 432
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 5
    .parameter "canvas"
    .parameter "slotIndex"
    .parameter "target"

    .prologue
    const/high16 v4, 0x3f80

    .line 436
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;->mCenter:Lcom/android/gallery3d/ui/RelativePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RelativePosition;->getX()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->mProgress:F

    sub-float v1, v4, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;->mCenter:Lcom/android/gallery3d/ui/RelativePosition;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/RelativePosition;->getY()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->mProgress:F

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;->PHOTO_DISTANCE:I

    mul-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->mProgress:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 440
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->mProgress:F

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 441
    return-void
.end method

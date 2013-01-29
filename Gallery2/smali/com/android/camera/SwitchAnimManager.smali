.class public Lcom/android/camera/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# instance fields
.field private mAnimStartTime:J

.field private mPreviewFrameLayoutWidth:I

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public drawAnimationWithoutScale(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 17
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v15, v1, v5

    .line 124
    .local v15, timeDiff:J
    long-to-float v1, v15

    const/high16 v2, 0x43c8

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1

    .line 125
    :cond_0
    long-to-float v1, v15

    const/high16 v2, 0x43c8

    div-float v14, v1, v2

    .line 127
    .local v14, fraction:F
    move/from16 v0, p2

    int-to-float v1, v0

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float v12, v1, v2

    .line 128
    .local v12, centerX:F
    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float v13, v1, v2

    .line 129
    .local v13, centerY:F
    div-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    sub-float v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 130
    .local v3, previewX:I
    div-int/lit8 v1, p5, 0x2

    int-to-float v1, v1

    sub-float v1, v13, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 132
    .local v4, previewY:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 133
    .local v7, reviewX:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v13, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 136
    .local v8, reviewY:I
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v11

    .line 137
    .local v11, alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    .line 138
    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 141
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v14

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 142
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    move-object/from16 v5, p7

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 143
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 144
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public drawDarkPreviewWithoutScale(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z
    .locals 9
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "review"

    .prologue
    const/high16 v4, 0x4000

    .line 175
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v4

    add-float v7, v0, v1

    .line 176
    .local v7, centerX:F
    int-to-float v0, p3

    int-to-float v1, p5

    div-float/2addr v1, v4

    add-float v8, v0, v1

    .line 177
    .local v8, centerY:F
    iget v0, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 178
    .local v2, reviewX:I
    iget v0, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, v8, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 181
    .local v3, reviewY:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v6

    .line 182
    .local v6, alpha:F
    const v0, 0x3f4ccccd

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 183
    iget v4, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    iget v5, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    move-object v0, p6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 184
    invoke-interface {p1, v6}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    .line 62
    return-void
.end method

.method public setReviewDrawingSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    .line 54
    iput p2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    .line 55
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 67
    return-void
.end method

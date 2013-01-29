.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field private mAnimOrientation:I

.field private mAnimStartTime:J

.field private mCenterDelta:F

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mGap:F

.field private mHalfGap:F

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;

.field private final mZoomInInterpolator:Landroid/view/animation/Interpolator;

.field private final mZoomOutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mZoomOutInterpolator:Landroid/view/animation/Interpolator;

    .line 43
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mZoomInInterpolator:Landroid/view/animation/Interpolator;

    .line 44
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    return-void
.end method


# virtual methods
.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 21
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v18, v2, v6

    .line 109
    .local v18, timeDiff:J
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x43fa

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 158
    :goto_0
    return v2

    .line 110
    :cond_0
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x43fa

    div-float v15, v2, v3

    .line 111
    .local v15, fraction:F
    const/high16 v17, 0x3f80

    .line 112
    .local v17, scale:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 113
    .local v13, centerX:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    .line 114
    .local v14, centerY:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_2

    .line 115
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v3, v6

    add-float v13, v2, v3

    .line 120
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v2, v2

    mul-float v16, v2, v17

    .line 121
    .local v16, height:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v2, v2

    mul-float v20, v2, v17

    .line 122
    .local v20, width:F
    float-to-int v4, v13

    .line 123
    .local v4, previewX:I
    float-to-int v5, v14

    .line 124
    .local v5, previewY:I
    float-to-int v8, v13

    .line 125
    .local v8, reviewX:I
    float-to-int v9, v14

    .line 126
    .local v9, reviewY:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 152
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v12

    .line 153
    .local v12, alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 154
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 155
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 157
    move/from16 v0, v20

    float-to-int v10, v0

    move/from16 v0, v16

    float-to-int v11, v0

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 158
    const/4 v2, 0x1

    goto :goto_0

    .line 117
    .end local v4           #previewX:I
    .end local v5           #previewY:I
    .end local v8           #reviewX:I
    .end local v9           #reviewY:I
    .end local v12           #alpha:F
    .end local v16           #height:F
    .end local v20           #width:F
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v3, v6

    add-float v14, v2, v3

    goto :goto_1

    .line 128
    .restart local v4       #previewX:I
    .restart local v5       #previewY:I
    .restart local v8       #reviewX:I
    .restart local v9       #reviewY:I
    .restart local v16       #height:F
    .restart local v20       #width:F
    :sswitch_0
    sub-float v2, v13, v20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 129
    const/high16 v2, 0x4000

    div-float v2, v16, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    add-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 131
    move v9, v5

    .line 132
    goto :goto_2

    .line 134
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    add-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 135
    const/high16 v2, 0x4000

    div-float v2, v20, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 136
    sub-float v2, v14, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 137
    move v8, v4

    .line 138
    goto/16 :goto_2

    .line 140
    :sswitch_2
    add-float v2, v13, v20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 141
    const/high16 v2, 0x4000

    div-float v2, v16, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 142
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 143
    move v9, v5

    .line 144
    goto/16 :goto_2

    .line 146
    :sswitch_3
    sub-float v2, v14, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 147
    const/high16 v2, 0x4000

    div-float v2, v20, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 148
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    add-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 149
    move v8, v4

    goto/16 :goto_2

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "animOrientation"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    .line 64
    return-void
.end method

.method public startAnimation(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const v4, 0x3f8ccccd

    const v3, 0x3dcccccd

    const/high16 v2, 0x4000

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 71
    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    .line 72
    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    .line 73
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 75
    :sswitch_0
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 76
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 77
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 78
    int-to-float v0, p3

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 79
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    goto :goto_0

    .line 82
    :sswitch_1
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 83
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 84
    add-int v0, p2, p4

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    .line 85
    neg-int v0, p4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 86
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    goto :goto_0

    .line 89
    :sswitch_2
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 90
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 91
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 92
    neg-int v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 93
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    goto :goto_0

    .line 96
    :sswitch_3
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 97
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 98
    int-to-float v0, p2

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    .line 99
    int-to-float v0, p4

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 100
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

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

.field private mIsRecordCapture:Z

.field private mPositionX:I

.field private mPositionY:I

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;

.field private final mZoomInInterpolator:Landroid/view/animation/Interpolator;

.field private final mZoomOutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mZoomOutInterpolator:Landroid/view/animation/Interpolator;

    .line 45
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mZoomInInterpolator:Landroid/view/animation/Interpolator;

    .line 46
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureAnimManager;->mIsRecordCapture:Z

    .line 67
    return-void
.end method


# virtual methods
.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 21
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v18, v2, v6

    .line 122
    .local v18, timeDiff:J
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x43fa

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 193
    :goto_0
    return v2

    .line 123
    :cond_0
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x43fa

    div-float v15, v2, v3

    .line 124
    .local v15, fraction:F
    const/high16 v17, 0x3f80

    .line 125
    .local v17, scale:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 126
    .local v13, centerX:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    .line 127
    .local v14, centerY:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_4

    .line 128
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CaptureAnimManager;->mIsRecordCapture:Z

    if-eqz v2, :cond_3

    .line 129
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x4396

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 130
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 151
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v2, v2

    mul-float v16, v2, v17

    .line 152
    .local v16, height:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v2, v2

    mul-float v20, v2, v17

    .line 153
    .local v20, width:F
    float-to-int v4, v13

    .line 154
    .local v4, previewX:I
    float-to-int v5, v14

    .line 155
    .local v5, previewY:I
    float-to-int v8, v13

    .line 156
    .local v8, reviewX:I
    float-to-int v9, v14

    .line 157
    .local v9, reviewY:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 183
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v12

    .line 184
    .local v12, alpha:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CaptureAnimManager;->mIsRecordCapture:Z

    if-eqz v2, :cond_7

    .line 185
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CaptureAnimManager;->mPositionX:I

    .end local v4           #previewX:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mPositionY:I

    .end local v5           #previewY:I
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 190
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 192
    move/from16 v0, v20

    float-to-int v10, v0

    move/from16 v0, v16

    float-to-int v11, v0

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 193
    const/4 v2, 0x1

    goto :goto_0

    .line 132
    .end local v8           #reviewX:I
    .end local v9           #reviewY:I
    .end local v12           #alpha:F
    .end local v16           #height:F
    .end local v20           #width:F
    :cond_2
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x4396

    sub-float/2addr v2, v3

    const/high16 v3, 0x437a

    div-float v15, v2, v3

    .line 133
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

    goto :goto_1

    .line 136
    :cond_3
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

    goto :goto_1

    .line 139
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CaptureAnimManager;->mIsRecordCapture:Z

    if-eqz v2, :cond_6

    .line 140
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x4396

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    goto/16 :goto_1

    .line 143
    :cond_5
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x4396

    sub-float/2addr v2, v3

    const/high16 v3, 0x437a

    div-float v15, v2, v3

    .line 144
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

    goto/16 :goto_1

    .line 147
    :cond_6
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

    goto/16 :goto_1

    .line 159
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

    .line 160
    const/high16 v2, 0x4000

    div-float v2, v16, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 161
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    add-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 162
    move v9, v5

    .line 163
    goto/16 :goto_2

    .line 165
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    add-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 166
    const/high16 v2, 0x4000

    div-float v2, v20, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 167
    sub-float v2, v14, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 168
    move v8, v4

    .line 169
    goto/16 :goto_2

    .line 171
    :sswitch_2
    add-float v2, v13, v20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 172
    const/high16 v2, 0x4000

    div-float v2, v16, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 173
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 174
    move v9, v5

    .line 175
    goto/16 :goto_2

    .line 177
    :sswitch_3
    sub-float v2, v14, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 178
    const/high16 v2, 0x4000

    div-float v2, v20, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 179
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    add-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 180
    move v8, v4

    goto/16 :goto_2

    .line 187
    .restart local v12       #alpha:F
    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 188
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_3

    .line 157
    nop

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
    .line 70
    iput p1, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    .line 71
    return-void
.end method

.method public setRecordCapture(Z)V
    .locals 0
    .parameter "isRecordCapture"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/CaptureAnimManager;->mIsRecordCapture:Z

    .line 75
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

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 82
    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    .line 83
    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    .line 84
    iput p1, p0, Lcom/android/camera/CaptureAnimManager;->mPositionX:I

    .line 85
    iput p2, p0, Lcom/android/camera/CaptureAnimManager;->mPositionY:I

    .line 86
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 88
    :sswitch_0
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 89
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 90
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 91
    int-to-float v0, p3

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 92
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    goto :goto_0

    .line 95
    :sswitch_1
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 96
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 97
    add-int v0, p2, p4

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    .line 98
    neg-int v0, p4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 99
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    goto :goto_0

    .line 102
    :sswitch_2
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 103
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 104
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 105
    neg-int v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 106
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    goto :goto_0

    .line 109
    :sswitch_3
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 110
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 111
    int-to-float v0, p2

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    .line 112
    int-to-float v0, p4

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 113
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

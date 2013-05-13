.class public Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;
.super Ljava/lang/Object;
.source "DoodleShapeHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrameBmp:Landroid/graphics/Bitmap;

.field private mFrameCanvas:Landroid/graphics/Canvas;

.field private mInsideDownOff:I

.field private mInsideFrameOff:I

.field private mInsideFramePath:Landroid/graphics/Path;

.field private mInsideTriangelOffx:I

.field private mInsideTriangleOffy:I

.field private mInsideTrianglePath:Landroid/graphics/Path;

.field private mInsideTriangleVertex:[[F

.field private mOutSideTrianglePath:Landroid/graphics/Path;

.field private mOutSideframePath:Landroid/graphics/Path;

.field private mOutsideFrameOff:I

.field private mOutsideTriangelOffx:I

.field private mOutsideTriangleOffy:I

.field private mOutsideTriangleVertex:[[F

.field private mPhotoHeight:F

.field private mPhotoWidth:F

.field private mShapePaint:Landroid/graphics/Paint;

.field private mWavyLineBmp:Landroid/graphics/Bitmap;

.field private mWavyLineCanvas:Landroid/graphics/Canvas;

.field private mWavyLinePath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;FFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "context"
    .parameter "photoWidth"
    .parameter "photoHeight"
    .parameter "shapePaint"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->resetDrawingParams(FFLandroid/graphics/Paint;)V

    .line 48
    return-void
.end method

.method private drawArrowTriangle(Landroid/graphics/Canvas;FFFFF)V
    .locals 32
    .parameter "canvas"
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"
    .parameter "scale"

    .prologue
    .line 129
    const/high16 v3, 0x4220

    mul-float v3, v3, p6

    float-to-double v0, v3

    move-wide/from16 v19, v0

    .line 130
    .local v19, arrowH:D
    const/high16 v3, 0x41a0

    mul-float v3, v3, p6

    float-to-double v0, v3

    move-wide/from16 v21, v0

    .line 131
    .local v21, arrowL:D
    new-instance v23, Landroid/graphics/PointF;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/PointF;-><init>()V

    .line 132
    .local v23, firstPoint:Landroid/graphics/PointF;
    new-instance v27, Landroid/graphics/PointF;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/PointF;-><init>()V

    .line 133
    .local v27, secondPoint:Landroid/graphics/PointF;
    div-double v3, v21, v19

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    .line 134
    .local v6, awrad:D
    mul-double v3, v21, v21

    mul-double v11, v19, v19

    add-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 135
    .local v9, arraow_len:D
    sub-float v4, p4, p2

    sub-float v5, p5, p3

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->rotateVec(FFDZD)[D

    move-result-object v25

    .line 136
    .local v25, firstXY:[D
    sub-float v12, p4, p2

    sub-float v13, p5, p3

    neg-double v14, v6

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-wide/from16 v17, v9

    invoke-direct/range {v11 .. v18}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->rotateVec(FFDZD)[D

    move-result-object v29

    .line 138
    .local v29, secondXY:[D
    new-instance v24, Ljava/lang/Double;

    move/from16 v0, p4

    float-to-double v3, v0

    const/4 v5, 0x0

    aget-wide v11, v25, v5

    sub-double/2addr v3, v11

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 139
    .local v24, firstX:Ljava/lang/Double;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->floatValue()F

    move-result v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 140
    new-instance v26, Ljava/lang/Double;

    move/from16 v0, p5

    float-to-double v3, v0

    const/4 v5, 0x1

    aget-wide v11, v25, v5

    sub-double/2addr v3, v11

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 141
    .local v26, firstY:Ljava/lang/Double;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->floatValue()F

    move-result v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 142
    new-instance v28, Ljava/lang/Double;

    move/from16 v0, p4

    float-to-double v3, v0

    const/4 v5, 0x0

    aget-wide v11, v29, v5

    sub-double/2addr v3, v11

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 143
    .local v28, secondX:Ljava/lang/Double;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->floatValue()F

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 144
    new-instance v30, Ljava/lang/Double;

    move/from16 v0, p5

    float-to-double v3, v0

    const/4 v5, 0x1

    aget-wide v11, v29, v5

    sub-double/2addr v3, v11

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 145
    .local v30, secondY:Ljava/lang/Double;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->floatValue()F

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 147
    new-instance v31, Landroid/graphics/Path;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Path;-><init>()V

    .line 148
    .local v31, triangle:Landroid/graphics/Path;
    move-object/from16 v0, v31

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 149
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 152
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->close()V

    .line 153
    return-void
.end method

.method private getRectF(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 10
    .parameter "downPoint"
    .parameter "lastPoint"

    .prologue
    .line 356
    iget v8, p1, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    mul-float v1, v8, v9

    .line 357
    .local v1, downX:F
    iget v8, p1, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    mul-float v2, v8, v9

    .line 358
    .local v2, downY:F
    iget v8, p2, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    mul-float v3, v8, v9

    .line 359
    .local v3, lastX:F
    iget v8, p2, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    mul-float v4, v8, v9

    .line 360
    .local v4, lastY:F
    iget v8, p1, Landroid/graphics/PointF;->x:F

    iget v9, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    iget v8, p1, Landroid/graphics/PointF;->y:F

    iget v9, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 361
    move v5, v3

    .line 362
    .local v5, left:F
    move v7, v2

    .line 363
    .local v7, top:F
    move v6, v1

    .line 364
    .local v6, right:F
    move v0, v4

    .line 381
    .local v0, bottom:F
    :goto_0
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v5, v7, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v8

    .line 365
    .end local v0           #bottom:F
    .end local v5           #left:F
    .end local v6           #right:F
    .end local v7           #top:F
    :cond_0
    iget v8, p1, Landroid/graphics/PointF;->x:F

    iget v9, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    iget v8, p1, Landroid/graphics/PointF;->y:F

    iget v9, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 366
    move v5, v3

    .line 367
    .restart local v5       #left:F
    move v7, v4

    .line 368
    .restart local v7       #top:F
    move v6, v1

    .line 369
    .restart local v6       #right:F
    move v0, v2

    .restart local v0       #bottom:F
    goto :goto_0

    .line 370
    .end local v0           #bottom:F
    .end local v5           #left:F
    .end local v6           #right:F
    .end local v7           #top:F
    :cond_1
    iget v8, p1, Landroid/graphics/PointF;->x:F

    iget v9, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    iget v8, p1, Landroid/graphics/PointF;->y:F

    iget v9, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 371
    move v5, v1

    .line 372
    .restart local v5       #left:F
    move v7, v2

    .line 373
    .restart local v7       #top:F
    move v6, v3

    .line 374
    .restart local v6       #right:F
    move v0, v4

    .restart local v0       #bottom:F
    goto :goto_0

    .line 376
    .end local v0           #bottom:F
    .end local v5           #left:F
    .end local v6           #right:F
    .end local v7           #top:F
    :cond_2
    move v5, v1

    .line 377
    .restart local v5       #left:F
    move v7, v4

    .line 378
    .restart local v7       #top:F
    move v6, v3

    .line 379
    .restart local v6       #right:F
    move v0, v2

    .restart local v0       #bottom:F
    goto :goto_0
.end method

.method private rotateVec(FFDZD)[D
    .locals 13
    .parameter "px"
    .parameter "py"
    .parameter "ang"
    .parameter "isChLen"
    .parameter "newLen"

    .prologue
    .line 158
    const/4 v7, 0x2

    new-array v2, v7, [D

    .line 160
    .local v2, mathstr:[D
    float-to-double v7, p1

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    float-to-double v9, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double v3, v7, v9

    .line 161
    .local v3, vx:D
    float-to-double v7, p1

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    float-to-double v9, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double v5, v7, v9

    .line 162
    .local v5, vy:D
    const/4 v7, 0x0

    aput-wide v3, v2, v7

    .line 163
    const/4 v7, 0x1

    aput-wide v5, v2, v7

    .line 164
    if-eqz p5, :cond_0

    .line 165
    mul-double v7, v3, v3

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 166
    .local v0, d:D
    div-double v7, v3, v0

    mul-double v3, v7, p6

    .line 167
    div-double v7, v5, v0

    mul-double v5, v7, p6

    .line 168
    const/4 v7, 0x0

    aput-wide v3, v2, v7

    .line 169
    const/4 v7, 0x1

    aput-wide v5, v2, v7

    .line 171
    .end local v0           #d:D
    :cond_0
    return-object v2
.end method


# virtual methods
.method public drawArrow(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 17
    .parameter "canvas"
    .parameter "downPoint"
    .parameter "lastPoint"
    .parameter "scale"

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    mul-float v2, v1, v6

    .line 105
    .local v2, startX:F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    mul-float v3, v1, v6

    .line 106
    .local v3, startY:F
    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    mul-float v10, v1, v6

    .line 107
    .local v10, lastX:F
    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    mul-float v11, v1, v6

    .line 109
    .local v11, lastY:F
    sub-float v1, v2, v10

    sub-float v6, v2, v10

    mul-float/2addr v1, v6

    sub-float v6, v11, v3

    sub-float v7, v11, v3

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const/high16 v1, 0x4220

    mul-float v1, v1, p4

    float-to-double v8, v1

    cmpl-double v1, v6, v8

    if-lez v1, :cond_0

    .line 114
    sub-float v1, v11, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v6, v10, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v14, v1, v6

    .line 115
    .local v14, tanValue:F
    float-to-double v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v13, v6

    .line 116
    .local v13, angle:F
    const/high16 v1, 0x4220

    mul-float v1, v1, p4

    float-to-double v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v16, v1, v6

    .line 117
    .local v16, ylenght:F
    const/high16 v1, 0x4220

    mul-float v1, v1, p4

    float-to-double v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v15, v1, v6

    .line 119
    .local v15, xlenght:F
    cmpl-float v1, v3, v11

    if-lez v1, :cond_1

    add-float v5, v11, v16

    .line 120
    .local v5, lineEndy:F
    :goto_0
    cmpl-float v1, v2, v10

    if-lez v1, :cond_2

    add-float v4, v10, v15

    .line 122
    .local v4, lineEndx:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v2

    move v9, v3

    move/from16 v12, p4

    .line 123
    invoke-direct/range {v6 .. v12}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawArrowTriangle(Landroid/graphics/Canvas;FFFFF)V

    .line 125
    .end local v4           #lineEndx:F
    .end local v5           #lineEndy:F
    .end local v13           #angle:F
    .end local v14           #tanValue:F
    .end local v15           #xlenght:F
    .end local v16           #ylenght:F
    :cond_0
    return-void

    .line 119
    .restart local v13       #angle:F
    .restart local v14       #tanValue:F
    .restart local v15       #xlenght:F
    .restart local v16       #ylenght:F
    :cond_1
    sub-float v5, v11, v16

    goto :goto_0

    .line 120
    .restart local v5       #lineEndy:F
    :cond_2
    sub-float v4, v10, v15

    goto :goto_1
.end method

.method public drawFrame(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;IF)V
    .locals 15
    .parameter "canvas"
    .parameter "downPoint"
    .parameter "lastPoint"
    .parameter "color"
    .parameter "scale"

    .prologue
    .line 245
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    mul-float v2, v10, v11

    .line 246
    .local v2, downX:F
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/PointF;->y:F

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    mul-float v3, v10, v11

    .line 247
    .local v3, downY:F
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    mul-float v5, v10, v11

    .line 248
    .local v5, lastX:F
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/PointF;->y:F

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    mul-float v6, v10, v11

    .line 250
    .local v6, lastY:F
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameBmp:Landroid/graphics/Bitmap;

    if-nez v10, :cond_2

    .line 251
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-lez v10, :cond_0

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    float-to-int v10, v10

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    float-to-int v11, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameBmp:Landroid/graphics/Bitmap;

    .line 255
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    .line 256
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    const/4 v10, 0x3

    new-array v10, v10, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_2

    aput-object v12, v10, v11

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    .line 259
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090324

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideDownOff:I

    .line 260
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090325

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangelOffx:I

    .line 261
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090326

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleOffy:I

    .line 262
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090327

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFrameOff:I

    .line 264
    const/4 v10, 0x3

    new-array v10, v10, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_3

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_4

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_5

    aput-object v12, v10, v11

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    .line 265
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090321

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideFrameOff:I

    .line 266
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090322

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangelOffx:I

    .line 267
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090323

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleOffy:I

    .line 269
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideframePath:Landroid/graphics/Path;

    .line 270
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideTrianglePath:Landroid/graphics/Path;

    .line 271
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFramePath:Landroid/graphics/Path;

    .line 272
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTrianglePath:Landroid/graphics/Path;

    .line 275
    :cond_2
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFrameOff:I

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideFrameOff:I

    if-ne v10, v11, :cond_3

    .line 276
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFrameOff:I

    const/high16 v11, 0x40e0

    mul-float v11, v11, p5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFrameOff:I

    .line 279
    :cond_3
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangelOffx:I

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangelOffx:I

    if-ne v10, v11, :cond_4

    .line 280
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangelOffx:I

    const/high16 v11, 0x40e0

    mul-float v11, v11, p5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangelOffx:I

    .line 283
    :cond_4
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameBmp:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 284
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideframePath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 285
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 286
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFramePath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 287
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 288
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 290
    sub-float v10, v2, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideFrameOff:I

    mul-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    sub-float v10, v3, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideFrameOff:I

    mul-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    const/4 v7, 0x1

    .line 293
    .local v7, needTriangle:Z
    :goto_1
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 295
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->getRectF(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v8

    .line 298
    .local v8, orginRect:Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideFrameOff:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, v8, Landroid/graphics/RectF;->top:F

    iget v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideFrameOff:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget v12, v8, Landroid/graphics/RectF;->right:F

    iget v13, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideFrameOff:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    iget v14, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideFrameOff:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 300
    .local v9, outSideFrame:Landroid/graphics/RectF;
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideframePath:Landroid/graphics/Path;

    const/high16 v11, 0x40c0

    mul-float v11, v11, p5

    const/high16 v12, 0x40c0

    mul-float v12, v12, p5

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v9, v11, v12, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 301
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideframePath:Landroid/graphics/Path;

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 304
    if-eqz v7, :cond_5

    .line 305
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aput v2, v10, v11

    .line 306
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v11, 0x1

    aget-object v11, v10, v11

    const/4 v12, 0x0

    cmpg-float v10, v2, v5

    if-gez v10, :cond_8

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangelOffx:I

    int-to-float v10, v10

    add-float/2addr v10, v2

    :goto_2
    aput v10, v11, v12

    .line 307
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v11, 0x2

    aget-object v11, v10, v11

    const/4 v12, 0x0

    cmpg-float v10, v2, v5

    if-gez v10, :cond_9

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleOffy:I

    int-to-float v10, v10

    add-float/2addr v10, v2

    :goto_3
    aput v10, v11, v12

    .line 309
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aput v3, v10, v11

    .line 310
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v11, 0x1

    aget-object v11, v10, v11

    const/4 v12, 0x1

    cmpg-float v10, v3, v6

    if-gez v10, :cond_a

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleOffy:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    :goto_4
    aput v10, v11, v12

    .line 311
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v11, 0x2

    aget-object v11, v10, v11

    const/4 v12, 0x1

    cmpg-float v10, v3, v6

    if-gez v10, :cond_b

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangelOffx:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    :goto_5
    aput v10, v11, v12

    .line 313
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideTrianglePath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 314
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideTrianglePath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 315
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideTrianglePath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 316
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideTrianglePath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleVertex:[[F

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 318
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutSideTrianglePath:Landroid/graphics/Path;

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 322
    :cond_5
    const/16 v10, 0x96

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result p4

    .line 323
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 326
    new-instance v4, Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFrameOff:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, v8, Landroid/graphics/RectF;->top:F

    iget v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFrameOff:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget v12, v8, Landroid/graphics/RectF;->right:F

    iget v13, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFrameOff:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    iget v14, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFrameOff:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 328
    .local v4, insideFrame:Landroid/graphics/RectF;
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFramePath:Landroid/graphics/Path;

    const/high16 v11, 0x4080

    mul-float v11, v11, p5

    const/high16 v12, 0x4080

    mul-float v12, v12, p5

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v4, v11, v12, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 329
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFramePath:Landroid/graphics/Path;

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 330
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideFramePath:Landroid/graphics/Path;

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 333
    if-eqz v7, :cond_6

    .line 334
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v11, 0x0

    aget-object v11, v10, v11

    const/4 v12, 0x0

    cmpg-float v10, v2, v5

    if-gez v10, :cond_c

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideDownOff:I

    int-to-float v10, v10

    add-float/2addr v10, v2

    :goto_6
    aput v10, v11, v12

    .line 335
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v11, 0x1

    aget-object v11, v10, v11

    const/4 v12, 0x0

    cmpg-float v10, v2, v5

    if-gez v10, :cond_d

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangelOffx:I

    int-to-float v10, v10

    add-float/2addr v10, v2

    :goto_7
    aput v10, v11, v12

    .line 336
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v11, 0x2

    aget-object v11, v10, v11

    const/4 v12, 0x0

    cmpg-float v10, v2, v5

    if-gez v10, :cond_e

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleOffy:I

    int-to-float v10, v10

    add-float/2addr v10, v2

    :goto_8
    aput v10, v11, v12

    .line 338
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v11, 0x0

    aget-object v11, v10, v11

    const/4 v12, 0x1

    cmpg-float v10, v3, v6

    if-gez v10, :cond_f

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideDownOff:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    :goto_9
    aput v10, v11, v12

    .line 339
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v11, 0x1

    aget-object v11, v10, v11

    const/4 v12, 0x1

    cmpg-float v10, v3, v6

    if-gez v10, :cond_10

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleOffy:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    :goto_a
    aput v10, v11, v12

    .line 340
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v11, 0x2

    aget-object v11, v10, v11

    const/4 v12, 0x1

    cmpg-float v10, v3, v6

    if-gez v10, :cond_11

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangelOffx:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    :goto_b
    aput v10, v11, v12

    .line 342
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTrianglePath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 343
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTrianglePath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 344
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTrianglePath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 345
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTrianglePath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleVertex:[[F

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 347
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTrianglePath:Landroid/graphics/Path;

    sget-object v12, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 348
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTrianglePath:Landroid/graphics/Path;

    iget-object v12, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 350
    :cond_6
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameBmp:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 351
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mFrameCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 290
    .end local v4           #insideFrame:Landroid/graphics/RectF;
    .end local v7           #needTriangle:Z
    .end local v8           #orginRect:Landroid/graphics/RectF;
    .end local v9           #outSideFrame:Landroid/graphics/RectF;
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 306
    .restart local v7       #needTriangle:Z
    .restart local v8       #orginRect:Landroid/graphics/RectF;
    .restart local v9       #outSideFrame:Landroid/graphics/RectF;
    :cond_8
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangelOffx:I

    int-to-float v10, v10

    sub-float v10, v2, v10

    goto/16 :goto_2

    .line 307
    :cond_9
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleOffy:I

    int-to-float v10, v10

    sub-float v10, v2, v10

    goto/16 :goto_3

    .line 310
    :cond_a
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangleOffy:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    goto/16 :goto_4

    .line 311
    :cond_b
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mOutsideTriangelOffx:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    goto/16 :goto_5

    .line 334
    .restart local v4       #insideFrame:Landroid/graphics/RectF;
    :cond_c
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideDownOff:I

    int-to-float v10, v10

    sub-float v10, v2, v10

    goto/16 :goto_6

    .line 335
    :cond_d
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangelOffx:I

    int-to-float v10, v10

    sub-float v10, v2, v10

    goto/16 :goto_7

    .line 336
    :cond_e
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleOffy:I

    int-to-float v10, v10

    sub-float v10, v2, v10

    goto/16 :goto_8

    .line 338
    :cond_f
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideDownOff:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    goto/16 :goto_9

    .line 339
    :cond_10
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangleOffy:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    goto/16 :goto_a

    .line 340
    :cond_11
    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mInsideTriangelOffx:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    goto/16 :goto_b

    .line 258
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 264
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6
    .parameter "canvas"
    .parameter "downPoint"
    .parameter "lastPoint"

    .prologue
    .line 94
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    mul-float v1, v0, v5

    .line 95
    .local v1, startX:F
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    mul-float v2, v0, v5

    .line 96
    .local v2, startY:F
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    mul-float v3, v0, v5

    .line 97
    .local v3, stopX:F
    iget v0, p3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    mul-float v4, v0, v5

    .line 98
    .local v4, stopY:F
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    return-void
.end method

.method public drawOval(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .parameter "canvas"
    .parameter "downPoint"
    .parameter "lastPoint"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->getRectF(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 241
    .local v0, rectF:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 242
    return-void
.end method

.method public drawRect(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .parameter "canvas"
    .parameter "downPoint"
    .parameter "lastPoint"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->getRectF(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 235
    .local v0, rectF:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 236
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 6
    .parameter "canvas"
    .parameter "color"
    .parameter "selectedShapeId"
    .parameter "downPoint"
    .parameter "lastPoint"
    .parameter "scale"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    packed-switch p3, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawArrow(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawWavyLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    goto :goto_0

    .line 71
    :pswitch_3
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 76
    :pswitch_4
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawOval(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    :pswitch_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move v4, p2

    move v5, p6

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;IF)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public drawWavyLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 23
    .parameter "canvas"
    .parameter "downPoint"
    .parameter "lastPoint"
    .parameter "scale"

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineBmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpg-float v19, v19, v20

    if-lez v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineBmp:Landroid/graphics/Bitmap;

    .line 180
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLinePath:Landroid/graphics/Path;

    .line 181
    new-instance v19, Landroid/graphics/Canvas;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineCanvas:Landroid/graphics/Canvas;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineCanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineBmp:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineBmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLinePath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineCanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Canvas;->save()I

    .line 189
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    move/from16 v20, v0

    mul-float v7, v19, v20

    .line 190
    .local v7, downX:F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    move/from16 v20, v0

    mul-float v8, v19, v20

    .line 191
    .local v8, downY:F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    move/from16 v20, v0

    mul-float v11, v19, v20

    .line 192
    .local v11, lastX:F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    move/from16 v20, v0

    mul-float v12, v19, v20

    .line 194
    .local v12, lastY:F
    const/4 v14, 0x0

    .line 196
    .local v14, sinAngle:F
    move/from16 v16, v7

    .line 197
    .local v16, startX:F
    move/from16 v17, v8

    .line 198
    .local v17, startY:F
    move v9, v7

    .line 199
    .local v9, endX:F
    move v10, v8

    .line 200
    .local v10, endY:F
    sub-float v19, v11, v7

    sub-float v20, v11, v7

    mul-float v19, v19, v20

    sub-float v20, v12, v8

    sub-float v21, v12, v8

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v6, v0

    .line 201
    .local v6, distance:F
    const/4 v13, 0x0

    .line 204
    .local v13, lenght:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLinePath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 205
    :goto_1
    cmpg-float v19, v13, v6

    if-gez v19, :cond_3

    .line 206
    const/high16 v19, 0x43b4

    mul-float v19, v19, v14

    const/high16 v20, 0x41f0

    div-float v19, v19, v20

    div-float v19, v19, p4

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3f91df46a2529d39L

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v15, v0

    .line 207
    .local v15, sinValue:F
    const/high16 v19, 0x4080

    mul-float v19, v19, v15

    mul-float v19, v19, p4

    add-float v10, v8, v19

    .line 208
    const/high16 v19, 0x4000

    mul-float v19, v19, p4

    add-float v9, v9, v19

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLinePath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 211
    move/from16 v16, v9

    .line 212
    move/from16 v17, v10

    .line 213
    const/high16 v19, 0x4000

    mul-float v19, v19, p4

    add-float v14, v14, v19

    .line 214
    const/high16 v19, 0x4000

    mul-float v19, v19, p4

    add-float v13, v13, v19

    goto :goto_1

    .line 217
    .end local v15           #sinValue:F
    :cond_3
    sub-float v19, v12, v8

    sub-float v20, v11, v7

    div-float v18, v19, v20

    .line 218
    .local v18, tanValue:F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->atan(D)D

    move-result-wide v19

    const-wide v21, 0x4066800000000000L

    mul-double v19, v19, v21

    const-wide v21, 0x400921fb54442d18L

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v5, v0

    .line 219
    .local v5, angle:I
    cmpl-float v19, v7, v11

    if-lez v19, :cond_4

    .line 220
    cmpl-float v19, v8, v12

    if-lez v19, :cond_5

    .line 221
    add-int/lit16 v5, v5, -0xb4

    .line 226
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineCanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineCanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLinePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineBmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mWavyLineCanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 223
    :cond_5
    add-int/lit16 v5, v5, 0xb4

    goto :goto_2
.end method

.method public resetDrawingParams(FFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "photoWidth"
    .parameter "photoHeight"
    .parameter "shapePaint"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoWidth:F

    .line 89
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mPhotoHeight:F

    .line 90
    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->mShapePaint:Landroid/graphics/Paint;

    .line 91
    return-void
.end method

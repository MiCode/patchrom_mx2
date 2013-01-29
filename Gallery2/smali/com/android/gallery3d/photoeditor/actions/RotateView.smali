.class Lcom/android/gallery3d/photoeditor/actions/RotateView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "RotateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;
    }
.end annotation


# instance fields
.field private centerX:I

.field private centerY:I

.field private currentRotatedAngle:F

.field private final dashStrokePaint:Landroid/graphics/Paint;

.field private drawGrids:Z

.field private final grids:Landroid/graphics/Path;

.field private final gridsColor:I

.field private lastRotatedAngle:F

.field private listener:Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;

.field private maxRotatedAngle:F

.field private minRotatedAngle:F

.field private final referenceColor:I

.field private final referenceLine:Landroid/graphics/Path;

.field private touchStartAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->grids:Landroid/graphics/Path;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->referenceLine:Landroid/graphics/Path;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->dashStrokePaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->dashStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->dashStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->dashStrokePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->dashStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->gridsColor:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->referenceColor:I

    .line 77
    return-void

    .line 73
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private calculateAngle(Landroid/view/MotionEvent;)F
    .locals 7
    .parameter "ev"

    .prologue
    const v6, 0x40490fdb

    const/4 v5, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 154
    .local v1, x:F
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v2, v3, v4

    .line 157
    .local v2, y:F
    cmpl-float v3, v1, v5

    if-nez v3, :cond_2

    .line 158
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_1

    const v0, 0x3fc90fdb

    .line 163
    .local v0, angle:F
    :goto_0
    cmpl-float v3, v0, v5

    if-ltz v3, :cond_3

    cmpg-float v3, v1, v5

    if-gez v3, :cond_3

    .line 164
    sub-float/2addr v0, v6

    .line 168
    :cond_0
    :goto_1
    return v0

    .line 158
    .end local v0           #angle:F
    :cond_1
    const v0, -0x4036f025

    goto :goto_0

    .line 160
    :cond_2
    div-float v3, v2, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v0, v3

    .restart local v0       #angle:F
    goto :goto_0

    .line 165
    :cond_3
    cmpg-float v3, v0, v5

    if-gez v3, :cond_0

    cmpg-float v3, v1, v5

    if-gez v3, :cond_0

    .line 166
    add-float/2addr v0, v6

    goto :goto_1
.end method

.method private refreshAngle(FZ)V
    .locals 2
    .parameter "degrees"
    .parameter "fromUser"

    .prologue
    .line 212
    neg-float v0, p1

    const v1, 0x42652ee0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->currentRotatedAngle:F

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->listener:Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->listener:Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;->onAngleChanged(FZ)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->invalidate()V

    .line 217
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->drawGrids:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->dashStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->gridsColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->grids:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->dashStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->currentRotatedAngle:F

    neg-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->dashStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->referenceColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->referenceLine:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->dashStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v8, 0x4080

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onSizeChanged(IIII)V

    .line 108
    div-int/lit8 v4, p1, 0x2

    iput v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    .line 109
    div-int/lit8 v4, p2, 0x2

    iput v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    .line 112
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->referenceLine:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 113
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-double v4, v4

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 114
    .local v1, radius:F
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v4, v4

    sub-float v0, v1, v4

    .line 115
    .local v0, delta:F
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->referenceLine:Landroid/graphics/Path;

    neg-float v5, v0

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 116
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->referenceLine:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v4, v4

    sub-float v0, v1, v4

    .line 118
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->referenceLine:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v5, v5

    neg-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 119
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->referenceLine:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->grids:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 123
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v0, v4, v8

    .line 124
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float v2, v4, v0

    .local v2, x:F
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->grids:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 126
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->grids:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    add-float/2addr v2, v0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v0, v4, v8

    .line 129
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float v3, v4, v0

    .local v3, y:F
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->grids:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 131
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->grids:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    add-float/2addr v3, v0

    goto :goto_1

    .line 133
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 173
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return v4

    .line 178
    :pswitch_0
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->currentRotatedAngle:F

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->lastRotatedAngle:F

    .line 179
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->calculateAngle(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->touchStartAngle:F

    .line 181
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->listener:Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->listener:Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;

    invoke-interface {v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;->onStartTrackingTouch()V

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->calculateAngle(Landroid/view/MotionEvent;)F

    move-result v1

    .line 188
    .local v1, touchAngle:F
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->touchStartAngle:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->lastRotatedAngle:F

    add-float v0, v2, v3

    .line 190
    .local v0, rotatedAngle:F
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->maxRotatedAngle:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->minRotatedAngle:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 193
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->currentRotatedAngle:F

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->lastRotatedAngle:F

    .line 194
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->touchStartAngle:F

    goto :goto_0

    .line 196
    :cond_2
    neg-float v2, v0

    const v3, 0x42652ee0

    mul-float/2addr v2, v3

    invoke-direct {p0, v2, v4}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->refreshAngle(FZ)V

    goto :goto_0

    .line 202
    .end local v0           #rotatedAngle:F
    .end local v1           #touchAngle:F
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->listener:Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->listener:Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;

    invoke-interface {v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;->onStopTrackingTouch()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDrawGrids(Z)V
    .locals 0
    .parameter "drawGrids"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->drawGrids:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->invalidate()V

    .line 102
    return-void
.end method

.method public setOnRotateChangeListener(Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->listener:Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;

    .line 97
    return-void
.end method

.method public setRotateSpan(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 87
    const/high16 v0, 0x43b4

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 88
    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->maxRotatedAngle:F

    .line 92
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->maxRotatedAngle:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->minRotatedAngle:F

    .line 93
    return-void

    .line 90
    :cond_0
    const v0, 0x42652ee0

    div-float v0, p1, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->maxRotatedAngle:F

    goto :goto_0
.end method

.method public setRotatedAngle(F)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->refreshAngle(FZ)V

    .line 81
    return-void
.end method

.class Lcom/android/gallery3d/photoeditor/actions/FlipView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "FlipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;
    }
.end annotation


# instance fields
.field private currentHorizontalDegrees:F

.field private currentVerticalDegrees:F

.field private fixedDirection:Z

.field private fixedDirectionHorizontal:Z

.field private lastHorizontalDegrees:F

.field private lastVerticalDegrees:F

.field private listener:Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;

.field private maxFlipSpan:F

.field private touchStartX:F

.field private touchStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private calculateAngle(ZFF)F
    .locals 4
    .parameter "flipHorizontal"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 76
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->getWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    const v3, 0x3eb33333

    mul-float v0, v2, v3

    .line 77
    .local v0, maxDistance:F
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->touchStartX:F

    sub-float v1, p2, v2

    .line 79
    .local v1, moveDistance:F
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 80
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    move v1, v0

    .line 82
    :goto_2
    if-eqz p1, :cond_4

    .line 83
    sub-float v2, p2, v1

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->touchStartX:F

    .line 88
    :cond_0
    :goto_3
    div-float v2, v1, v0

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->maxFlipSpan:F

    mul-float/2addr v2, v3

    return v2

    .line 76
    .end local v0           #maxDistance:F
    .end local v1           #moveDistance:F
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->getHeight()I

    move-result v2

    goto :goto_0

    .line 77
    .restart local v0       #maxDistance:F
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->touchStartY:F

    sub-float v1, v2, p3

    goto :goto_1

    .line 80
    .restart local v1       #moveDistance:F
    :cond_3
    neg-float v1, v0

    goto :goto_2

    .line 85
    :cond_4
    add-float v2, v1, p3

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->touchStartY:F

    goto :goto_3
.end method

.method private refreshAngle(FFZ)V
    .locals 1
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"
    .parameter "fromUser"

    .prologue
    .line 141
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->currentHorizontalDegrees:F

    .line 142
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->currentVerticalDegrees:F

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->listener:Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->listener:Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;->onAngleChanged(FFZ)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 93
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return v4

    .line 98
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->fixedDirection:Z

    .line 99
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->currentHorizontalDegrees:F

    iput v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->lastHorizontalDegrees:F

    .line 100
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->currentVerticalDegrees:F

    iput v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->lastVerticalDegrees:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->touchStartX:F

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->touchStartY:F

    .line 104
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->listener:Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;

    if-eqz v5, :cond_0

    .line 105
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->listener:Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;

    invoke-interface {v5}, Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;->onStartTrackingTouch()V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 113
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 114
    .local v3, y:F
    iget-boolean v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->fixedDirection:Z

    if-eqz v5, :cond_3

    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->fixedDirectionHorizontal:Z

    .line 116
    .local v1, flipHorizontal:Z
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->calculateAngle(ZFF)F

    move-result v0

    .line 117
    .local v0, degrees:F
    iget-boolean v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->fixedDirection:Z

    if-nez v5, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41a0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 118
    iput-boolean v4, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->fixedDirection:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->fixedDirectionHorizontal:Z

    .line 122
    :cond_2
    if-eqz v1, :cond_4

    .line 123
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->lastHorizontalDegrees:F

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->lastVerticalDegrees:F

    invoke-direct {p0, v5, v6, v4}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->refreshAngle(FFZ)V

    goto :goto_0

    .line 114
    .end local v0           #degrees:F
    .end local v1           #flipHorizontal:Z
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->touchStartX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->touchStartY:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    move v1, v4

    goto :goto_1

    .line 125
    .restart local v0       #degrees:F
    .restart local v1       #flipHorizontal:Z
    :cond_4
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->lastHorizontalDegrees:F

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->lastVerticalDegrees:F

    add-float/2addr v6, v0

    invoke-direct {p0, v5, v6, v4}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->refreshAngle(FFZ)V

    goto :goto_0

    .line 131
    .end local v0           #degrees:F
    .end local v1           #flipHorizontal:Z
    .end local v2           #x:F
    .end local v3           #y:F
    :pswitch_2
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->listener:Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;

    if-eqz v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->listener:Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;

    invoke-interface {v5}, Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;->onStopTrackingTouch()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFlipSpan(F)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->maxFlipSpan:F

    .line 72
    return-void
.end method

.method public setFlippedAngles(FF)V
    .locals 1
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->refreshAngle(FFZ)V

    .line 63
    return-void
.end method

.method public setOnFlipChangeListener(Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->listener:Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;

    .line 59
    return-void
.end method

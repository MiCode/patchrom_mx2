.class public Lcom/android/camera/ui/ZoomControlBar;
.super Lcom/android/camera/ui/ZoomControl;
.source "ZoomControlBar.java"


# static fields
.field private static final ICON_SPACING:I

.field private static final THRESHOLD_FIRST_MOVE:I


# instance fields
.field private mBar:Landroid/view/View;

.field private mIconSize:I

.field private mSize:I

.field private mSliderLength:I

.field private mSliderPosition:I

.field private mStartChanging:Z

.field private mTotalIconSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ZoomControlBar;->THRESHOLD_FIRST_MOVE:I

    .line 36
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ZoomControlBar;->ICON_SPACING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderPosition:I

    .line 54
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    const v1, 0x7f0201ae

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomControlBar;->addView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method private getSliderPosition(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 73
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    .line 74
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int v0, p1, v1

    .line 85
    .local v0, pos:I
    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    .line 87
    :cond_1
    return v0

    .line 76
    .end local v0           #pos:I
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v2, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .restart local v0       #pos:I
    goto :goto_0

    .line 79
    .end local v0           #pos:I
    :cond_3
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4

    .line 80
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v2, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .restart local v0       #pos:I
    goto :goto_0

    .line 82
    .end local v0           #pos:I
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int v0, p1, v1

    .restart local v0       #pos:I
    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    if-nez v6, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v4

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 109
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v4, v5

    .line 140
    goto :goto_0

    .line 113
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ZoomControlBar;->setActivated(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->closeZoomControl()V

    goto :goto_1

    .line 118
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/ZoomControlBar;->setActivated(Z)V

    .line 119
    iput-boolean v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mStartChanging:Z

    .line 121
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move v2, v5

    .line 123
    .local v2, isLandscape:Z
    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    :goto_3
    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ZoomControlBar;->getSliderPosition(I)I

    move-result v3

    .line 125
    .local v3, pos:I
    iget-boolean v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mStartChanging:Z

    if-nez v4, :cond_3

    .line 128
    iget v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderPosition:I

    sub-int v1, v4, v3

    .line 129
    .local v1, delta:I
    sget v4, Lcom/android/camera/ui/ZoomControlBar;->THRESHOLD_FIRST_MOVE:I

    if-gt v1, v4, :cond_2

    sget v4, Lcom/android/camera/ui/ZoomControlBar;->THRESHOLD_FIRST_MOVE:I

    neg-int v4, v4

    if-ge v1, v4, :cond_3

    .line 131
    :cond_2
    iput-boolean v5, p0, Lcom/android/camera/ui/ZoomControlBar;->mStartChanging:Z

    .line 134
    .end local v1           #delta:I
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mStartChanging:Z

    if-eqz v4, :cond_4

    .line 135
    const-wide/high16 v6, 0x3ff0

    int-to-double v8, v3

    mul-double/2addr v6, v8

    iget v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    int-to-double v8, v4

    div-double/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ui/ZoomControlBar;->performZoom(D)V

    .line 136
    iput v3, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderPosition:I

    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->requestLayout()V

    goto :goto_1

    .end local v2           #isLandscape:Z
    .end local v3           #pos:I
    :cond_5
    move v2, v4

    .line 121
    goto :goto_2

    .line 123
    .restart local v2       #isLandscape:Z
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    goto :goto_3

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v0, 0x1

    .line 155
    .local v0, isLandscape:Z
    :goto_0
    iget v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    if-nez v6, :cond_1

    .line 201
    :goto_1
    return-void

    .line 153
    .end local v0           #isLandscape:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    .restart local v0       #isLandscape:Z
    :cond_1
    const/4 v2, 0x0

    .line 157
    .local v2, size:I
    if-eqz v0, :cond_2

    .line 158
    sub-int v2, p4, p2

    .line 159
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/view/View;->layout(IIII)V

    .line 168
    :goto_2
    iget v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderPosition:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 169
    iget v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderPosition:I

    .line 174
    .local v4, sliderPosition:I
    :goto_3
    if-eqz v0, :cond_5

    .line 175
    iget v6, p0, Lcom/android/camera/ui/ZoomControl;->mOrientation:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_4

    .line 176
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 177
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 178
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v1, v6, v4

    .line 184
    .local v1, pos:I
    :goto_4
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    .line 185
    .local v3, sliderHeight:I
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v7, 0x0

    div-int/lit8 v8, v3, 0x2

    sub-int v8, v1, v8

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v1

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    .line 161
    .end local v1           #pos:I
    .end local v3           #sliderHeight:I
    .end local v4           #sliderPosition:I
    :cond_2
    sub-int v2, p5, p3

    .line 162
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    iget v7, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 171
    :cond_3
    iget v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v4, v6

    .restart local v4       #sliderPosition:I
    goto :goto_3

    .line 180
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 181
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 182
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v1, v6, v4

    .restart local v1       #pos:I
    goto :goto_4

    .line 188
    .end local v1           #pos:I
    :cond_5
    iget v6, p0, Lcom/android/camera/ui/ZoomControl;->mOrientation:I

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_6

    .line 189
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 190
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 191
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v1, v6, v4

    .line 197
    .restart local v1       #pos:I
    :goto_5
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    .line 198
    .local v5, sliderWidth:I
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    div-int/lit8 v7, v5, 0x2

    sub-int v7, v1, v7

    const/4 v8, 0x0

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v1

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    .line 193
    .end local v1           #pos:I
    .end local v5           #sliderWidth:I
    :cond_6
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 194
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 195
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int v1, v6, v4

    .restart local v1       #pos:I
    goto :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 94
    iput p2, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    .line 100
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sget v1, Lcom/android/camera/ui/ZoomControlBar;->ICON_SPACING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    .line 101
    iget v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    .line 102
    return-void

    .line 97
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/camera/ui/ZoomControl;->setActivated(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 63
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .parameter "orientation"
    .parameter "animation"

    .prologue
    const/16 v1, 0xb4

    .line 146
    if-eq p1, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mOrientation:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->requestLayout()V

    .line 147
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/ZoomControl;->setOrientation(IZ)V

    .line 148
    return-void
.end method

.class public Lcom/android/camera/ui/IndicatorControlBar;
.super Lcom/android/camera/ui/IndicatorControl;
.source "IndicatorControlBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ICON_SPACING:I


# instance fields
.field private mSecondLevelIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/IndicatorControlBar;->ICON_SPACING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/camera/ui/IndicatorControl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public enableZoom(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomControl;->setEnabled(Z)V

    .line 152
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlBar;->dismissSettingPopup()Z

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/ui/OnIndicatorEventListener;->onIndicatorEvent(I)V

    .line 83
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlBar;->getChildCount()I

    move-result v0

    .line 89
    .local v0, count:I
    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sub-int v4, p4, p2

    .line 92
    .local v4, width:I
    sub-int v1, p5, p3

    .line 94
    .local v1, height:I
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlBar;->getPaddingTop()I

    move-result v2

    .line 101
    .local v2, padding:I
    move v3, v4

    .line 104
    .local v3, size:I
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v5, :cond_2

    .line 105
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    add-int v6, v2, v3

    invoke-virtual {v5, v8, v2, v3, v6}, Lcom/android/camera/ui/CameraPicker;->layout(IIII)V

    .line 109
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v5, :cond_3

    .line 110
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    add-int v6, v2, v3

    sub-int v7, v1, v2

    sub-int/2addr v7, v3

    invoke-virtual {v5, v8, v6, v3, v7}, Lcom/android/camera/ui/ZoomControl;->layout(IIII)V

    .line 114
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    sub-int v7, v1, v2

    invoke-virtual {v5, v8, v6, v3, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 119
    .end local v2           #padding:I
    .end local v3           #size:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlBar;->getPaddingLeft()I

    move-result v2

    .line 122
    .restart local v2       #padding:I
    move v3, v1

    .line 124
    .restart local v3       #size:I
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    add-int v6, v2, v3

    invoke-virtual {v5, v2, v8, v6, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 127
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v5, :cond_5

    .line 128
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    add-int v6, v2, v3

    sub-int v7, v4, v2

    sub-int/2addr v7, v3

    invoke-virtual {v5, v6, v8, v7, v3}, Lcom/android/camera/ui/ZoomControl;->layout(IIII)V

    .line 132
    :cond_5
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v5, :cond_0

    .line 133
    iget-object v5, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    sub-int v6, v4, v2

    sub-int/2addr v6, v3

    sub-int v7, v4, v2

    invoke-virtual {v5, v6, v8, v7, v3}, Lcom/android/camera/ui/CameraPicker;->layout(IIII)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/camera/ui/IndicatorControl;->setEnabled(Z)V

    .line 141
    iget v0, p0, Lcom/android/camera/ui/IndicatorControl;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 148
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorControlBar;->enableZoom(Z)V

    goto :goto_1
.end method

.class public abstract Lcom/android/camera/ui/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

.field protected mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

.field protected mOrientation:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;

.field protected mZoomSlider:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const v0, 0x7f020103

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f020109

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f020106

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    .line 58
    return-void
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 3
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 66
    new-instance v0, Lcom/android/camera/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 68
    const v1, 0x7f020109

    if-ne p2, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomControl;->addView(Landroid/view/View;)V

    .line 76
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public closeZoomControl()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/camera/ui/OnIndicatorEventListener;->onIndicatorEvent(I)V

    .line 85
    :cond_0
    return-void
.end method

.method protected performZoom(D)V
    .locals 3
    .parameter "zoomPercentage"

    .prologue
    .line 112
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 113
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    if-ne v1, v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    if-eqz v1, :cond_0

    .line 115
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    .line 116
    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 118
    iput v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 139
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/camera/ui/ZoomControl;->mOrientation:I

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControl;->getChildCount()I

    move-result v0

    .line 126
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ZoomControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 128
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/camera/ui/RotateImageView;

    if-eqz v3, :cond_0

    .line 129
    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

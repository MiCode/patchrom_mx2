.class public Lcom/android/camera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:D

.field private mBorder:Landroid/view/View;

.field private mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const-wide v0, 0x3ff5555555555555L

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0d0149

    invoke-virtual {p0, v0}, Lcom/android/camera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    .line 49
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v12, 0x4000

    const-wide/high16 v10, 0x3fe0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 81
    .local v2, previewWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 84
    .local v1, previewHeight:I
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 85
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 88
    .local v3, vPadding:I
    sub-int/2addr v2, v0

    .line 89
    sub-int/2addr v1, v3

    .line 90
    int-to-double v4, v2

    int-to-double v6, v1

    iget-wide v8, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 91
    int-to-double v4, v1

    iget-wide v6, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v2, v4

    .line 92
    iget v4, p0, Lcom/android/camera/PreviewFrameLayout;->mScreenWidth:I

    if-le v4, v2, :cond_0

    .line 93
    iget v4, p0, Lcom/android/camera/PreviewFrameLayout;->mScreenWidth:I

    mul-int/2addr v4, v1

    div-int v1, v4, v2

    .line 94
    iget v2, p0, Lcom/android/camera/PreviewFrameLayout;->mScreenWidth:I

    .line 104
    :cond_0
    :goto_0
    add-int/2addr v2, v0

    .line 105
    add-int/2addr v1, v3

    .line 108
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 110
    return-void

    .line 97
    :cond_1
    int-to-double v4, v2

    iget-wide v6, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v1, v4

    .line 98
    iget v4, p0, Lcom/android/camera/PreviewFrameLayout;->mScreenHeight:I

    if-le v4, v1, :cond_0

    .line 99
    iget v4, p0, Lcom/android/camera/PreviewFrameLayout;->mScreenHeight:I

    mul-int/2addr v4, v2

    div-int v2, v4, v1

    .line 100
    iget v1, p0, Lcom/android/camera/PreviewFrameLayout;->mScreenHeight:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 119
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 56
    const-wide/high16 v0, 0x3ff0

    div-double p1, v0, p1

    .line 59
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_2

    .line 60
    iput-wide p1, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->requestLayout()V

    .line 63
    :cond_2
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 114
    return-void
.end method

.method public setScreenSize(II)V
    .locals 0
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/camera/PreviewFrameLayout;->mScreenWidth:I

    .line 67
    iput p2, p0, Lcom/android/camera/PreviewFrameLayout;->mScreenHeight:I

    .line 68
    return-void
.end method

.method public showBorder(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

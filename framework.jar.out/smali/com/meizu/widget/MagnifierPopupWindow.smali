.class public Lcom/meizu/widget/MagnifierPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/MagnifierPopupWindow$Smoother;,
        Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final OFFSET_RATIO:F = 1.618f

.field private static final TAG:Ljava/lang/String; = "MagnifierPopupWindow"


# instance fields
.field private mFrameRect:Landroid/graphics/Rect;

.field private mLocationInWindow:[I

.field private mMagnifierView:Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;

.field private mSmoother:Lcom/meizu/widget/MagnifierPopupWindow$Smoother;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 38
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mLocationInWindow:[I

    .line 43
    new-instance v0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;

    invoke-direct {v0, p0, p1}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;-><init>(Lcom/meizu/widget/MagnifierPopupWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mMagnifierView:Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;

    .line 44
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mMagnifierView:Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MagnifierPopupWindow;->setContentView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;->setFocusable(Z)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;->setTouchable(Z)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;->setClippingEnabled(Z)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/meizu/widget/MagnifierPopupWindow;->setInputMethodMode(I)V

    .line 49
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MagnifierPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const v0, 0x103029f

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MagnifierPopupWindow;->setAnimationStyle(I)V

    .line 51
    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MagnifierPopupWindow;->setWindowLayoutType(I)V

    .line 52
    invoke-virtual {p0, v2, v2}, Lcom/meizu/widget/MagnifierPopupWindow;->setWindowLayoutMode(II)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/MagnifierPopupWindow;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private static clipPosition(FFF)F
    .locals 2
    .parameter "pos"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 230
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    .line 231
    add-float v0, p1, p2

    const/high16 v1, 0x4000

    div-float p0, v0, v1

    .line 237
    :cond_0
    :goto_0
    return p0

    .line 232
    :cond_1
    cmpg-float v0, p0, p1

    if-gez v0, :cond_2

    .line 233
    move p0, p1

    goto :goto_0

    .line 234
    :cond_2
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 235
    move p0, p2

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;

    .line 89
    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mSmoother:Lcom/meizu/widget/MagnifierPopupWindow$Smoother;

    .line 90
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mMagnifierView:Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->reset()V

    .line 91
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 92
    return-void
.end method

.method public showMagnifier(Landroid/view/View;FFF)V
    .locals 10
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "scale"

    .prologue
    const/4 v9, -0x1

    .line 57
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mSmoother:Lcom/meizu/widget/MagnifierPopupWindow$Smoother;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;

    invoke-direct {v0, p2, p3}, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mSmoother:Lcom/meizu/widget/MagnifierPopupWindow$Smoother;

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mLocationInWindow:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 64
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mSmoother:Lcom/meizu/widget/MagnifierPopupWindow$Smoother;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mLocationInWindow:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    add-float p2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mSmoother:Lcom/meizu/widget/MagnifierPopupWindow$Smoother;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mLocationInWindow:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    add-float p3, v0, v1

    .line 67
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;

    .line 69
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mMagnifierView:Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->calcHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    mul-float/2addr v1, p4

    div-float v7, v0, v1

    .line 73
    .local v7, offset:F
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {p2, v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;->clipPosition(FFF)F

    move-result p2

    .line 74
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    invoke-static {p3, v7, v0}, Lcom/meizu/widget/MagnifierPopupWindow;->clipPosition(FFF)F

    move-result p3

    .line 76
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mMagnifierView:Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->isDirty()Z

    move-result v5

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->updateMagnifier(Landroid/view/View;FFFZ)V

    .line 77
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mMagnifierView:Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->calcWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p2, v0

    float-to-int v6, v0

    .line 78
    .local v6, left:I
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mMagnifierView:Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->calcHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fcf1aa0

    mul-float/2addr v0, v1

    sub-float v0, p3, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v8, v0

    .line 79
    .local v8, top:I
    invoke-virtual {p0}, Lcom/meizu/widget/MagnifierPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0, v6, v8, v9, v9}, Lcom/meizu/widget/MagnifierPopupWindow;->update(IIII)V

    .line 84
    :goto_1
    return-void

    .line 60
    .end local v6           #left:I
    .end local v7           #offset:F
    .end local v8           #top:I
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow;->mSmoother:Lcom/meizu/widget/MagnifierPopupWindow$Smoother;

    invoke-virtual {v0, p2, p3}, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->add(FF)V

    goto/16 :goto_0

    .line 82
    .restart local v6       #left:I
    .restart local v7       #offset:F
    .restart local v8       #top:I
    :cond_2
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0, v6, v8}, Lcom/meizu/widget/MagnifierPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

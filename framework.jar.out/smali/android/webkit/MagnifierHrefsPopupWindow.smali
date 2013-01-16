.class public Landroid/webkit/MagnifierHrefsPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MagnifierHrefsPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;
    }
.end annotation


# instance fields
.field private mDisRect:Landroid/graphics/Rect;

.field private mMagnifierView:Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;

.field private mPicScale:F

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;)V
    .locals 4
    .parameter "context"
    .parameter "viewCore"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mDisRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;-><init>(Landroid/webkit/MagnifierHrefsPopupWindow;Landroid/content/Context;Landroid/webkit/WebViewCore;)V

    iput-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mMagnifierView:Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;

    .line 44
    invoke-virtual {p2}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mViewWidth:I

    .line 45
    invoke-virtual {p2}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mViewHeight:I

    .line 47
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mMagnifierView:Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;

    invoke-virtual {p0, v0}, Landroid/webkit/MagnifierHrefsPopupWindow;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0, v1}, Landroid/webkit/MagnifierHrefsPopupWindow;->setFocusable(Z)V

    .line 49
    invoke-virtual {p0, v1}, Landroid/webkit/MagnifierHrefsPopupWindow;->setTouchable(Z)V

    .line 50
    invoke-virtual {p0, v1}, Landroid/webkit/MagnifierHrefsPopupWindow;->setOutsideTouchable(Z)V

    .line 51
    invoke-virtual {p0, v3}, Landroid/webkit/MagnifierHrefsPopupWindow;->setClippingEnabled(Z)V

    .line 52
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/webkit/MagnifierHrefsPopupWindow;->setInputMethodMode(I)V

    .line 53
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/webkit/MagnifierHrefsPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    const v0, 0x103029f

    invoke-virtual {p0, v0}, Landroid/webkit/MagnifierHrefsPopupWindow;->setAnimationStyle(I)V

    .line 55
    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Landroid/webkit/MagnifierHrefsPopupWindow;->setWindowLayoutType(I)V

    .line 56
    invoke-virtual {p0, v2, v2}, Landroid/webkit/MagnifierHrefsPopupWindow;->setWindowLayoutMode(II)V

    .line 58
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 92
    return-void
.end method

.method public getPicScale()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mPicScale:F

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mDisRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public showMagnifier(Landroid/view/View;IILandroid/graphics/Rect;Landroid/graphics/Picture;F)V
    .locals 6
    .parameter "v"
    .parameter "viewLastTouchX"
    .parameter "viewLastTouchY"
    .parameter "rt"
    .parameter "picture"
    .parameter "picScale"

    .prologue
    const/4 v5, 0x0

    .line 63
    iput-object p4, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mDisRect:Landroid/graphics/Rect;

    .line 64
    iput p6, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mPicScale:F

    .line 65
    iget-object v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mMagnifierView:Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4, p5}, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->setWidthAndHeight(IILandroid/graphics/Picture;)V

    .line 67
    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mViewWidth:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v2, p2

    iget v3, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mViewWidth:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 70
    .local v0, left:I
    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mViewHeight:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v2, p3

    iget v3, p0, Landroid/webkit/MagnifierHrefsPopupWindow;->mViewHeight:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 77
    .local v1, top:I
    const/16 v2, 0x33

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/webkit/MagnifierHrefsPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 79
    return-void
.end method

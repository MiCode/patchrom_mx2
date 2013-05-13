.class public Lcom/meizu/video/client/common/RecommendGallery;
.super Landroid/widget/Gallery;
.source "RecommendGallery.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method private isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 22
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/meizu/video/client/common/RecommendGallery;->isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const/16 v0, 0x15

    .line 29
    .local v0, keyCode:I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/video/client/common/RecommendGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 30
    const/4 v1, 0x1

    .line 32
    .end local v0           #keyCode:I
    :goto_1
    return v1

    .line 27
    :cond_0
    const/16 v0, 0x16

    .restart local v0       #keyCode:I
    goto :goto_0

    .line 32
    .end local v0           #keyCode:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_1
.end method

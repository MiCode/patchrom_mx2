.class public Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;
.super Landroid/view/View;
.source "DoodleColorPen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;
    }
.end annotation


# instance fields
.field private circleCenterX:I

.field private circleCenterY:I

.field private colorBitmap:Landroid/graphics/Bitmap;

.field private colorMap:Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;

.field private dstRect:Landroid/graphics/Rect;

.field private mListener:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;

.field private selectBmp:Landroid/graphics/Bitmap;

.field private selectHeight:I

.field private selectWidth:I

.field private srcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;

    invoke-direct {v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->colorMap:Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 40
    .local v1, width:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 41
    .local v0, height:I
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->colorMap:Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->createColorMap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    .line 42
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->srcRect:Landroid/graphics/Rect;

    .line 43
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->dstRect:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020183

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->selectBmp:Landroid/graphics/Bitmap;

    .line 45
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->selectBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->selectWidth:I

    .line 46
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->selectBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->selectHeight:I

    .line 47
    return-void
.end method


# virtual methods
.method public locateColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->colorMap:Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->getPoint(I)Landroid/graphics/Point;

    move-result-object v0

    .line 55
    .local v0, point:Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterX:I

    .line 56
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterY:I

    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->invalidate()V

    .line 58
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->srcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->selectBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterX:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->selectWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterY:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->selectHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 98
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v3, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterX:I

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v3, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterY:I

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->invalidate()V

    .line 87
    const/4 v1, 0x1

    return v1

    .line 68
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->colorMap:Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterX:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->getColor(II)I

    move-result v0

    .line 70
    .local v0, pixel:I
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;->onDoodleColorCompleted(I)V

    goto :goto_0

    .line 78
    .end local v0           #pixel:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->colorMap:Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterX:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->circleCenterY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->getColor(II)I

    move-result v0

    .line 80
    .restart local v0       #pixel:I
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;->onDoodleColorChanged(I)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDoodleColorPenChangedListener(Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;

    .line 51
    return-void
.end method

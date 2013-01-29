.class Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;
.super Landroid/view/View;
.source "DoodlePaintDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoodleColorPen"
.end annotation


# instance fields
.field private circleCenterX:I

.field private circleCenterY:I

.field private colorBitmap:Landroid/graphics/Bitmap;

.field private selectBmp:Landroid/graphics/Bitmap;

.field private selectHeight:I

.field private selectWidth:I

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    .line 226
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020061

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    .line 228
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020187

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->selectBmp:Landroid/graphics/Bitmap;

    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->selectBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->selectWidth:I

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->selectBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->selectHeight:I

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->circleCenterX:I

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->circleCenterY:I

    .line 233
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 254
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 256
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->selectBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->circleCenterX:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->selectWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->circleCenterY:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->selectHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v3, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->circleCenterX:I

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v3, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->circleCenterY:I

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->invalidate()V

    .line 249
    const/4 v1, 0x1

    return v1

    .line 242
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->colorBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->circleCenterX:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->circleCenterY:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 243
    .local v0, pixel:I
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;->setPaintColor(I)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

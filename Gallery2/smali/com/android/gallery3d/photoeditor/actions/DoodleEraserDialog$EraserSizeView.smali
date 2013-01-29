.class Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;
.super Landroid/view/View;
.source "DoodleEraserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EraserSizeView"
.end annotation


# instance fields
.field private final STARTX:F

.field private final STARTY:F

.field private mContext:Landroid/content/Context;

.field private mEraserPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 202
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    .line 203
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mRectF:Landroid/graphics/RectF;

    .line 204
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mContext:Landroid/content/Context;

    .line 206
    const v0, 0x7f090180

    invoke-virtual {p1, p2, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->STARTX:F

    .line 207
    const v0, 0x7f090181

    invoke-virtual {p1, p2, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->STARTY:F

    .line 208
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mPaint:Landroid/graphics/Paint;

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mEraserPaint:Landroid/graphics/Paint;

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mEraserPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mEraserPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mEraserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mEraserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mEraserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mPath:Landroid/graphics/Path;

    .line 219
    return-void
.end method

.method private setEraserPath()V
    .locals 9

    .prologue
    .line 231
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->STARTX:F

    .line 232
    .local v3, x:F
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->STARTY:F

    .line 233
    .local v4, y:F
    move v0, v3

    .line 234
    .local v0, endx:F
    move v1, v4

    .line 235
    .local v1, endy:F
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->STARTX:F

    sub-float v5, v3, v5

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mContext:Landroid/content/Context;

    const v8, 0x7f090182

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3fc0

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 237
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->STARTX:F

    sub-float v5, v3, v5

    float-to-double v5, v5

    const-wide v7, 0x3f91df46a2529d39L

    mul-double/2addr v5, v7

    const-wide v7, 0x3ffb333340000000L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v2, v5

    .line 238
    .local v2, sinValue:F
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->STARTY:F

    const/high16 v6, 0x4170

    mul-float/2addr v6, v2

    sub-float v4, v5, v6

    .line 239
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 240
    move v0, v3

    .line 241
    move v1, v4

    .line 242
    const/high16 v5, 0x4000

    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v5

    add-float/2addr v3, v5

    .line 243
    goto :goto_0

    .line 244
    .end local v2           #sinValue:F
    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x40a0

    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->setEraserPath()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mEraserPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    return-void
.end method

.method public setEraserSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mEraserPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->invalidate()V

    .line 228
    return-void
.end method

.method public setRectSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 223
    return-void
.end method

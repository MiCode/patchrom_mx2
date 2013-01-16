.class Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;
.super Landroid/view/View;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MagnifierPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierView"
.end annotation


# instance fields
.field private final kHeight:I

.field private final kWidth:I

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCutFrom:Landroid/graphics/Rect;

.field private mDstRect:Landroid/graphics/Rect;

.field private mSrcRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/meizu/widget/MagnifierPopupWindow;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/MagnifierPopupWindow;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 105
    iput-object p1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->this$0:Lcom/meizu/widget/MagnifierPopupWindow;

    .line 106
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mCutFrom:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 111
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080533

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kHeight:I

    .line 116
    iget v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kHeight:I

    int-to-float v0, v0

    const v1, 0x3fcf1aa0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kWidth:I

    .line 117
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kWidth:I

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mCutFrom:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mCutFrom:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 171
    iget v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kWidth:I

    iget v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->setMeasuredDimension(II)V

    .line 172
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    .line 125
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 126
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 127
    return-void
.end method

.method public updateMagnifier(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    const/high16 v2, -0x100

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    .line 155
    invoke-virtual {p0}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->invalidate()V

    .line 156
    return-void
.end method

.method public updateMagnifier(Landroid/view/View;FFFZ)V
    .locals 9
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "scale"
    .parameter "refresh"

    .prologue
    const/4 v7, 0x0

    .line 130
    iget v4, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kWidth:I

    int-to-float v4, v4

    div-float/2addr v4, p4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 131
    .local v3, fromWidth:I
    iget v4, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kHeight:I

    int-to-float v4, v4

    div-float/2addr v4, p4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 132
    .local v0, fromHeight:I
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 133
    .local v1, fromLeft:I
    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    sub-float v4, p3, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 135
    .local v2, fromTop:I
    iget-object v4, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 136
    iget-object v4, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->this$0:Lcom/meizu/widget/MagnifierPopupWindow;

    #getter for: Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/meizu/widget/MagnifierPopupWindow;->access$200(Lcom/meizu/widget/MagnifierPopupWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->this$0:Lcom/meizu/widget/MagnifierPopupWindow;

    #getter for: Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/meizu/widget/MagnifierPopupWindow;->access$200(Lcom/meizu/widget/MagnifierPopupWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    iget-object v4, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v1

    iget-object v6, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    iget-object v7, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    iget-object v8, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    iget-object v4, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->scale(F)V

    .line 145
    :goto_0
    if-nez p5, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->updateMagnifier(Landroid/view/View;)V

    .line 150
    :goto_1
    return-void

    .line 141
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 142
    iget-object v4, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->invalidate()V

    goto :goto_1
.end method

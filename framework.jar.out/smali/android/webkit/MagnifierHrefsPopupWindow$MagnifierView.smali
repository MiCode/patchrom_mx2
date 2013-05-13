.class Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;
.super Landroid/view/View;
.source "MagnifierHrefsPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/MagnifierHrefsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierView"
.end annotation


# instance fields
.field private kHeight:I

.field private kWidth:I

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBitMap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mDownTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlop:I

.field private mViewCore:Landroid/webkit/WebViewCore;

.field final synthetic this$0:Landroid/webkit/MagnifierHrefsPopupWindow;


# direct methods
.method public constructor <init>(Landroid/webkit/MagnifierHrefsPopupWindow;Landroid/content/Context;Landroid/webkit/WebViewCore;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "vc"

    .prologue
    const/4 v1, 0x1

    .line 106
    iput-object p1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->this$0:Landroid/webkit/MagnifierHrefsPopupWindow;

    .line 107
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p0, v1}, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->setClickable(Z)V

    .line 110
    iput-object p3, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mViewCore:Landroid/webkit/WebViewCore;

    .line 111
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mSlop:I

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 115
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 127
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const-wide/16 v5, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 145
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDragStartX:F

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDragStartY:F

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDownTime:J

    goto :goto_0

    .line 150
    :pswitch_1
    iget-wide v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDownTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDownTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 151
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 153
    .local v0, pt:Landroid/graphics/Point;
    iget-object v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xe3

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 154
    iget-object v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->this$0:Landroid/webkit/MagnifierHrefsPopupWindow;

    invoke-virtual {v1}, Landroid/webkit/MagnifierHrefsPopupWindow;->dismiss()V

    .line 155
    iput-wide v5, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDownTime:J

    goto :goto_0

    .line 157
    .end local v0           #pt:Landroid/graphics/Point;
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDragStartX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDragStartY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 159
    :cond_2
    iput-wide v5, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDownTime:J

    goto :goto_0

    .line 164
    :pswitch_2
    iget-wide v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDownTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDownTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDragStartX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDragStartY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 169
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 171
    .restart local v0       #pt:Landroid/graphics/Point;
    iget-object v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xe2

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 172
    iget-object v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->this$0:Landroid/webkit/MagnifierHrefsPopupWindow;

    invoke-virtual {v1}, Landroid/webkit/MagnifierHrefsPopupWindow;->dismiss()V

    .line 173
    iput-wide v5, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mDownTime:J

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 134
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitMap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 184
    iget v0, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->kWidth:I

    iget v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->kHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->setMeasuredDimension(II)V

    .line 185
    return-void
.end method

.method public setWidthAndHeight(IILandroid/graphics/Picture;)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "picture"

    .prologue
    const/4 v5, 0x0

    .line 188
    iput p1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->kWidth:I

    .line 189
    iput p2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->kHeight:I

    .line 191
    iget-object v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->kWidth:I

    iget v4, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->kHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 192
    iget v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->kWidth:I

    iget v2, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->kHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitMap:Landroid/graphics/Bitmap;

    .line 194
    iget-object v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 195
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/webkit/MagnifierHrefsPopupWindow$MagnifierView;->mBitMap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 196
    .local v0, cv:Landroid/graphics/Canvas;
    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 198
    .end local v0           #cv:Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

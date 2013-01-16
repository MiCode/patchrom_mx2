.class Lcom/meizu/widget/OptionPopupWindow$HandleView;
.super Landroid/view/View;
.source "OptionPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/OptionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# instance fields
.field private final kHeight:I

.field private final kMaxWidth:I

.field private final kMinWidth:I

.field private mActionIndex:I

.field private mActiveIndex:I

.field private mArrowOffsetX:I

.field private mBGPadding:Landroid/graphics/Rect;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private final mClickAction:Ljava/lang/Runnable;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mIsArrowUp:Z

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaintLabel:Landroid/text/TextPaint;

.field private mPixels:[I

.field private mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mSepDrawable:Landroid/graphics/drawable/Drawable;

.field private mSuspensionPointsWidth:F

.field private final mTouchSlop:I

.field final synthetic this$0:Lcom/meizu/widget/OptionPopupWindow;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 231
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    .line 232
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 191
    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 193
    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    .line 195
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    .line 207
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    .line 216
    new-instance v3, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;

    invoke-direct {v3, p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;-><init>(Lcom/meizu/widget/OptionPopupWindow$HandleView;)V

    iput-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickAction:Ljava/lang/Runnable;

    .line 233
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 234
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x1080150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    const v3, 0x1080153

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    const v3, 0x1080156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    const v3, 0x108014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    .line 240
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 241
    .local v1, padding:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 242
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 243
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 244
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 246
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 247
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 248
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 250
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 251
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 252
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 253
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 255
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 256
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    .line 257
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMinWidth:I

    .line 260
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    .line 262
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    .line 263
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 264
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const/high16 v4, 0x41c0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 265
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 266
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const-string/jumbo v4, "\u2026"

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSuspensionPointsWidth:F

    .line 267
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 269
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 270
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/widget/OptionPopupWindow$HandleView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/widget/OptionPopupWindow$HandleView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    return p1
.end method

.method private calcActiveIndex(FF)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 468
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 469
    .local v0, activeIndex:I
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 470
    .local v2, count:I
    if-ltz v0, :cond_0

    if-ge v0, v2, :cond_0

    .line 471
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 472
    .local v1, clip:Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    .line 482
    .end local v0           #activeIndex:I
    .end local v1           #clip:Landroid/graphics/Rect;
    :goto_0
    return v0

    .line 476
    .restart local v0       #activeIndex:I
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 477
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 478
    .restart local v1       #clip:Landroid/graphics/Rect;
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 479
    goto :goto_0

    .line 476
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 482
    .end local v1           #clip:Landroid/graphics/Rect;
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private canDrawDivider(Landroid/view/Menu;I)Z
    .locals 5
    .parameter "menu"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 400
    if-lez p2, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 401
    add-int/lit8 v3, p2, -0x1

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 402
    .local v1, prev:Landroid/view/MenuItem;
    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 403
    .local v0, next:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    .line 406
    .end local v0           #next:Landroid/view/MenuItem;
    .end local v1           #prev:Landroid/view/MenuItem;
    :cond_0
    return v2
.end method

.method private drawOptionItem(Landroid/graphics/Canvas;Landroid/view/MenuItem;IIII)V
    .locals 12
    .parameter "c"
    .parameter "item"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 440
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 441
    .local v6, s:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 442
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 443
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 445
    .local v7, w:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 446
    .local v1, h:I
    add-int v10, p3, p5

    sub-int/2addr v10, v7

    div-int/lit8 v8, v10, 0x2

    .line 447
    .local v8, x:I
    add-int v10, p4, p6

    sub-int/2addr v10, v1

    div-int/lit8 v9, v10, 0x2

    .line 448
    .local v9, y:I
    add-int v10, v8, v7

    add-int v11, v9, v1

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 449
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 465
    .end local v1           #h:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #w:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, labelToDraw:Ljava/lang/String;
    sub-int v10, p5, p3

    add-int/lit8 v10, v10, -0x30

    int-to-float v5, v10

    .line 454
    .local v5, maxMeasuredWidth:F
    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 455
    .local v3, labelMeasuredWidth:F
    cmpl-float v10, v3, v5

    if-lez v10, :cond_2

    .line 456
    invoke-direct {p0, v4, v5}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    .line 457
    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 460
    :cond_2
    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v11, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v10, v11

    .line 461
    .local v0, fontHeight:I
    add-int v10, p3, p5

    int-to-float v10, v10

    sub-float/2addr v10, v3

    const/high16 v11, 0x4000

    div-float v8, v10, v11

    .line 462
    .local v8, x:F
    add-int v10, p6, p4

    sub-int/2addr v10, v0

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    iget-object v11, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v11, v11

    sub-float v9, v10, v11

    .line 463
    .local v9, y:F
    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBackgrounds()[Landroid/graphics/Bitmap;
    .locals 27

    .prologue
    .line 358
    new-instance v20, Landroid/graphics/Canvas;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Canvas;-><init>()V

    .line 359
    .local v20, canvas:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMeasuredHeight()I

    move-result v21

    .line 360
    .local v21, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMeasuredWidth()I

    move-result v9

    .line 361
    .local v9, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    move/from16 v24, v0

    .line 362
    .local v24, midLeft:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v25, v4, v5

    .line 363
    .local v25, midRight:I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    #calls: Lcom/meizu/widget/OptionPopupWindow;->getBitmaps(III)[Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6}, Lcom/meizu/widget/OptionPopupWindow;->access$400(III)[Landroid/graphics/Bitmap;

    move-result-object v19

    .line 364
    .local v19, bitmaps:[Landroid/graphics/Bitmap;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 365
    invoke-static {}, Lcom/meizu/widget/OptionPopupWindow;->access$500()[[I

    move-result-object v4

    aget-object v26, v4, v22

    .line 366
    .local v26, state:[I
    aget-object v3, v19, v22

    .line 367
    .local v3, bmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 368
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v4, v0, v5, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 381
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v4, :cond_1

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    if-nez v4, :cond_0

    .line 383
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    .line 385
    :cond_0
    div-int/lit8 v18, v21, 0x2

    .line 386
    .local v18, HALF:I
    const/16 v23, 0x0

    .local v23, j:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 387
    move/from16 v8, v23

    .line 388
    .local v8, top:I
    sub-int v4, v21, v23

    add-int/lit8 v15, v4, -0x1

    .line 389
    .local v15, bottom:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 390
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object v10, v3

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object v10, v3

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 386
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 364
    .end local v8           #top:I
    .end local v15           #bottom:I
    .end local v18           #HALF:I
    .end local v23           #j:I
    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 396
    .end local v3           #bmp:Landroid/graphics/Bitmap;
    .end local v26           #state:[I
    :cond_2
    return-object v19
.end method

.method private getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .locals 5
    .parameter "rawLabel"
    .parameter "widthToDraw"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 527
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 528
    .local v0, subLen:I
    if-gt v0, v4, :cond_0

    .line 533
    .end local p1
    :goto_0
    return-object p1

    .line 530
    .restart local p1
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 531
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 532
    .local v1, width:F
    iget v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1

    if-lt v4, v0, :cond_0

    .line 533
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private measureMenuItem(Landroid/view/MenuItem;)I
    .locals 6
    .parameter "item"

    .prologue
    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, width:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 306
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 313
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v2

    .line 310
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 311
    .local v1, label:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-int v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getArrowOffsetX()I
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "c"

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 437
    :cond_0
    return-void

    .line 414
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v15

    .line 415
    .local v15, menu:Landroid/view/Menu;
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getBackgrounds()[Landroid/graphics/Bitmap;

    move-result-object v10

    .line 416
    .local v10, bitmaps:[Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v15}, Landroid/view/Menu;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 417
    .local v8, N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v8, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 419
    .local v11, clip:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-ne v1, v13, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    if-ne v1, v13, :cond_3

    const/4 v9, 0x1

    .line 420
    .local v9, active:Z
    :goto_1
    if-eqz v9, :cond_4

    const/4 v1, 0x1

    :goto_2
    aget-object v1, v10, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 421
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->canDrawDivider(Landroid/view/Menu;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 423
    .local v17, w:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 424
    .local v12, h:I
    iget v1, v11, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v17, 0x2

    sub-int v14, v1, v2

    .line 425
    .local v14, l:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v12

    div-int/lit8 v16, v1, 0x2

    .line 426
    .local v16, t:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_3
    add-int v16, v16, v1

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    add-int v2, v14, v17

    add-int v3, v16, v12

    move/from16 v0, v16

    invoke-virtual {v1, v14, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 431
    .end local v12           #h:I
    .end local v14           #l:I
    .end local v16           #t:I
    .end local v17           #w:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 432
    .local v5, top:I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_5
    sub-int v7, v2, v1

    .line 433
    .local v7, bottom:I
    if-nez v13, :cond_8

    iget v1, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v4, v1, v2

    .line 434
    .local v4, left:I
    :goto_6
    add-int/lit8 v1, v8, -0x1

    if-ne v13, v1, :cond_9

    iget v1, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v1, v2

    .line 435
    .local v6, right:I
    :goto_7
    invoke-interface {v15, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->drawOptionItem(Landroid/graphics/Canvas;Landroid/view/MenuItem;IIII)V

    .line 417
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 419
    .end local v4           #left:I
    .end local v5           #top:I
    .end local v6           #right:I
    .end local v7           #bottom:I
    .end local v9           #active:Z
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 420
    .restart local v9       #active:Z
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 426
    .restart local v12       #h:I
    .restart local v14       #l:I
    .restart local v16       #t:I
    .restart local v17       #w:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 431
    .end local v12           #h:I
    .end local v14           #l:I
    .end local v16           #t:I
    .end local v17           #w:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 432
    .restart local v5       #top:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 433
    .restart local v7       #bottom:I
    :cond_8
    iget v4, v11, Landroid/graphics/Rect;->left:I

    goto :goto_6

    .line 434
    .restart local v4       #left:I
    :cond_9
    iget v6, v11, Landroid/graphics/Rect;->right:I

    goto :goto_7
.end method

.method public onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    .line 319
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v8}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v8

    if-nez v8, :cond_0

    .line 320
    invoke-virtual {p0, v12, v12}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setMeasuredDimension(II)V

    .line 355
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    .line 325
    .local v3, left:I
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v8, v9

    .line 326
    .local v7, width:I
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v8}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    .line 327
    .local v4, menu:Landroid/view/Menu;
    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v0

    .line 328
    .local v0, N:I
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 329
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 330
    invoke-interface {v4, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->measureMenuItem(Landroid/view/MenuItem;)I

    move-result v8

    add-int/lit8 v8, v8, 0x18

    add-int/lit8 v6, v8, 0x18

    .line 331
    .local v6, w:I
    const/16 v8, 0x78

    if-ge v6, v8, :cond_1

    .line 332
    const/16 v6, 0x78

    .line 334
    :cond_1
    const/16 v8, 0xa8

    if-le v6, v8, :cond_2

    .line 335
    const/16 v6, 0xa8

    .line 337
    :cond_2
    add-int v8, v7, v6

    iget v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMaxWidth:I

    if-le v8, v9, :cond_5

    .line 346
    .end local v6           #w:I
    :cond_3
    iget v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMinWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 348
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 349
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 350
    .local v2, l:Landroid/graphics/Rect;
    iput v12, v2, Landroid/graphics/Rect;->left:I

    .line 351
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 352
    .local v5, r:Landroid/graphics/Rect;
    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 354
    .end local v2           #l:Landroid/graphics/Rect;
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_4
    iget v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 341
    .restart local v6       #w:I
    :cond_5
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v3, v6

    iget v11, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    invoke-direct {v9, v3, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/2addr v3, v6

    .line 343
    add-int/2addr v7, v6

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, -0x1

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 522
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 489
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 490
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 491
    .local v2, y:F
    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->calcActiveIndex(FF)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 492
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    .line 493
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-ltz v3, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->invalidate()V

    goto :goto_0

    .line 498
    .end local v1           #x:F
    .end local v2           #y:F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 499
    .restart local v1       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 500
    .restart local v2       #y:F
    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->calcActiveIndex(FF)I

    move-result v0

    .line 501
    .local v0, activeIndex:I
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-eq v3, v0, :cond_0

    .line 502
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-gez v3, :cond_1

    if-ltz v0, :cond_2

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->invalidate()V

    .line 505
    :cond_2
    iput v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 506
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    goto :goto_0

    .line 511
    .end local v0           #activeIndex:I
    .end local v1           #x:F
    .end local v2           #y:F
    :pswitch_2
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-ltz v3, :cond_3

    .line 512
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->post(Ljava/lang/Runnable;)Z

    .line 513
    invoke-virtual {p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->invalidate()V

    .line 515
    :cond_3
    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    goto :goto_0

    .line 519
    :pswitch_3
    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setArrowOffsetX(II)V
    .locals 5
    .parameter "offset"
    .parameter "width"

    .prologue
    .line 280
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 281
    .local v0, half:I
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v1, v4, v0

    .line 282
    .local v1, left:I
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v2, v4, v0

    .line 283
    .local v2, right:I
    iget-boolean v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v4, :cond_0

    .line 284
    move v3, v1

    .line 285
    .local v3, tmp:I
    move v1, v2

    .line 286
    move v2, v3

    .line 288
    .end local v3           #tmp:I
    :cond_0
    sub-int v2, p2, v2

    .line 289
    if-ge p1, v1, :cond_1

    .line 290
    move p1, v1

    .line 292
    :cond_1
    if-le p1, v2, :cond_2

    .line 293
    move p1, v2

    .line 295
    :cond_2
    sub-int v4, p1, v0

    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    .line 296
    return-void
.end method

.method public setArrowUp(Z)V
    .locals 0
    .parameter "up"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    .line 277
    return-void
.end method

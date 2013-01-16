.class final Lcom/meizu/widget/EditTextEx$StaticHint;
.super Ljava/lang/Object;
.source "EditTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/EditTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StaticHint"
.end annotation


# static fields
.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;


# instance fields
.field private mGravity:I

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mStaticHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mStaticHintLayout:Landroid/text/StaticLayout;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v0, Lcom/meizu/widget/EditTextEx$StaticHint;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/16 v0, 0x13

    iput v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    .line 304
    sget-object v0, Lcom/meizu/widget/EditTextEx$StaticHint;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iput-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 307
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    .line 308
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/EditTextEx$StaticHint;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintWidth()I

    move-result v0

    return v0
.end method

.method private getHintWidth()I
    .locals 5

    .prologue
    .line 331
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    .line 332
    .local v0, hint:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    const/4 v2, 0x0

    .line 351
    :cond_0
    :goto_0
    return v2

    .line 335
    :cond_1
    iget v2, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mWidth:I

    .line 336
    .local v2, hintWidth:I
    if-gtz v2, :cond_0

    .line 337
    iget-object v3, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v0, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    .line 339
    .local v1, hintBoring:Landroid/text/BoringLayout$Metrics;
    if-eqz v1, :cond_2

    .line 340
    iput-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 343
    :cond_2
    if-eqz v1, :cond_3

    sget-object v3, Lcom/meizu/widget/EditTextEx$StaticHint;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v1, v3, :cond_4

    .line 344
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v2, v3

    .line 349
    :goto_1
    iget-object v3, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    .line 346
    :cond_4
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->width:I

    goto :goto_1
.end method


# virtual methods
.method public drawHint(Landroid/graphics/Canvas;[III)V
    .locals 3
    .parameter "c"
    .parameter "drawableState"
    .parameter "defColor"
    .parameter "height"

    .prologue
    .line 425
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    .line 451
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 435
    :goto_1
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    iput-object p2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, dy:I
    iget v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    sparse-switch v1, :sswitch_data_0

    .line 447
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 449
    :goto_2
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 450
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 433
    .end local v0           #dy:I
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p2, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 439
    .restart local v0       #dy:I
    :sswitch_0
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int v1, p4, v1

    shr-int/lit8 v0, v1, 0x1

    .line 440
    goto :goto_2

    .line 443
    :sswitch_1
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 444
    goto :goto_2

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public getHintColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHintGravity()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    return v0
.end method

.method public getHintSize()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextSize:I

    return v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setHintColor(Landroid/content/res/ColorStateList;)Z
    .locals 1
    .parameter "csl"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0

    .line 379
    :cond_0
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    .line 380
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHintGravity(I)Z
    .locals 1
    .parameter "gravity"

    .prologue
    .line 366
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    if-ne v0, p1, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    .line 368
    :cond_0
    iput p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    .line 369
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHintSize(I)Z
    .locals 1
    .parameter "size"

    .prologue
    .line 355
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextSize:I

    if-ne v0, p1, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    .line 357
    :cond_0
    iput p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextSize:I

    .line 358
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHintText(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    .line 315
    :cond_0
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    .line 316
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHintWidth(I)Z
    .locals 1
    .parameter "width"

    .prologue
    .line 324
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mWidth:I

    if-ne v0, p1, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    .line 326
    :cond_0
    iput p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mWidth:I

    .line 327
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    .line 389
    return-void
.end method

.method public updateHint()V
    .locals 8

    .prologue
    .line 396
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_0

    .line 411
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 414
    .local v4, alignment:Landroid/text/Layout$Alignment;
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 415
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintWidth()I

    move-result v3

    iget-object v5, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 403
    .end local v4           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 404
    .restart local v4       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_1

    .line 407
    .end local v4           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 408
    .restart local v4       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_1

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

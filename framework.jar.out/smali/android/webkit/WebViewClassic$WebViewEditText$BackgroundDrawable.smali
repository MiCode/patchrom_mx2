.class Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic$WebViewEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDrawable"
.end annotation


# instance fields
.field private mBorderWidth:I

.field private mInsetRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field final synthetic this$1:Landroid/webkit/WebViewClassic$WebViewEditText;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic$WebViewEditText;I)V
    .locals 2
    .parameter
    .parameter "width"

    .prologue
    .line 656
    iput-object p1, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->this$1:Landroid/webkit/WebViewClassic$WebViewEditText;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 653
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 655
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    .line 657
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 658
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 659
    iput p2, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mBorderWidth:I

    .line 660
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 664
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, 0x6633b5e5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 665
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 667
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mBorderWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 668
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mBorderWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 669
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mBorderWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 670
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mBorderWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 671
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 672
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 673
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 685
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 677
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 681
    return-void
.end method

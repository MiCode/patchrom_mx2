.class final Landroid/inputmethodservice/InputMethodService$SmileView;
.super Landroid/view/View;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmileView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;,
        Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    }
.end annotation


# static fields
.field private static final CLIP_LAND:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip; = null

.field private static final CLIP_PORT:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip; = null

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final Y_BIAS_CORRECTION:I = -0xa


# instance fields
.field private mActivePointerId:I

.field private mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

.field private mCurClip:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;

.field private final mHighlight:Landroid/graphics/drawable/Drawable;

.field private mScaleX:F

.field private mScaleY:F

.field private mSmiles:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 2440
    new-instance v0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;

    const/16 v1, 0x280

    const/16 v2, 0x198

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;-><init>(III)V

    sput-object v0, Landroid/inputmethodservice/InputMethodService$SmileView;->CLIP_PORT:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;

    .line 2441
    new-instance v0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;

    const/16 v1, 0x3c0

    const/16 v2, 0x138

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;-><init>(III)V

    sput-object v0, Landroid/inputmethodservice/InputMethodService$SmileView;->CLIP_LAND:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2480
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$SmileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2481
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2484
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService$SmileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2485
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 2488
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2443
    const/16 v5, 0x18

    new-array v5, v5, [Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const/4 v6, 0x0

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ":-)"

    const v9, 0x108066d

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ":-D"

    const v9, 0x1080667

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ";-)"

    const v9, 0x1080673

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ":-("

    const v9, 0x108066b

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ";-P"

    const v9, 0x1080671

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ":-/"

    const v9, 0x1080672

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ":-O"

    const v9, 0x1080670

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/4 v6, 0x7

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ":-$"

    const v9, 0x1080669

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x8

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ":-X"

    const v9, 0x108066f

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x9

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ":-|"

    const v9, 0x1080659

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0xa

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string/jumbo v8, "\u56e7"

    const v9, 0x1080665

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0xb

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, "T_T"

    const v9, 0x108065d

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0xc

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string/jumbo v8, "\u2570_\u256f"

    const v9, 0x1080658

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0xd

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, "-_-zZ"

    const v9, 0x108066c

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0xe

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, "^(oo)^"

    const v9, 0x108066a

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0xf

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, "*^_^*"

    const v9, 0x1080668

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x10

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string/jumbo v8, "o_o"

    const v9, 0x108065b

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x11

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, "@_@"

    const v9, 0x1080661

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x12

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, "-_-!"

    const v9, 0x1080662

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x13

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, ":-*"

    const v9, 0x1080666

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x14

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, "(\u256f_\u2570)"

    const v9, 0x108066e

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x15

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string/jumbo v8, "\u2192_\u2192"

    const v9, 0x1080660

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x16

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, "-_-|||"

    const v9, 0x1080664

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    const/16 v6, 0x17

    new-instance v7, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    const-string v8, "B-)"

    const v9, 0x108065c

    invoke-direct {v7, v8, v9}, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mSmiles:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    .line 2475
    const/16 v5, -0xa

    iput v5, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActivePointerId:I

    .line 2477
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    .line 2489
    const v5, 0x108065a

    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService$SmileView;->setBackgroundResource(I)V

    .line 2490
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2491
    .local v4, r:Landroid/content/res/Resources;
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mSmiles:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    .local v0, arr$:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 2492
    .local v2, item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    iget v5, v2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->resId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->icon:Landroid/graphics/drawable/Drawable;

    .line 2491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2494
    .end local v2           #item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    :cond_0
    const v5, 0x1080663

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mHighlight:Landroid/graphics/drawable/Drawable;

    .line 2495
    return-void
.end method

.method private commitSmile(Landroid/inputmethodservice/InputMethodService$SmileView$Smile;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 2552
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$SmileView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2553
    .local v0, c:Landroid/content/Context;
    instance-of v2, v0, Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_0

    .line 2554
    check-cast v0, Landroid/inputmethodservice/InputMethodService;

    .end local v0           #c:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2555
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2556
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->label:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2559
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method private disToSmile(Landroid/inputmethodservice/InputMethodService$SmileView$Smile;II)F
    .locals 4
    .parameter "smile"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2625
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v2, p2

    .line 2626
    .local v0, disx:I
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v1, v2, p3

    .line 2627
    .local v1, disy:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    return v2
.end method

.method private drawSmile(Landroid/graphics/Canvas;Landroid/inputmethodservice/InputMethodService$SmileView$Smile;)V
    .locals 9
    .parameter "canvas"
    .parameter "smile"

    .prologue
    .line 2498
    iget-object v4, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2499
    .local v1, w:I
    iget-object v4, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2500
    .local v0, h:I
    iget-object v4, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 2501
    .local v2, x:I
    iget-object v4, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 2502
    .local v3, y:I
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    if-ne v4, p2, :cond_0

    .line 2503
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mHighlight:Landroid/graphics/drawable/Drawable;

    iget-object v5, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget-object v6, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x2

    iget-object v7, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, -0x2

    iget-object v8, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2505
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2507
    :cond_0
    iget-object v4, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->icon:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v1

    add-int v6, v3, v0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2508
    iget-object v4, p2, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2509
    return-void
.end method

.method private mapToSmile([Landroid/inputmethodservice/InputMethodService$SmileView$Smile;IILandroid/inputmethodservice/InputMethodService$SmileView$Smile;)Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    .locals 8
    .parameter "smiles"
    .parameter "x"
    .parameter "y"
    .parameter "active"

    .prologue
    .line 2631
    if-eqz p4, :cond_0

    .line 2632
    const/4 v1, 0x5

    .line 2633
    .local v1, dis:I
    iget-object v7, p4, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, -0x5

    if-lt p2, v7, :cond_0

    iget-object v7, p4, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x5

    if-ge p2, v7, :cond_0

    iget-object v7, p4, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, -0x5

    if-lt p3, v7, :cond_0

    iget-object v7, p4, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v7, 0x5

    if-ge p3, v7, :cond_0

    .line 2657
    .end local v1           #dis:I
    .end local p4
    :goto_0
    return-object p4

    .line 2640
    .restart local p4
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 2641
    .local v3, item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    iget-object v7, v3, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    invoke-virtual {v7, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object p4, v3

    .line 2642
    goto :goto_0

    .line 2640
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2647
    .end local v3           #item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    :cond_2
    const/4 v6, 0x0

    .line 2648
    .local v6, nearestKey:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    const v5, 0x7f7fffff

    .line 2649
    .local v5, nearestDis:F
    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .line 2650
    .restart local v3       #item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    invoke-direct {p0, v3, p2, p3}, Landroid/inputmethodservice/InputMethodService$SmileView;->disToSmile(Landroid/inputmethodservice/InputMethodService$SmileView$Smile;II)F

    move-result v1

    .line 2651
    .local v1, dis:F
    cmpg-float v7, v1, v5

    if-gez v7, :cond_3

    .line 2652
    move v5, v1

    .line 2653
    move-object v6, v3

    .line 2649
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #dis:F
    .end local v3           #item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    :cond_4
    move-object p4, v6

    .line 2657
    goto :goto_0
.end method

.method private updateSmileClip(Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;FF)V
    .locals 15
    .parameter "want"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 2527
    iget-object v12, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mCurClip:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;

    move-object/from16 v0, p1

    if-ne v12, v0, :cond_1

    iget v12, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mScaleX:F

    cmpl-float v12, v12, p2

    if-nez v12, :cond_1

    iget v12, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mScaleY:F

    cmpl-float v12, v12, p3

    if-nez v12, :cond_1

    .line 2549
    :cond_0
    return-void

    .line 2530
    :cond_1
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mCurClip:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;

    .line 2531
    move/from16 v0, p2

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mScaleX:F

    .line 2532
    move/from16 v0, p3

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mScaleY:F

    .line 2534
    iget-object v12, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mSmiles:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    array-length v12, v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->rowCount:I

    div-int v1, v12, v13

    .line 2535
    .local v1, N:I
    const/4 v9, 0x0

    .line 2536
    .local v9, smileLeft:I
    const/4 v10, 0x0

    .line 2537
    .local v10, smileTop:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->width:I

    int-to-float v12, v12

    mul-float v12, v12, p2

    int-to-float v13, v1

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 2538
    .local v8, smileItemWidth:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->height:I

    int-to-float v12, v12

    mul-float v12, v12, p3

    move-object/from16 v0, p1

    iget v13, v0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->rowCount:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2539
    .local v7, smileItemHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->rowCount:I

    if-ge v3, v12, :cond_0

    .line 2540
    mul-int v11, v1, v3

    .line 2541
    .local v11, st:I
    add-int v12, v11, v1

    iget-object v13, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mSmiles:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    array-length v13, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2542
    .local v2, en:I
    mul-int v12, v3, v7

    add-int/lit8 v5, v12, 0x0

    .line 2543
    .local v5, itTop:I
    move v6, v11

    .local v6, j:I
    :goto_1
    if-ge v6, v2, :cond_2

    .line 2544
    sub-int v12, v6, v11

    mul-int/2addr v12, v8

    add-int/lit8 v4, v12, 0x0

    .line 2545
    .local v4, itLeft:I
    iget-object v12, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mSmiles:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    aget-object v12, v12, v6

    iget-object v12, v12, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    add-int v13, v4, v8

    add-int v14, v5, v7

    invoke-virtual {v12, v4, v5, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 2543
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2539
    .end local v4           #itLeft:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 2513
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$SmileView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2514
    .local v1, conf:Landroid/content/res/Configuration;
    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    sget-object v7, Landroid/inputmethodservice/InputMethodService$SmileView;->CLIP_LAND:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;

    .line 2517
    .local v7, want:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$SmileView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, v7, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->width:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 2518
    .local v5, scaleX:F
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$SmileView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v7, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->height:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 2519
    .local v6, scaleY:F
    invoke-direct {p0, v7, v5, v6}, Landroid/inputmethodservice/InputMethodService$SmileView;->updateSmileClip(Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;FF)V

    .line 2521
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mSmiles:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    .local v0, arr$:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 2522
    .local v3, item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    invoke-direct {p0, p1, v3}, Landroid/inputmethodservice/InputMethodService$SmileView;->drawSmile(Landroid/graphics/Canvas;Landroid/inputmethodservice/InputMethodService$SmileView$Smile;)V

    .line 2521
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2514
    .end local v0           #arr$:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    .end local v2           #i$:I
    .end local v3           #item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    .end local v4           #len$:I
    .end local v5           #scaleX:F
    .end local v6           #scaleY:F
    .end local v7           #want:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;
    :cond_0
    sget-object v7, Landroid/inputmethodservice/InputMethodService$SmileView;->CLIP_PORT:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;

    goto :goto_0

    .line 2524
    .restart local v0       #arr$:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #scaleX:F
    .restart local v6       #scaleY:F
    .restart local v7       #want:Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 2621
    :cond_0
    :goto_0
    :pswitch_0
    return v9

    .line 2566
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2567
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v4, v6

    .line 2568
    .local v4, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v5, v6, -0xa

    .line 2570
    .local v5, y:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2571
    .local v2, pid:I
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mSmiles:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    invoke-direct {p0, v6, v4, v5, v7}, Landroid/inputmethodservice/InputMethodService$SmileView;->mapToSmile([Landroid/inputmethodservice/InputMethodService$SmileView$Smile;IILandroid/inputmethodservice/InputMethodService$SmileView$Smile;)Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    move-result-object v1

    .line 2572
    .local v1, item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    iget v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActivePointerId:I

    if-eq v6, v2, :cond_1

    .line 2573
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    if-eq v1, v6, :cond_1

    .line 2574
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    invoke-direct {p0, v6}, Landroid/inputmethodservice/InputMethodService$SmileView;->commitSmile(Landroid/inputmethodservice/InputMethodService$SmileView$Smile;)V

    .line 2577
    :cond_1
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    .line 2578
    iput v2, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActivePointerId:I

    .line 2579
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$SmileView;->invalidate()V

    goto :goto_0

    .line 2584
    .end local v0           #actionIndex:I
    .end local v1           #item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    .end local v2           #pid:I
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_2
    iget v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2586
    .local v3, pointerIndex:I
    if-ltz v3, :cond_0

    .line 2589
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v4, v6

    .line 2590
    .restart local v4       #x:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/high16 v7, -0x3ee0

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 2591
    .restart local v5       #y:I
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mSmiles:[Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    invoke-direct {p0, v6, v4, v5, v7}, Landroid/inputmethodservice/InputMethodService$SmileView;->mapToSmile([Landroid/inputmethodservice/InputMethodService$SmileView$Smile;IILandroid/inputmethodservice/InputMethodService$SmileView$Smile;)Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    move-result-object v1

    .line 2592
    .restart local v1       #item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    if-eq v6, v1, :cond_2

    .line 2593
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$SmileView;->invalidate()V

    .line 2595
    :cond_2
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    goto :goto_0

    .line 2601
    .end local v1           #item:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
    .end local v3           #pointerIndex:I
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2602
    .restart local v0       #actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2603
    .restart local v2       #pid:I
    iget v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActivePointerId:I

    if-ne v6, v2, :cond_0

    .line 2604
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    invoke-direct {p0, v6}, Landroid/inputmethodservice/InputMethodService$SmileView;->commitSmile(Landroid/inputmethodservice/InputMethodService$SmileView$Smile;)V

    .line 2605
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$SmileView;->invalidate()V

    .line 2606
    iput-object v7, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    .line 2607
    iput v8, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActivePointerId:I

    goto :goto_0

    .line 2613
    .end local v0           #actionIndex:I
    .end local v2           #pid:I
    :pswitch_4
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    if-eqz v6, :cond_3

    .line 2614
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$SmileView;->invalidate()V

    .line 2616
    :cond_3
    iput v8, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActivePointerId:I

    .line 2617
    iput-object v7, p0, Landroid/inputmethodservice/InputMethodService$SmileView;->mActiveSmile:Landroid/inputmethodservice/InputMethodService$SmileView$Smile;

    goto :goto_0

    .line 2563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

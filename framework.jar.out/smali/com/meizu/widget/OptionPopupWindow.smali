.class public Lcom/meizu/widget/OptionPopupWindow;
.super Landroid/widget/PopupWindow;
.source "OptionPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;,
        Lcom/meizu/widget/OptionPopupWindow$HandleView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GOLD_RATIO:F = 0.618034f

.field private static final STATE_EMPTY:I = 0x0

.field private static final STATE_MAX:I = 0x2

.field private static final STATE_PRESSED:I = 0x1

.field private static final STATE_SETS:[[I = null

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "\u2025"

.field private static final TAG:Ljava/lang/String; = "OptionPopupWindow"

.field private static sTmpBitmaps:[Landroid/graphics/Bitmap;


# instance fields
.field private mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

.field private mContext:Landroid/content/Context;

.field private mDisableAlignBottom:Z

.field private mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

.field private mLocationInWindow:[I

.field private final mOptionRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/View;

.field private mWndRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [[I

    sput-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    .line 52
    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    new-array v1, v4, [I

    const v2, 0x10100a9

    aput v2, v1, v3

    aput-object v1, v0, v3

    .line 53
    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    aput-object v1, v0, v4

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 58
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0, v2}, Lcom/meizu/widget/OptionPopupWindow;->setTouchable(Z)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/meizu/widget/OptionPopupWindow;->setOutsideTouchable(Z)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/meizu/widget/OptionPopupWindow;->setClippingEnabled(Z)V

    .line 79
    invoke-virtual {p0, v3, v3}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutMode(II)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/meizu/widget/OptionPopupWindow;->setInputMethodMode(I)V

    .line 81
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutType(I)V

    .line 82
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/meizu/widget/OptionPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/OptionPopupWindow$HandleView;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    .line 85
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/OptionPopupWindow;->setContentView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/meizu/widget/OptionPopupWindow;Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(III)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/meizu/widget/OptionPopupWindow;->getBitmaps(III)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[[I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/OptionPopupWindow;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getBitmaps(III)[Landroid/graphics/Bitmap;
    .locals 3
    .parameter "count"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 661
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 662
    new-array v2, p0, [Landroid/graphics/Bitmap;

    sput-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    .line 668
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p0, :cond_5

    .line 669
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v2, v1

    .line 670
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, p2, :cond_3

    .line 671
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 672
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 674
    :cond_3
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, v2, v1

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 664
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    :cond_4
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v2, p0, :cond_0

    .line 665
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Bitmap;

    sput-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 676
    .restart local v1       #i:I
    :cond_5
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    return-object v2
.end method


# virtual methods
.method public disableAlignBottom(Z)V
    .locals 0
    .parameter "disableAlignBottom"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    .line 104
    return-void
.end method

.method public showOptions(Landroid/view/View;Landroid/graphics/RectF;)Z
    .locals 13
    .parameter "parent"
    .parameter "selRect"

    .prologue
    .line 107
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    if-ne p1, v9, :cond_0

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    if-nez v9, :cond_1

    .line 108
    :cond_0
    const/4 v9, 0x0

    .line 183
    :goto_0
    return v9

    .line 110
    :cond_1
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    if-nez v9, :cond_2

    .line 111
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    .line 113
    :cond_2
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    .line 114
    .local v8, wndRect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 115
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 116
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 117
    iget v9, p2, Landroid/graphics/RectF;->top:F

    iget v10, v8, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 118
    iget v9, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iput v9, p2, Landroid/graphics/RectF;->top:F

    .line 120
    :cond_3
    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 121
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iput v9, p2, Landroid/graphics/RectF;->bottom:F

    .line 124
    :cond_4
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->measure(II)V

    .line 126
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMeasuredWidth()I

    move-result v7

    .line 127
    .local v7, width:I
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMeasuredHeight()I

    move-result v3

    .line 129
    .local v3, height:I
    const/4 v2, 0x0

    .line 130
    .local v2, gravity:I
    const v5, 0x7f7fffff

    .line 131
    .local v5, nearestDis:F
    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_5

    .line 132
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    iget v10, p2, Landroid/graphics/RectF;->top:F

    shr-int/lit8 v11, v3, 0x1

    int-to-float v11, v11

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 133
    const/16 v2, 0x30

    .line 135
    :cond_5
    iget-boolean v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    if-nez v9, :cond_6

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 136
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    iget v10, p2, Landroid/graphics/RectF;->bottom:F

    shr-int/lit8 v11, v3, 0x1

    int-to-float v11, v11

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 137
    .local v1, dis:F
    cmpg-float v9, v1, v5

    if-gez v9, :cond_6

    .line 138
    move v5, v1

    .line 139
    const/16 v2, 0x50

    .line 142
    .end local v1           #dis:F
    :cond_6
    iget-boolean v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    if-eqz v9, :cond_8

    if-nez v2, :cond_8

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    shl-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    add-int/lit8 v10, v7, 0x32

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_8

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    shl-int/lit8 v10, v3, 0x1

    add-int/lit16 v10, v10, 0xa0

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_8

    .line 145
    :cond_7
    const/16 v2, 0x50

    .line 148
    :cond_8
    const/4 v6, 0x0

    .line 149
    .local v6, top:F
    const/16 v9, 0x30

    if-ne v2, v9, :cond_9

    .line 150
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    .line 151
    iget v9, p2, Landroid/graphics/RectF;->top:F

    int-to-float v10, v3

    sub-float v6, v9, v10

    .line 161
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 162
    .local v4, left:F
    div-int/lit8 v9, v7, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    .line 163
    int-to-float v9, v7

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v4

    sub-float/2addr v9, v10

    float-to-int v0, v9

    .line 164
    .local v0, arrowpos:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v9, v7

    int-to-float v4, v9

    .line 172
    :goto_2
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9, v0, v7}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowOffsetX(II)V

    .line 173
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getArrowOffsetX()I

    move-result v9

    sub-int v9, v0, v9

    int-to-float v9, v9

    add-float/2addr v4, v9

    .line 174
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->invalidate()V

    .line 177
    invoke-virtual {p0}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 178
    float-to-int v9, v4

    float-to-int v10, v6

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/meizu/widget/OptionPopupWindow;->update(IIII)V

    .line 183
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 152
    .end local v0           #arrowpos:I
    .end local v4           #left:F
    :cond_9
    const/16 v9, 0x50

    if-ne v2, v9, :cond_a

    .line 153
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    .line 154
    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 156
    :cond_a
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    .line 157
    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    const v11, 0x3f1e377a

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    shr-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    sub-float v6, v9, v10

    goto :goto_1

    .line 165
    .restart local v4       #left:F
    :cond_b
    div-int/lit8 v9, v7, 0x2

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_c

    .line 166
    float-to-int v0, v4

    .line 167
    .restart local v0       #arrowpos:I
    const/4 v4, 0x0

    goto :goto_2

    .line 169
    .end local v0           #arrowpos:I
    :cond_c
    div-int/lit8 v0, v7, 0x2

    .line 170
    .restart local v0       #arrowpos:I
    int-to-float v9, v0

    sub-float/2addr v4, v9

    goto :goto_2

    .line 180
    :cond_d
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    const/4 v10, 0x0

    float-to-int v11, v4

    float-to-int v12, v6

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/meizu/widget/OptionPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3
.end method

.method public startPopupActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "parent"
    .parameter "cb"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    .line 90
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    invoke-virtual {v1}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->finish()V

    .line 93
    :cond_0
    new-instance v0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    invoke-direct {v0, p0, p2}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/view/ActionMode$Callback;)V

    .line 94
    .local v0, mode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->invalidate()V

    .line 96
    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    .line 99
    .end local v0           #mode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    :goto_0
    return-object v0

    .restart local v0       #mode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/meizu/widget/SmileView;
.super Landroid/view/View;
.source "SmileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/SmileView$Callback;
    }
.end annotation


# static fields
.field private static final BG_STATE_EMPTY:[I = null

.field private static final BG_STATE_PRESSED:[I = null

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static USE_ICON_BG:Z = false

.field private static final Y_BIAS_CORRECTION:I = -0xa


# instance fields
.field private mActivePointerId:I

.field private mActiveSmileId:I

.field private mColCount:I

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mRowCount:I

.field private mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

.field private mTmpItemClip:Landroid/graphics/Rect;

.field private mWantIconHeight:I

.field private mWantIconWidth:I

.field private mWantPadding:Landroid/graphics/Rect;

.field private mWantPanelHeight:I

.field private mWantPanelWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    sput-boolean v2, Lcom/meizu/widget/SmileView;->USE_ICON_BG:Z

    .line 25
    new-array v0, v2, [I

    sput-object v0, Lcom/meizu/widget/SmileView;->BG_STATE_EMPTY:[I

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/meizu/widget/SmileView;->BG_STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/SmileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/SmileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v7, 0x60

    const/16 v6, 0x17

    const/4 v5, -0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    .line 53
    iput v5, p0, Lcom/meizu/widget/SmileView;->mActivePointerId:I

    .line 55
    iput v5, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    .line 69
    sget-object v4, Lcom/android/internal/R$styleable;->SmileView:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 71
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 72
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 73
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 74
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 72
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :pswitch_0
    sget-boolean v4, Lcom/meizu/widget/SmileView;->USE_ICON_BG:Z

    if-eqz v4, :cond_0

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/SmileView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 79
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/meizu/widget/SmileView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 83
    :pswitch_1
    const/16 v4, 0x320

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/SmileView;->mWantPanelWidth:I

    goto :goto_1

    .line 86
    :pswitch_2
    const/16 v4, 0x1f3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/SmileView;->mWantPanelHeight:I

    goto :goto_1

    .line 89
    :pswitch_3
    iget-object v4, p0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    const/16 v5, 0x36

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 92
    :pswitch_4
    iget-object v4, p0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    const/16 v5, 0x37

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 95
    :pswitch_5
    iget-object v4, p0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 98
    :pswitch_6
    iget-object v4, p0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 101
    :pswitch_7
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/SmileView;->mWantIconWidth:I

    goto :goto_1

    .line 104
    :pswitch_8
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/SmileView;->mWantIconHeight:I

    goto :goto_1

    .line 107
    :pswitch_9
    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/SmileView;->mRowCount:I

    goto :goto_1

    .line 110
    :pswitch_a
    const/4 v4, 0x6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/SmileView;->mColCount:I

    goto :goto_1

    .line 114
    .end local v2           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-void

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private getItemClip(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 22
    .parameter "index"
    .parameter "clip"
    .parameter "withGap"

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    new-instance p2, Landroid/graphics/Rect;

    .end local p2
    invoke-direct/range {p2 .. p2}, Landroid/graphics/Rect;-><init>()V

    .line 130
    .restart local p2
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mColCount:I

    move/from16 v18, v0

    div-int v11, p1, v18

    .line 131
    .local v11, row:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mColCount:I

    move/from16 v18, v0

    mul-int v18, v18, v11

    sub-int v5, p1, v18

    .line 132
    .local v5, col:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantPanelWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v19, v19, v20

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mColCount:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mColCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    div-int v8, v18, v19

    .line 134
    .local v8, gapX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantPanelHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mRowCount:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mRowCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    div-int v9, v18, v19

    .line 136
    .local v9, gapY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconWidth:I

    move/from16 v19, v0

    add-int v19, v19, v8

    mul-int v19, v19, v5

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v6, v18, v19

    .line 137
    .local v6, cx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/SmileView;->mWantPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconHeight:I

    move/from16 v19, v0

    add-int v19, v19, v9

    mul-int v19, v19, v11

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconHeight:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v7, v18, v19

    .line 138
    .local v7, cy:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/SmileView;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantPanelWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 139
    .local v13, scaleX:F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/SmileView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantPanelHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 140
    .local v14, scaleY:F
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 142
    .local v12, scaleMin:F
    if-eqz p3, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconWidth:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v15, v18, v12

    .line 144
    .local v15, width:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconHeight:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v10, v18, v12

    .line 149
    .local v10, height:F
    :goto_0
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v13

    const/high16 v19, 0x4000

    div-float v19, v15, v19

    sub-float v16, v18, v19

    .line 150
    .local v16, x:F
    int-to-float v0, v7

    move/from16 v18, v0

    mul-float v18, v18, v14

    const/high16 v19, 0x4000

    div-float v19, v10, v19

    sub-float v17, v18, v19

    .line 152
    .local v17, y:F
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    add-float v20, v16, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-float v21, v17, v10

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    return-object p2

    .line 146
    .end local v10           #height:F
    .end local v15           #width:F
    .end local v16           #x:F
    .end local v17           #y:F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v15, v18, v12

    .line 147
    .restart local v15       #width:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/SmileView;->mWantIconHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v10, v18, v12

    .restart local v10       #height:F
    goto :goto_0
.end method

.method private mapToSmile(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x1

    .line 265
    iget-object v7, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    if-nez v7, :cond_1

    .line 286
    :cond_0
    return v6

    .line 268
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/SmileView;->getWidth()I

    move-result v7

    if-gt p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/SmileView;->getHeight()I

    move-result v7

    if-gt p2, v7, :cond_0

    .line 272
    const/4 v6, -0x1

    .line 273
    .local v6, nearestKey:I
    const v5, 0x7f7fffff

    .line 274
    .local v5, nearestDis:F
    iget v7, p0, Lcom/meizu/widget/SmileView;->mColCount:I

    iget v8, p0, Lcom/meizu/widget/SmileView;->mRowCount:I

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    invoke-interface {v8}, Lcom/meizu/widget/SmileView$Callback;->getCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 275
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 276
    iget-object v7, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    const/4 v8, 0x1

    invoke-direct {p0, v4, v7, v8}, Lcom/meizu/widget/SmileView;->getItemClip(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    .line 277
    iget-object v7, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int/2addr v7, p1

    int-to-float v2, v7

    .line 278
    .local v2, disx:F
    iget-object v7, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int/2addr v7, p2

    int-to-float v3, v7

    .line 279
    .local v3, disy:F
    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float v1, v7, v8

    .line 280
    .local v1, dis:F
    cmpg-float v7, v1, v5

    if-gez v7, :cond_2

    .line 281
    move v6, v4

    .line 282
    move v5, v1

    .line 275
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getSmileCallback()Lcom/meizu/widget/SmileView$Callback;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 171
    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    if-nez v3, :cond_1

    .line 195
    :cond_0
    return-void

    .line 175
    :cond_1
    iget v3, p0, Lcom/meizu/widget/SmileView;->mColCount:I

    iget v4, p0, Lcom/meizu/widget/SmileView;->mRowCount:I

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    invoke-interface {v4}, Lcom/meizu/widget/SmileView$Callback;->getCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    invoke-interface {v3, v1}, Lcom/meizu/widget/SmileView$Callback;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 178
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 181
    sget-boolean v3, Lcom/meizu/widget/SmileView;->USE_ICON_BG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 182
    iget v3, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    if-ne v3, v1, :cond_3

    .line 183
    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/meizu/widget/SmileView;->BG_STATE_PRESSED:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 187
    :goto_1
    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/meizu/widget/SmileView;->getItemClip(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    .line 188
    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 189
    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/meizu/widget/SmileView;->getItemClip(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    .line 192
    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mTmpItemClip:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 193
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/SmileView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/meizu/widget/SmileView;->BG_STATE_EMPTY:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 159
    iget-object v2, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    invoke-interface {v2}, Lcom/meizu/widget/SmileView$Callback;->isAspectFixed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget v2, p0, Lcom/meizu/widget/SmileView;->mWantPanelWidth:I

    invoke-static {v2, p1}, Lcom/meizu/widget/SmileView;->getDefaultSize(II)I

    move-result v1

    .line 161
    .local v1, width:I
    iget v2, p0, Lcom/meizu/widget/SmileView;->mWantPanelHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/meizu/widget/SmileView;->mWantPanelWidth:I

    div-int v0, v2, v3

    .line 162
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/meizu/widget/SmileView;->setMeasuredDimension(II)V

    .line 167
    .end local v0           #height:I
    .end local v1           #width:I
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v2, p0, Lcom/meizu/widget/SmileView;->mWantPanelWidth:I

    invoke-static {v2, p1}, Lcom/meizu/widget/SmileView;->getDefaultSize(II)I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/SmileView;->mWantPanelHeight:I

    invoke-static {v3, p2}, Lcom/meizu/widget/SmileView;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/widget/SmileView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 199
    iget-object v7, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    if-nez v7, :cond_1

    .line 200
    const/4 v6, 0x0

    .line 261
    :cond_0
    :goto_0
    return v6

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 206
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v4, v7

    .line 207
    .local v4, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/lit8 v5, v7, -0xa

    .line 209
    .local v5, y:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 210
    .local v2, pid:I
    invoke-direct {p0, v4, v5}, Lcom/meizu/widget/SmileView;->mapToSmile(II)I

    move-result v1

    .line 211
    .local v1, item:I
    iget v7, p0, Lcom/meizu/widget/SmileView;->mActivePointerId:I

    if-eq v7, v2, :cond_2

    .line 212
    iget v7, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    if-eq v1, v7, :cond_2

    .line 213
    iget-object v7, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    iget v8, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    invoke-interface {v7, v8}, Lcom/meizu/widget/SmileView$Callback;->onCommit(I)V

    .line 216
    :cond_2
    iput v1, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    .line 217
    iput v2, p0, Lcom/meizu/widget/SmileView;->mActivePointerId:I

    .line 218
    invoke-virtual {p0}, Lcom/meizu/widget/SmileView;->invalidate()V

    goto :goto_0

    .line 223
    .end local v0           #actionIndex:I
    .end local v1           #item:I
    .end local v2           #pid:I
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_2
    iget v7, p0, Lcom/meizu/widget/SmileView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 224
    .local v3, pointerIndex:I
    if-ltz v3, :cond_0

    .line 227
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v4, v7

    .line 228
    .restart local v4       #x:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const/high16 v8, -0x3ee0

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 229
    .restart local v5       #y:I
    invoke-direct {p0, v4, v5}, Lcom/meizu/widget/SmileView;->mapToSmile(II)I

    move-result v1

    .line 230
    .restart local v1       #item:I
    iget v7, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    if-eq v7, v1, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/meizu/widget/SmileView;->invalidate()V

    .line 233
    :cond_3
    iput v1, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    goto :goto_0

    .line 239
    .end local v1           #item:I
    .end local v3           #pointerIndex:I
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 240
    .restart local v0       #actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 241
    .restart local v2       #pid:I
    iget v7, p0, Lcom/meizu/widget/SmileView;->mActivePointerId:I

    if-ne v7, v2, :cond_0

    .line 242
    iget v7, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    if-ltz v7, :cond_4

    .line 243
    invoke-virtual {p0}, Lcom/meizu/widget/SmileView;->invalidate()V

    .line 244
    iget-object v7, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    iget v8, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    invoke-interface {v7, v8}, Lcom/meizu/widget/SmileView$Callback;->onCommit(I)V

    .line 245
    iput v9, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    .line 247
    :cond_4
    iput v9, p0, Lcom/meizu/widget/SmileView;->mActivePointerId:I

    goto :goto_0

    .line 253
    .end local v0           #actionIndex:I
    .end local v2           #pid:I
    :pswitch_4
    iget v7, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    if-ltz v7, :cond_5

    .line 254
    iput v9, p0, Lcom/meizu/widget/SmileView;->mActiveSmileId:I

    .line 255
    invoke-virtual {p0}, Lcom/meizu/widget/SmileView;->invalidate()V

    .line 257
    :cond_5
    iput v9, p0, Lcom/meizu/widget/SmileView;->mActivePointerId:I

    goto/16 :goto_0

    .line 202
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

.method public setSmileCallback(Lcom/meizu/widget/SmileView$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/meizu/widget/SmileView;->mSmileCallback:Lcom/meizu/widget/SmileView$Callback;

    .line 119
    return-void
.end method

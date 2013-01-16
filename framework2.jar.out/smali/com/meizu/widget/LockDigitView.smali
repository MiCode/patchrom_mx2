.class public Lcom/meizu/widget/LockDigitView;
.super Landroid/view/View;
.source "LockDigitView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/LockDigitView$CellInfo;,
        Lcom/meizu/widget/LockDigitView$OnPatternListener;,
        Lcom/meizu/widget/LockDigitView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final BG_SIZE_MIN:I = 0xa0

.field private static final COLUMN_NUM:I = 0x3

.field private static final DEBUG_DRAWINGS:Z = false

.field private static final DEF_ICONS:[I = null

.field private static final ROW_NUM:I = 0x4

.field static final TAG:Ljava/lang/String; = "LockDigitView"

.field private static final TEXT_COLOR_DEFAULT:I = -0x323233

.field private static final TEXT_COLOR_TOUCHED:I = -0x323233

.field private static final TEXT_SIZE_DEFAULT:I = 0x48


# instance fields
.field private mAspect:I

.field private mCellInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/meizu/widget/LockDigitView$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellNormalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCellPointDrawable:Landroid/graphics/drawable/Drawable;

.field private mCellPressedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mEnableHapticFeedback:Z

.field private mFMI:Landroid/graphics/Paint$FontMetricsInt;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private mKeyAsPoint:Z

.field private mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDown:Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/widget/LockDigitView;->DEF_ICONS:[I

    return-void

    :array_0
    .array-data 0x4
        0xcct 0x1t 0x8t 0x1t
        0xcdt 0x1t 0x8t 0x1t
        0xcet 0x1t 0x8t 0x1t
        0xcft 0x1t 0x8t 0x1t
        0xd0t 0x1t 0x8t 0x1t
        0xd1t 0x1t 0x8t 0x1t
        0xd2t 0x1t 0x8t 0x1t
        0xd3t 0x1t 0x8t 0x1t
        0xd4t 0x1t 0x8t 0x1t
        0x0t 0x0t 0x0t 0x0t
        0xcbt 0x1t 0x8t 0x1t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/LockDigitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v4, -0x4080

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mDebugPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    .line 61
    iput v4, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    .line 62
    iput v4, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    .line 64
    iput-boolean v3, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    .line 65
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mInStealthMode:Z

    .line 66
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    .line 67
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 68
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 70
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->mHitFactor:F

    .line 617
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    .line 618
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    .line 177
    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mAspect:I

    .line 178
    invoke-virtual {p0, v3}, Lcom/meizu/widget/LockDigitView;->setClickable(Z)V

    .line 180
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x323233

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 185
    return-void
.end method

.method private addCellToPattern(Lcom/meizu/widget/LockDigitView$Cell;)V
    .locals 1
    .parameter "newCell"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyCellAdded()V

    .line 386
    return-void
.end method

.method private canAdd2Pattern(II)Z
    .locals 4
    .parameter "row"
    .parameter "column"

    .prologue
    const/4 v2, 0x0

    .line 766
    invoke-static {p1, p2}, Lcom/meizu/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v1

    .line 767
    .local v1, key:I
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$CellInfo;

    .line 768
    .local v0, info:Lcom/meizu/widget/LockDigitView$CellInfo;
    if-eqz v0, :cond_2

    .line 769
    iget-object v3, v0, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/meizu/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 775
    :cond_0
    :goto_0
    return v2

    .line 772
    :cond_1
    iget-boolean v2, v0, Lcom/meizu/widget/LockDigitView$CellInfo;->enabled:Z

    goto :goto_0

    .line 774
    :cond_2
    sget-object v3, Lcom/meizu/widget/LockDigitView;->DEF_ICONS:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 775
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkForNewHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "moving"

    .prologue
    .line 391
    iget v8, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    .line 392
    .local v8, squareWidth:F
    iget v9, p0, Lcom/meizu/widget/LockDigitView;->mHitFactor:F

    mul-float/2addr v9, v8

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v3, v9

    .line 394
    .local v3, hitRadius:F
    const/4 v7, -0x1

    .line 395
    .local v7, rowHit:I
    const/4 v0, -0x1

    .line 397
    .local v0, columnHit:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v9, 0x3

    if-ge v4, v9, :cond_2

    .line 398
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    const/4 v9, 0x4

    if-ge v5, v9, :cond_1

    .line 399
    invoke-direct {p0, v4}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v9

    sub-float v1, p1, v9

    .line 400
    .local v1, cx:F
    invoke-direct {p0, v5}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v9

    sub-float v2, p2, v9

    .line 401
    .local v2, cy:F
    mul-float v9, v1, v1

    mul-float v10, v2, v2

    add-float/2addr v9, v10

    cmpg-float v9, v9, v3

    if-gez v9, :cond_0

    .line 402
    move v7, v5

    .line 403
    move v0, v4

    .line 398
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 397
    .end local v1           #cx:F
    .end local v2           #cy:F
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    .end local v5           #j:I
    :cond_2
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    const/4 v9, -0x1

    if-ne v0, v9, :cond_4

    .line 409
    :cond_3
    const/4 v9, 0x0

    .line 422
    :goto_2
    return-object v9

    .line 411
    :cond_4
    if-eqz p3, :cond_5

    iget-object v9, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 412
    iget-object v9, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/widget/LockDigitView$Cell;

    .line 413
    .local v6, last:Lcom/meizu/widget/LockDigitView$Cell;
    iget v9, v6, Lcom/meizu/widget/LockDigitView$Cell;->row:I

    if-ne v9, v7, :cond_5

    iget v9, v6, Lcom/meizu/widget/LockDigitView$Cell;->column:I

    if-ne v9, v0, :cond_5

    .line 414
    const/4 v9, 0x0

    goto :goto_2

    .line 418
    .end local v6           #last:Lcom/meizu/widget/LockDigitView$Cell;
    :cond_5
    invoke-direct {p0, v7, v0}, Lcom/meizu/widget/LockDigitView;->canAdd2Pattern(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 420
    invoke-static {v7, v0}, Lcom/meizu/widget/LockDigitView$Cell;->of(II)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v9

    goto :goto_2

    .line 422
    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private detectAndAddHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "moving"

    .prologue
    .line 370
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/LockDigitView;->checkForNewHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v0

    .line 371
    .local v0, cell:Lcom/meizu/widget/LockDigitView$Cell;
    if-eqz v0, :cond_1

    .line 372
    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->addCellToPattern(Lcom/meizu/widget/LockDigitView$Cell;)V

    .line 373
    iget-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    if-eqz v1, :cond_0

    .line 374
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/LockDigitView;->performHapticFeedback(II)Z

    .line 380
    .end local v0           #cell:Lcom/meizu/widget/LockDigitView$Cell;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #cell:Lcom/meizu/widget/LockDigitView$Cell;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawCell(Landroid/graphics/Canvas;IILcom/meizu/widget/LockDigitView$Cell;)Z
    .locals 23
    .parameter "canvas"
    .parameter "row"
    .parameter "column"
    .parameter "active"

    .prologue
    .line 673
    const/4 v13, 0x0

    .line 674
    .local v13, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 675
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    .line 677
    .local v8, enabled:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v6

    .line 678
    .local v6, cx:F
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v7

    .line 689
    .local v7, cy:F
    invoke-static/range {p2 .. p3}, Lcom/meizu/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v12

    .line 690
    .local v12, key:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/widget/LockDigitView$CellInfo;

    .line 691
    .local v11, info:Lcom/meizu/widget/LockDigitView$CellInfo;
    if-eqz v11, :cond_1

    .line 692
    iget-object v10, v11, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 693
    iget-object v13, v11, Lcom/meizu/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    .line 694
    iget-boolean v8, v11, Lcom/meizu/widget/LockDigitView$CellInfo;->enabled:Z

    .line 701
    :cond_0
    :goto_0
    if-nez v10, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 702
    const/16 v20, 0x0

    .line 762
    :goto_1
    return v20

    .line 696
    :cond_1
    sget-object v20, Lcom/meizu/widget/LockDigitView;->DEF_ICONS:[I

    aget v20, v20, v12

    if-eqz v20, :cond_0

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/LockDigitView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget-object v21, Lcom/meizu/widget/LockDigitView;->DEF_ICONS:[I

    aget v21, v21, v12

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_0

    .line 704
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 705
    if-eqz v8, :cond_4

    .line 706
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/LockDigitView;->isCellNumeric(II)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPointDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/LockDigitView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10801d7

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/LockDigitView;->mCellPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 710
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPointDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/widget/LockDigitView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 711
    const/16 v20, 0x1

    goto :goto_1

    .line 715
    :cond_4
    const/16 v20, 0x0

    goto :goto_1

    .line 719
    :cond_5
    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p3

    if-ne v0, v1, :cond_8

    const/16 v16, 0x1

    .line 720
    .local v16, touched:Z
    :goto_2
    if-eqz v11, :cond_6

    iget-object v0, v11, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 722
    :cond_6
    if-eqz v16, :cond_9

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPressedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/LockDigitView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10801d6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/LockDigitView;->mCellPressedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 725
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/widget/LockDigitView;->mCellPressedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 731
    .local v5, background:Landroid/graphics/drawable/Drawable;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/meizu/widget/LockDigitView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 740
    .end local v5           #background:Landroid/graphics/drawable/Drawable;
    :goto_4
    if-eqz v10, :cond_d

    .line 741
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 742
    .local v17, w:I
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 743
    .local v9, h:I
    shr-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v6, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 744
    .local v18, x:I
    shr-int/lit8 v20, v9, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v7, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 745
    .local v19, y:I
    add-int v20, v18, v17

    add-int v21, v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 746
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 762
    .end local v9           #h:I
    .end local v17           #w:I
    .end local v18           #x:I
    .end local v19           #y:I
    :goto_5
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 719
    .end local v16           #touched:Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    .line 727
    .restart local v16       #touched:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellNormalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/LockDigitView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10801d5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/LockDigitView;->mCellNormalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 729
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/widget/LockDigitView;->mCellNormalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v5       #background:Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 733
    .end local v5           #background:Landroid/graphics/drawable/Drawable;
    :cond_b
    if-eqz v16, :cond_c

    .line 734
    iget-object v0, v11, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    sget-object v21, Landroid/view/View;->PRESSED_STATE_SET:[I

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_4

    .line 736
    :cond_c
    iget-object v0, v11, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    sget-object v21, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_4

    .line 748
    :cond_d
    if-eqz v16, :cond_e

    const v14, -0x323233

    .line 749
    .local v14, textColor:I
    :goto_6
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/16 v15, 0x48

    .line 750
    .local v15, textSize:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    int-to-float v0, v15

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    if-nez v20, :cond_10

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    .line 757
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    sub-float v18, v6, v20

    .line 758
    .local v18, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v21, v0

    add-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v7, v20

    .line 759
    .local v19, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 748
    .end local v14           #textColor:I
    .end local v15           #textSize:I
    .end local v18           #x:F
    .end local v19           #y:F
    :cond_e
    const v14, -0x323233

    goto/16 :goto_6

    .line 749
    .restart local v14       #textColor:I
    :cond_f
    const/16 v15, 0x24

    goto :goto_7

    .line 755
    .restart local v15       #textSize:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    goto :goto_8
.end method

.method private drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 6
    .parameter "canvas"
    .parameter "icon"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 664
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 665
    .local v3, w:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 666
    .local v0, h:I
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    sub-float v4, p3, v4

    float-to-int v1, v4

    .line 667
    .local v1, l:I
    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    sub-float v4, p4, v4

    float-to-int v2, v4

    .line 668
    .local v2, t:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p2, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 669
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 670
    return-void
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .parameter "column"

    .prologue
    .line 581
    iget v0, p0, Lcom/meizu/widget/LockDigitView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .parameter "row"

    .prologue
    .line 585
    iget v0, p0, Lcom/meizu/widget/LockDigitView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .parameter "x"

    .prologue
    .line 454
    iget v4, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    .line 455
    .local v4, squareWidth:F
    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 457
    .local v1, hitSize:F
    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 458
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 460
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 461
    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 465
    .end local v0           #hitLeft:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 458
    .restart local v0       #hitLeft:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v0           #hitLeft:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .parameter "y"

    .prologue
    .line 433
    iget v4, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    .line 434
    .local v4, squareHeight:F
    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 436
    .local v0, hitSize:F
    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 437
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v2, v5, :cond_1

    .line 439
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 440
    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 444
    .end local v1           #hitTop:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 437
    .restart local v1       #hitTop:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    .end local v1           #hitTop:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 565
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 566
    .local v2, y:F
    invoke-direct {p0, v1, v2, v3}, Lcom/meizu/widget/LockDigitView;->detectAndAddHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v0

    .line 567
    .local v0, hitCell:Lcom/meizu/widget/LockDigitView$Cell;
    if-eqz v0, :cond_0

    .line 568
    iput-boolean v4, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 569
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternStarted()V

    .line 570
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 575
    :goto_0
    iput v1, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    .line 576
    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    .line 577
    iput-boolean v4, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 578
    return-void

    .line 572
    :cond_0
    iput-boolean v3, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 573
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 515
    iget-boolean v8, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    if-nez v8, :cond_1

    .line 545
    :cond_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 520
    .local v2, historySize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    add-int/lit8 v8, v2, 0x1

    if-ge v4, v8, :cond_0

    .line 521
    iget-boolean v8, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    if-eqz v8, :cond_0

    .line 522
    if-ge v4, v2, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    .line 523
    .local v6, x:F
    :goto_1
    if-ge v4, v2, :cond_6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    .line 524
    .local v7, y:F
    :goto_2
    invoke-direct {p0, v6, v7, v11}, Lcom/meizu/widget/LockDigitView;->detectAndAddHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v3

    .line 525
    .local v3, hitCell:Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v8, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 526
    .local v5, patternSize:I
    if-eqz v3, :cond_2

    if-ne v5, v11, :cond_2

    .line 527
    iput-boolean v11, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 528
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternStarted()V

    .line 530
    :cond_2
    if-eqz v3, :cond_3

    .line 531
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 534
    :cond_3
    iget v8, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 535
    .local v0, dx:F
    iget v8, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 536
    .local v1, dy:F
    add-float v8, v0, v1

    iget v9, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    const v10, 0x3c23d70a

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 537
    iput v6, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    .line 538
    iput v7, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    .line 540
    if-eqz v3, :cond_4

    .line 541
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 520
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 522
    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v3           #hitCell:Lcom/meizu/widget/LockDigitView$Cell;
    .end local v5           #patternSize:I
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    goto :goto_1

    .line 523
    .restart local v6       #x:F
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    goto :goto_2
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 555
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 556
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 558
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternDetected()V

    .line 559
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 561
    :cond_0
    return-void
.end method

.method private isCellNumeric(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 780
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 781
    :cond_0
    const/4 v0, 0x0

    .line 783
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 248
    :cond_0
    const v0, 0x1040381

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(I)V

    .line 249
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    invoke-interface {v0}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternCleared()V

    .line 269
    :cond_0
    const v0, 0x1040380

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(I)V

    .line 270
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 262
    :cond_0
    const v0, 0x1040382

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(I)V

    .line 263
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    invoke-interface {v0}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternStart()V

    .line 255
    :cond_0
    const v0, 0x104037f

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(I)V

    .line 256
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 310
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 319
    move v0, v1

    .line 321
    :goto_0
    return v0

    .line 312
    :sswitch_0
    move v0, p2

    .line 313
    goto :goto_0

    .line 315
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 316
    goto :goto_0

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/LockDigitView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 549
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessibilityEvent(I)V

    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/LockDigitView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 551
    return-void
.end method


# virtual methods
.method public deleteLastCell()V
    .locals 3

    .prologue
    .line 787
    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 788
    .local v0, size:I
    if-lez v0, :cond_0

    .line 789
    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 790
    :cond_0
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    .line 287
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    .line 294
    return-void
.end method

.method public getShowPointIfEmpty()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0x280

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 327
    const/16 v0, 0x1e0

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mInStealthMode:Z

    return v0
.end method

.method public isKeyAsPoint()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 590
    iget-object v4, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    .line 591
    .local v4, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/LockDigitView$Cell;>;"
    const/4 v3, 0x0

    .line 593
    .local v3, lastPattern:Lcom/meizu/widget/LockDigitView$Cell;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 594
    .local v0, N:I
    if-lez v0, :cond_0

    iget-boolean v5, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    if-eqz v5, :cond_0

    .line 595
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #lastPattern:Lcom/meizu/widget/LockDigitView$Cell;
    check-cast v3, Lcom/meizu/widget/LockDigitView$Cell;

    .line 598
    .restart local v3       #lastPattern:Lcom/meizu/widget/LockDigitView$Cell;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 599
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 600
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/meizu/widget/LockDigitView;->drawCell(Landroid/graphics/Canvas;IILcom/meizu/widget/LockDigitView$Cell;)Z

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 598
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    .end local v2           #j:I
    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 470
    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 472
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 483
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/LockDigitView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 486
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 474
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 477
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 480
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getSuggestedMinimumWidth()I

    move-result v2

    .line 339
    .local v2, minimumWidth:I
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 340
    .local v1, minimumHeight:I
    invoke-direct {p0, p1, v2}, Lcom/meizu/widget/LockDigitView;->resolveMeasured(II)I

    move-result v4

    .line 341
    .local v4, viewWidth:I
    invoke-direct {p0, p2, v1}, Lcom/meizu/widget/LockDigitView;->resolveMeasured(II)I

    move-result v3

    .line 342
    .local v3, viewHeight:I
    mul-int/lit8 v5, v4, 0x4

    div-int/lit8 v5, v5, 0x3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 344
    .local v0, minSize:I
    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mAspect:I

    packed-switch v5, :pswitch_data_0

    .line 358
    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/meizu/widget/LockDigitView;->setMeasuredDimension(II)V

    .line 359
    return-void

    .line 346
    :pswitch_0
    move v3, v0

    .line 347
    mul-int/lit8 v5, v0, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 348
    goto :goto_0

    .line 350
    :pswitch_1
    move v3, v0

    .line 351
    goto :goto_0

    .line 353
    :pswitch_2
    mul-int/lit8 v5, v0, 0x3

    div-int/lit8 v4, v5, 0x4

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/16 v2, -0x1e

    .line 298
    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mPaddingLeft:I

    .line 299
    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mPaddingRight:I

    .line 300
    iget v2, p0, Lcom/meizu/widget/LockDigitView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/meizu/widget/LockDigitView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 301
    .local v1, width:I
    int-to-float v2, v1

    const/high16 v3, 0x4040

    div-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    .line 303
    iget v2, p0, Lcom/meizu/widget/LockDigitView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/meizu/widget/LockDigitView;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 304
    .local v0, height:I
    int-to-float v2, v0

    const/high16 v3, 0x4080

    div-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    .line 305
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 491
    iget-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 511
    :goto_0
    return v0

    .line 495
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 511
    goto :goto_0

    .line 497
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 500
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 503
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 506
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 507
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 508
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternCleared()V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetPattern()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 277
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 279
    return-void
.end method

.method public setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 6
    .parameter "row"
    .parameter "column"
    .parameter "label"
    .parameter "icon"
    .parameter "enabled"

    .prologue
    .line 629
    invoke-static {p1, p2}, Lcom/meizu/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v0

    .line 630
    .local v0, index:I
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v3, 0x1

    if-ne p5, v3, :cond_0

    .line 631
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 635
    :goto_0
    iget v3, p0, Lcom/meizu/widget/LockDigitView;->mPaddingLeft:I

    int-to-float v3, v3

    int-to-float v4, p2

    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 636
    .local v1, x:I
    iget v3, p0, Lcom/meizu/widget/LockDigitView;->mPaddingTop:I

    int-to-float v3, v3

    int-to-float v4, p1

    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 637
    .local v2, y:I
    int-to-float v3, v1

    iget v4, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v2

    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/meizu/widget/LockDigitView;->invalidate(IIII)V

    .line 638
    return-void

    .line 633
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    new-instance v4, Lcom/meizu/widget/LockDigitView$CellInfo;

    invoke-direct {v4, p3, p4, p5}, Lcom/meizu/widget/LockDigitView$CellInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/meizu/widget/LockDigitView;->mInStealthMode:Z

    .line 209
    return-void
.end method

.method public setKeyAsPoint(Z)V
    .locals 1
    .parameter "keyAsPoint"

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    if-eq v0, p1, :cond_0

    .line 645
    iput-boolean p1, p0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    .line 646
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 648
    :cond_0
    return-void
.end method

.method public setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V
    .locals 0
    .parameter "onPatternListener"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    .line 229
    return-void
.end method

.method public setPattern(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 242
    return-void
.end method

.method public setShowPointIfEmpty(Z)V
    .locals 0
    .parameter "showPointIfEmpty"

    .prologue
    .line 657
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    .line 219
    return-void
.end method

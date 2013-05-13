.class Landroid/text/Layout$RectRow;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RectRow"
.end annotation


# instance fields
.field private final bottom:I

.field private mCount:I

.field private mList:[J

.field private final top:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1345
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1346
    iput p1, p0, Landroid/text/Layout$RectRow;->top:I

    .line 1347
    iput p2, p0, Landroid/text/Layout$RectRow;->bottom:I

    .line 1348
    return-void
.end method

.method private leftOfLong(J)I
    .locals 2
    .parameter "pt"

    .prologue
    .line 1396
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private rightOfLong(J)I
    .locals 2
    .parameter "pt"

    .prologue
    .line 1400
    const-wide/16 v0, -0x1

    and-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private toLong(II)J
    .locals 4
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1392
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addRect(II)V
    .locals 5
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1351
    iget-object v1, p0, Landroid/text/Layout$RectRow;->mList:[J

    if-nez v1, :cond_0

    .line 1352
    const/16 v1, 0x20

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/text/Layout$RectRow;->mList:[J

    .line 1354
    :cond_0
    iget v1, p0, Landroid/text/Layout$RectRow;->mCount:I

    iget-object v2, p0, Landroid/text/Layout$RectRow;->mList:[J

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 1355
    iget-object v1, p0, Landroid/text/Layout$RectRow;->mList:[J

    iget v2, p0, Landroid/text/Layout$RectRow;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/text/Layout$RectRow;->mList:[J

    .line 1357
    :cond_1
    if-le p1, p2, :cond_2

    .line 1358
    move v0, p1

    .line 1359
    .local v0, tmp:I
    move p1, p2

    .line 1360
    move p2, v0

    .line 1362
    .end local v0           #tmp:I
    :cond_2
    iget-object v1, p0, Landroid/text/Layout$RectRow;->mList:[J

    iget v2, p0, Landroid/text/Layout$RectRow;->mCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/text/Layout$RectRow;->mCount:I

    invoke-direct {p0, p1, p2}, Landroid/text/Layout$RectRow;->toLong(II)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1363
    return-void
.end method

.method public toRectArray()[Landroid/graphics/RectF;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1366
    iget v7, p0, Landroid/text/Layout$RectRow;->mCount:I

    if-gtz v7, :cond_0

    .line 1367
    new-array v7, v9, [Landroid/graphics/RectF;

    .line 1388
    :goto_0
    return-object v7

    .line 1369
    :cond_0
    const/4 v2, 0x0

    .line 1370
    .local v2, index:I
    iget v7, p0, Landroid/text/Layout$RectRow;->mCount:I

    new-array v0, v7, [Landroid/graphics/RectF;

    .line 1371
    .local v0, a:[Landroid/graphics/RectF;
    iget-object v7, p0, Landroid/text/Layout$RectRow;->mList:[J

    iget v8, p0, Landroid/text/Layout$RectRow;->mCount:I

    invoke-static {v7, v9, v8}, Ljava/util/Arrays;->sort([JII)V

    .line 1372
    const/4 v5, 0x0

    .line 1373
    .local v5, r:Landroid/graphics/RectF;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v7, p0, Landroid/text/Layout$RectRow;->mCount:I

    if-ge v1, v7, :cond_4

    .line 1374
    iget-object v7, p0, Landroid/text/Layout$RectRow;->mList:[J

    aget-wide v7, v7, v1

    invoke-direct {p0, v7, v8}, Landroid/text/Layout$RectRow;->leftOfLong(J)I

    move-result v7

    int-to-float v4, v7

    .line 1375
    .local v4, left:F
    iget-object v7, p0, Landroid/text/Layout$RectRow;->mList:[J

    aget-wide v7, v7, v1

    invoke-direct {p0, v7, v8}, Landroid/text/Layout$RectRow;->rightOfLong(J)I

    move-result v7

    int-to-float v6, v7

    .line 1376
    .local v6, right:F
    if-eqz v5, :cond_1

    iget v7, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v8, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 1378
    :cond_1
    if-eqz v5, :cond_2

    .line 1379
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aput-object v5, v0, v2

    move v2, v3

    .line 1380
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_2
    new-instance v5, Landroid/graphics/RectF;

    .end local v5           #r:Landroid/graphics/RectF;
    iget v7, p0, Landroid/text/Layout$RectRow;->top:I

    int-to-float v7, v7

    iget v8, p0, Landroid/text/Layout$RectRow;->bottom:I

    int-to-float v8, v8

    invoke-direct {v5, v4, v7, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1373
    .restart local v5       #r:Landroid/graphics/RectF;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1382
    :cond_3
    iget v7, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v5, Landroid/graphics/RectF;->left:F

    .line 1383
    iget v7, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v5, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 1386
    .end local v4           #left:F
    .end local v6           #right:F
    :cond_4
    if-eqz v5, :cond_5

    .line 1387
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aput-object v5, v0, v2

    move v2, v3

    .line 1388
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_5
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/graphics/RectF;

    goto :goto_0
.end method

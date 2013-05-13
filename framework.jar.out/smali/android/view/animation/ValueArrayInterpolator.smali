.class public Landroid/view/animation/ValueArrayInterpolator;
.super Ljava/lang/Object;
.source "ValueArrayInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mValueCount:I

.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    .line 23
    iput v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    .line 29
    sget-object v3, Lcom/android/internal/R$styleable;->ValueArrayInterpolator:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 33
    .local v2, sa:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 34
    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    .line 35
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 36
    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    array-length v3, v2

    iput v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    .line 41
    .end local v1           #i:I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v3, 0x0

    .line 63
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    if-nez v4, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v3

    .line 66
    :cond_1
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    array-length v4, v4

    if-lez v4, :cond_0

    .line 69
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 70
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v3, v4, v7

    goto :goto_0

    .line 72
    :cond_2
    cmpg-float v4, p1, v3

    if-gtz v4, :cond_3

    .line 73
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v3, v4, v7

    goto :goto_0

    .line 75
    :cond_3
    cmpl-float v4, p1, v6

    if-ltz v4, :cond_4

    .line 76
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    iget v5, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    goto :goto_0

    .line 78
    :cond_4
    iget v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v2, v6, v4

    .line 79
    .local v2, segment:F
    div-float v4, p1, v2

    float-to-int v1, v4

    .line 80
    .local v1, index:I
    int-to-float v4, v1

    mul-float/2addr v4, v2

    sub-float v0, p1, v4

    .line 82
    .local v0, extra:F
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v4, v4, v1

    iget-object v5, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    div-float/2addr v5, v2

    add-float v3, v4, v5

    .line 84
    .local v3, value:F
    goto :goto_0
.end method

.method public setValueArray([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    .line 55
    iget-object v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    array-length v0, v0

    iput v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    goto :goto_0
.end method

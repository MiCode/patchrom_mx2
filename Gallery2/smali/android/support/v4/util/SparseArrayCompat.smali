.class public Landroid/support/v4/util/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    const/4 v1, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 40
    invoke-static {p1}, Landroid/support/v4/util/SparseArrayCompat;->idealIntArraySize(I)I

    move-result p1

    .line 42
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 43
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 44
    iput v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 45
    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 326
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 328
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 329
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 331
    .local v0, guess:I
    aget v3, p0, v0

    if-ge v3, p3, :cond_0

    .line 332
    move v2, v0

    goto :goto_0

    .line 334
    :cond_0
    move v1, v0

    goto :goto_0

    .line 337
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 338
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 342
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 339
    .restart local v1       #high:I
    :cond_3
    aget v3, p0, v1

    if-eq v3, p3, :cond_2

    .line 342
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private gc()V
    .locals 7

    .prologue
    .line 116
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    iget v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 117
    .local v2, n:I
    const/4 v3, 0x0

    .line 118
    .local v3, o:I
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 119
    .local v1, keys:[I
    iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 121
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 122
    aget-object v4, v5, v0

    .line 124
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 125
    if-eq v0, v3, :cond_0

    .line 126
    aget v6, v1, v0

    aput v6, v1, v3

    .line 127
    aput-object v4, v5, v3

    .line 130
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v4           #val:Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 135
    iput v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 138
    return-void
.end method

.method static idealByteArraySize(I)I
    .locals 3
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 346
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 347
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 348
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 350
    .end local p0
    :cond_0
    return p0

    .line 346
    .restart local p0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 354
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/util/SparseArrayCompat;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    const/4 v4, 0x0

    .line 280
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 281
    .local v1, n:I
    iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 283
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 284
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    iput v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 288
    iput-boolean v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 289
    return-void
.end method

.method public delete(I)V
    .locals 4
    .parameter "key"

    .prologue
    .line 73
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I

    move-result v0

    .line 75
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 76
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 77
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 81
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    .local p2, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I

    move-result v0

    .line 62
    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 65
    .end local p2           #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_0
    :goto_0
    return-object p2

    .restart local p2       #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_1
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public keyAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 210
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 146
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I

    move-result v0

    .line 148
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 149
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 190
    :goto_0
    return-void

    .line 151
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 153
    iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 154
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aput p1, v4, v0

    .line 155
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    .line 159
    :cond_1
    iget-boolean v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 160
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 163
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 166
    :cond_2
    iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 167
    iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/support/v4/util/SparseArrayCompat;->idealIntArraySize(I)I

    move-result v1

    .line 169
    .local v1, n:I
    new-array v2, v1, [I

    .line 170
    .local v2, nkeys:[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 173
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iput-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 177
    iput-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 180
    .end local v1           #n:I
    .end local v2           #nkeys:[I
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 182
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_4
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aput p1, v4, v0

    .line 187
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 188
    iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 0
    .parameter "key"

    .prologue
    .line 87
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->delete(I)V

    .line 88
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 94
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 98
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 197
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 201
    :cond_0
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, this:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

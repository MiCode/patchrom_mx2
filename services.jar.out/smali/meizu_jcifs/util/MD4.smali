.class public Lmeizu_jcifs/util/MD4;
.super Ljava/security/MessageDigest;
.source "MD4.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40


# instance fields
.field private X:[I

.field private buffer:[B

.field private context:[I

.field private count:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "MD4"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    .line 60
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lmeizu_jcifs/util/MD4;->buffer:[B

    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    .line 73
    invoke-virtual {p0}, Lmeizu_jcifs/util/MD4;->engineReset()V

    .line 74
    return-void
.end method

.method private constructor <init>(Lmeizu_jcifs/util/MD4;)V
    .locals 2
    .parameter "md"

    .prologue
    .line 80
    invoke-direct {p0}, Lmeizu_jcifs/util/MD4;-><init>()V

    .line 81
    iget-object v0, p1, Lmeizu_jcifs/util/MD4;->context:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    .line 82
    iget-object v0, p1, Lmeizu_jcifs/util/MD4;->buffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lmeizu_jcifs/util/MD4;->buffer:[B

    .line 83
    iget-wide v0, p1, Lmeizu_jcifs/util/MD4;->count:J

    iput-wide v0, p0, Lmeizu_jcifs/util/MD4;->count:J

    .line 84
    return-void
.end method

.method private FF(IIIIII)I
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 288
    and-int v1, p2, p3

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    add-int/2addr v1, p1

    add-int v0, v1, p5

    .line 289
    .local v0, t:I
    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private GG(IIIIII)I
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 292
    or-int v1, p3, p4

    and-int/2addr v1, p2

    and-int v2, p3, p4

    or-int/2addr v1, v2

    add-int/2addr v1, p1

    add-int/2addr v1, p5

    const v2, 0x5a827999

    add-int v0, v1, v2

    .line 293
    .local v0, t:I
    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private HH(IIIIII)I
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 296
    xor-int v1, p2, p3

    xor-int/2addr v1, p4

    add-int/2addr v1, p1

    add-int/2addr v1, p5

    const v2, 0x6ed9eba1

    add-int v0, v1, v2

    .line 297
    .local v0, t:I
    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private transform([BI)V
    .locals 14
    .parameter "block"
    .parameter "offset"

    .prologue
    .line 216
    const/4 v12, 0x0

    .local v12, i:I
    move/from16 v13, p2

    .end local p2
    .local v13, offset:I
    :goto_0
    const/16 v0, 0x10

    if-ge v12, v0, :cond_0

    .line 217
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    add-int/lit8 p2, v13, 0x1

    .end local v13           #offset:I
    .restart local p2
    aget-byte v5, p1, v13

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v13, p2, 0x1

    .end local p2
    .restart local v13       #offset:I
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 p2, v13, 0x1

    .end local v13           #offset:I
    .restart local p2
    aget-byte v6, p1, v13

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v13, p2, 0x1

    .end local p2
    .restart local v13       #offset:I
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, v0, v12

    .line 216
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v5, 0x0

    aget v1, v0, v5

    .line 224
    .local v1, A:I
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v5, 0x1

    aget v2, v0, v5

    .line 225
    .local v2, B:I
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v5, 0x2

    aget v3, v0, v5

    .line 226
    .local v3, C:I
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v5, 0x3

    aget v4, v0, v5

    .line 228
    .local v4, D:I
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v1

    .line 229
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x1

    aget v10, v0, v5

    const/4 v11, 0x7

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v4

    .line 230
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x2

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v3

    .line 231
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x3

    aget v10, v0, v5

    const/16 v11, 0x13

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v2

    .line 232
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v1

    .line 233
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x5

    aget v10, v0, v5

    const/4 v11, 0x7

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v4

    .line 234
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x6

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v3

    .line 235
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x7

    aget v10, v0, v5

    const/16 v11, 0x13

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v2

    .line 236
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0x8

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v1

    .line 237
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0x9

    aget v10, v0, v5

    const/4 v11, 0x7

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v4

    .line 238
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xa

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v3

    .line 239
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xb

    aget v10, v0, v5

    const/16 v11, 0x13

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v2

    .line 240
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xc

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v1

    .line 241
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xd

    aget v10, v0, v5

    const/4 v11, 0x7

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v4

    .line 242
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xe

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v3

    .line 243
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xf

    aget v10, v0, v5

    const/16 v11, 0x13

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->FF(IIIIII)I

    move-result v2

    .line 245
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v1

    .line 246
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x4

    aget v10, v0, v5

    const/4 v11, 0x5

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v4

    .line 247
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0x8

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v3

    .line 248
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xc

    aget v10, v0, v5

    const/16 v11, 0xd

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v2

    .line 249
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v1

    .line 250
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x5

    aget v10, v0, v5

    const/4 v11, 0x5

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v4

    .line 251
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0x9

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v3

    .line 252
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xd

    aget v10, v0, v5

    const/16 v11, 0xd

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v2

    .line 253
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v1

    .line 254
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x6

    aget v10, v0, v5

    const/4 v11, 0x5

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v4

    .line 255
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xa

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v3

    .line 256
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xe

    aget v10, v0, v5

    const/16 v11, 0xd

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v2

    .line 257
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x3

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v1

    .line 258
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x7

    aget v10, v0, v5

    const/4 v11, 0x5

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v4

    .line 259
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xb

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v3

    .line 260
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xf

    aget v10, v0, v5

    const/16 v11, 0xd

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->GG(IIIIII)I

    move-result v2

    .line 262
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v1

    .line 263
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0x8

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v4

    .line 264
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x4

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v3

    .line 265
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xc

    aget v10, v0, v5

    const/16 v11, 0xf

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v2

    .line 266
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v1

    .line 267
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xa

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v4

    .line 268
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x6

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v3

    .line 269
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xe

    aget v10, v0, v5

    const/16 v11, 0xf

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v2

    .line 270
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v1

    .line 271
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0x9

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v4

    .line 272
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x5

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v3

    .line 273
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xd

    aget v10, v0, v5

    const/16 v11, 0xf

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v2

    .line 274
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x3

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v1

    .line 275
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xb

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v4

    .line 276
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/4 v5, 0x7

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v3

    .line 277
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->X:[I

    const/16 v5, 0xf

    aget v10, v0, v5

    const/16 v11, 0xf

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lmeizu_jcifs/util/MD4;->HH(IIIIII)I

    move-result v2

    .line 279
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v5, 0x0

    aget v6, v0, v5

    add-int/2addr v6, v1

    aput v6, v0, v5

    .line 280
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v5, 0x1

    aget v6, v0, v5

    add-int/2addr v6, v2

    aput v6, v0, v5

    .line 281
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v5, 0x2

    aget v6, v0, v5

    add-int/2addr v6, v3

    aput v6, v0, v5

    .line 282
    iget-object v0, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v5, 0x3

    aget v6, v0, v5

    add-int/2addr v6, v4

    aput v6, v0, v5

    .line 283
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lmeizu_jcifs/util/MD4;

    invoke-direct {v0, p0}, Lmeizu_jcifs/util/MD4;-><init>(Lmeizu_jcifs/util/MD4;)V

    return-object v0
.end method

.method public engineDigest()[B
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 173
    iget-wide v6, p0, Lmeizu_jcifs/util/MD4;->count:J

    const-wide/16 v8, 0x40

    rem-long/2addr v6, v8

    long-to-int v0, v6

    .line 174
    .local v0, bufferNdx:I
    const/16 v6, 0x38

    if-ge v0, v6, :cond_0

    rsub-int/lit8 v3, v0, 0x38

    .line 177
    .local v3, padLen:I
    :goto_0
    add-int/lit8 v6, v3, 0x8

    new-array v5, v6, [B

    .line 178
    .local v5, tail:[B
    const/16 v6, -0x80

    aput-byte v6, v5, v11

    .line 183
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_1

    .line 184
    add-int v6, v3, v1

    iget-wide v7, p0, Lmeizu_jcifs/util/MD4;->count:J

    const-wide/16 v9, 0x8

    mul-long/2addr v7, v9

    mul-int/lit8 v9, v1, 0x8

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    .end local v1           #i:I
    .end local v3           #padLen:I
    .end local v5           #tail:[B
    :cond_0
    rsub-int/lit8 v3, v0, 0x78

    goto :goto_0

    .line 186
    .restart local v1       #i:I
    .restart local v3       #padLen:I
    .restart local v5       #tail:[B
    :cond_1
    array-length v6, v5

    invoke-virtual {p0, v5, v11, v6}, Lmeizu_jcifs/util/MD4;->engineUpdate([BII)V

    .line 188
    const/16 v6, 0x10

    new-array v4, v6, [B

    .line 190
    .local v4, result:[B
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v12, :cond_3

    .line 191
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v12, :cond_2

    .line 192
    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    iget-object v7, p0, Lmeizu_jcifs/util/MD4;->context:[I

    aget v7, v7, v1

    mul-int/lit8 v8, v2, 0x8

    ushr-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 190
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 195
    .end local v2           #j:I
    :cond_3
    invoke-virtual {p0}, Lmeizu_jcifs/util/MD4;->engineReset()V

    .line 196
    return-object v4
.end method

.method public engineReset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v1, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const v2, 0x67452301

    aput v2, v1, v4

    .line 107
    iget-object v1, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v2, 0x1

    const v3, -0x10325477

    aput v3, v1, v2

    .line 108
    iget-object v1, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v2, 0x2

    const v3, -0x67452302

    aput v3, v1, v2

    .line 109
    iget-object v1, p0, Lmeizu_jcifs/util/MD4;->context:[I

    const/4 v2, 0x3

    const v3, 0x10325476

    aput v3, v1, v2

    .line 110
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmeizu_jcifs/util/MD4;->count:J

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lmeizu_jcifs/util/MD4;->buffer:[B

    aput-byte v4, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public engineUpdate(B)V
    .locals 5
    .parameter "b"

    .prologue
    .line 120
    iget-wide v1, p0, Lmeizu_jcifs/util/MD4;->count:J

    const-wide/16 v3, 0x40

    rem-long/2addr v1, v3

    long-to-int v0, v1

    .line 121
    .local v0, i:I
    iget-wide v1, p0, Lmeizu_jcifs/util/MD4;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmeizu_jcifs/util/MD4;->count:J

    .line 122
    iget-object v1, p0, Lmeizu_jcifs/util/MD4;->buffer:[B

    aput-byte p1, v1, v0

    .line 123
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lmeizu_jcifs/util/MD4;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lmeizu_jcifs/util/MD4;->transform([BI)V

    .line 125
    :cond_0
    return-void
.end method

.method public engineUpdate([BII)V
    .locals 7
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 141
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    int-to-long v3, p2

    int-to-long v5, p3

    add-long/2addr v3, v5

    array-length v5, p1

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 142
    :cond_0
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 145
    :cond_1
    iget-wide v3, p0, Lmeizu_jcifs/util/MD4;->count:J

    const-wide/16 v5, 0x40

    rem-long/2addr v3, v5

    long-to-int v0, v3

    .line 146
    .local v0, bufferNdx:I
    iget-wide v3, p0, Lmeizu_jcifs/util/MD4;->count:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lmeizu_jcifs/util/MD4;->count:J

    .line 147
    rsub-int/lit8 v2, v0, 0x40

    .line 148
    .local v2, partLen:I
    const/4 v1, 0x0

    .line 149
    .local v1, i:I
    if-lt p3, v2, :cond_3

    .line 150
    iget-object v3, p0, Lmeizu_jcifs/util/MD4;->buffer:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v3, p0, Lmeizu_jcifs/util/MD4;->buffer:[B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lmeizu_jcifs/util/MD4;->transform([BI)V

    .line 155
    move v1, v2

    :goto_0
    add-int/lit8 v3, v1, 0x40

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_2

    .line 156
    add-int v3, p2, v1

    invoke-direct {p0, p1, v3}, Lmeizu_jcifs/util/MD4;->transform([BI)V

    .line 155
    add-int/lit8 v1, v1, 0x40

    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x0

    .line 160
    :cond_3
    if-ge v1, p3, :cond_4

    .line 161
    add-int v3, p2, v1

    iget-object v4, p0, Lmeizu_jcifs/util/MD4;->buffer:[B

    sub-int v5, p3, v1

    invoke-static {p1, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_4
    return-void
.end method

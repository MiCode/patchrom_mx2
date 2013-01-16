.class public Lmeizu_jcifs/util/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# instance fields
.field i:I

.field j:I

.field s:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "key"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmeizu_jcifs/util/RC4;->init([BII)V

    .line 32
    return-void
.end method


# virtual methods
.method public init([BII)V
    .locals 7
    .parameter "key"
    .parameter "ki"
    .parameter "klen"

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x0

    .line 36
    new-array v1, v6, [B

    iput-object v1, p0, Lmeizu_jcifs/util/RC4;->s:[B

    .line 38
    iput v5, p0, Lmeizu_jcifs/util/RC4;->i:I

    :goto_0
    iget v1, p0, Lmeizu_jcifs/util/RC4;->i:I

    if-ge v1, v6, :cond_0

    .line 39
    iget-object v1, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v2, p0, Lmeizu_jcifs/util/RC4;->i:I

    iget v3, p0, Lmeizu_jcifs/util/RC4;->i:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 38
    iget v1, p0, Lmeizu_jcifs/util/RC4;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmeizu_jcifs/util/RC4;->i:I

    goto :goto_0

    .line 41
    :cond_0
    iput v5, p0, Lmeizu_jcifs/util/RC4;->j:I

    iput v5, p0, Lmeizu_jcifs/util/RC4;->i:I

    :goto_1
    iget v1, p0, Lmeizu_jcifs/util/RC4;->i:I

    if-ge v1, v6, :cond_1

    .line 42
    iget v1, p0, Lmeizu_jcifs/util/RC4;->j:I

    iget v2, p0, Lmeizu_jcifs/util/RC4;->i:I

    rem-int/2addr v2, p3

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v3, p0, Lmeizu_jcifs/util/RC4;->i:I

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lmeizu_jcifs/util/RC4;->j:I

    .line 43
    iget-object v1, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v2, p0, Lmeizu_jcifs/util/RC4;->i:I

    aget-byte v0, v1, v2

    .line 44
    .local v0, t:B
    iget-object v1, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v2, p0, Lmeizu_jcifs/util/RC4;->i:I

    iget-object v3, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v4, p0, Lmeizu_jcifs/util/RC4;->j:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 45
    iget-object v1, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v2, p0, Lmeizu_jcifs/util/RC4;->j:I

    aput-byte v0, v1, v2

    .line 41
    iget v1, p0, Lmeizu_jcifs/util/RC4;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmeizu_jcifs/util/RC4;->i:I

    goto :goto_1

    .line 48
    .end local v0           #t:B
    :cond_1
    iput v5, p0, Lmeizu_jcifs/util/RC4;->j:I

    iput v5, p0, Lmeizu_jcifs/util/RC4;->i:I

    .line 49
    return-void
.end method

.method public update([BII[BI)V
    .locals 9
    .parameter "src"
    .parameter "soff"
    .parameter "slen"
    .parameter "dst"
    .parameter "doff"

    .prologue
    .line 54
    add-int v1, p2, p3

    .local v1, slim:I
    move v0, p5

    .end local p5
    .local v0, doff:I
    move v2, p2

    .line 55
    .end local p2
    .local v2, soff:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 56
    iget v4, p0, Lmeizu_jcifs/util/RC4;->i:I

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lmeizu_jcifs/util/RC4;->i:I

    .line 57
    iget v4, p0, Lmeizu_jcifs/util/RC4;->j:I

    iget-object v5, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v6, p0, Lmeizu_jcifs/util/RC4;->i:I

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lmeizu_jcifs/util/RC4;->j:I

    .line 58
    iget-object v4, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v5, p0, Lmeizu_jcifs/util/RC4;->i:I

    aget-byte v3, v4, v5

    .line 59
    .local v3, t:B
    iget-object v4, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v5, p0, Lmeizu_jcifs/util/RC4;->i:I

    iget-object v6, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v7, p0, Lmeizu_jcifs/util/RC4;->j:I

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 60
    iget-object v4, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v5, p0, Lmeizu_jcifs/util/RC4;->j:I

    aput-byte v3, v4, v5

    .line 61
    add-int/lit8 p5, v0, 0x1

    .end local v0           #doff:I
    .restart local p5
    add-int/lit8 p2, v2, 0x1

    .end local v2           #soff:I
    .restart local p2
    aget-byte v4, p1, v2

    iget-object v5, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget-object v6, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v7, p0, Lmeizu_jcifs/util/RC4;->i:I

    aget-byte v6, v6, v7

    iget-object v7, p0, Lmeizu_jcifs/util/RC4;->s:[B

    iget v8, p0, Lmeizu_jcifs/util/RC4;->j:I

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, v0

    move v0, p5

    .end local p5
    .restart local v0       #doff:I
    move v2, p2

    .line 62
    .end local p2
    .restart local v2       #soff:I
    goto :goto_0

    .line 63
    .end local v3           #t:B
    :cond_0
    return-void
.end method

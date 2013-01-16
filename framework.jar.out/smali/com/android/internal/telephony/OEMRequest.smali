.class public Lcom/android/internal/telephony/OEMRequest;
.super Ljava/lang/Object;
.source "OEMRequest.java"


# instance fields
.field private id:I

.field private params:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "n"
    .parameter "str"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/android/internal/telephony/OEMRequest;->id:I

    .line 26
    iput-object p2, p0, Lcom/android/internal/telephony/OEMRequest;->params:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OEMRequest;->bytes2int([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OEMRequest;->id:I

    .line 31
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    array-length v2, p1

    add-int/lit8 v2, v2, -0x4

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lcom/android/internal/telephony/OEMRequest;->params:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static bytes2int([BI)I
    .locals 3
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 14
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    if-gez v1, :cond_0

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    add-int/lit16 v1, v1, 0x100

    :goto_0
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    add-int/lit16 v2, v2, 0x100

    :goto_1
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    add-int/lit16 v1, v1, 0x100

    :goto_2
    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v2, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-gez v1, :cond_3

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    add-int/lit16 v1, v1, 0x100

    :goto_3
    shl-int/lit8 v1, v1, 0x18

    or-int v0, v2, v1

    .line 19
    .local v0, n:I
    return v0

    .line 14
    .end local v0           #n:I
    :cond_0
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    goto :goto_3
.end method

.method public static int2bytes(I)[B
    .locals 3
    .parameter "n"

    .prologue
    .line 5
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 6
    .local v0, b:[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 7
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 8
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 9
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 10
    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/OEMRequest;->id:I

    return v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/OEMRequest;->params:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/internal/telephony/OEMRequest;->id:I

    .line 55
    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/OEMRequest;->params:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toByte()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    iget-object v4, p0, Lcom/android/internal/telephony/OEMRequest;->params:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v0, v4, 0x4

    .line 37
    .local v0, len:I
    iget v4, p0, Lcom/android/internal/telephony/OEMRequest;->id:I

    invoke-static {v4}, Lcom/android/internal/telephony/OEMRequest;->int2bytes(I)[B

    move-result-object v3

    .line 38
    .local v3, temp:[B
    const/4 v1, 0x0

    .line 39
    .local v1, offset:I
    new-array v2, v0, [B

    .line 40
    .local v2, rbyte:[B
    array-length v4, v3

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    array-length v1, v3

    .line 43
    iget-object v4, p0, Lcom/android/internal/telephony/OEMRequest;->params:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 44
    array-length v4, v3

    invoke-static {v3, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OEMRequest;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OEMRequest;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

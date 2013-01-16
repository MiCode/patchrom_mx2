.class public Lmeizu_jcifs/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12
    .parameter "string"

    .prologue
    const/16 v10, 0x3d

    const/4 v7, 0x0

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 74
    .local v6, length:I
    if-nez v6, :cond_1

    new-array v1, v7, [B

    .line 91
    :cond_0
    return-object v1

    .line 75
    :cond_1
    add-int/lit8 v9, v6, -0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_4

    const/4 v7, 0x2

    .line 77
    .local v7, pad:I
    :cond_2
    :goto_0
    mul-int/lit8 v9, v6, 0x3

    div-int/lit8 v9, v9, 0x4

    sub-int v8, v9, v7

    .line 78
    .local v8, size:I
    new-array v1, v8, [B

    .line 80
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 81
    .local v2, i:I
    const/4 v4, 0x0

    .local v4, index:I
    move v5, v4

    .end local v4           #index:I
    .local v5, index:I
    move v3, v2

    .line 82
    .end local v2           #i:I
    .local v3, i:I
    :cond_3
    :goto_1
    if-ge v3, v6, :cond_0

    .line 83
    const-string v9, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x12

    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    or-int v0, v9, v10

    .line 87
    .local v0, block:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    ushr-int/lit8 v9, v0, 0x10

    int-to-byte v9, v9

    aput-byte v9, v1, v5

    .line 88
    if-ge v4, v8, :cond_5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    ushr-int/lit8 v9, v0, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 89
    :goto_2
    if-ge v5, v8, :cond_3

    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    and-int/lit16 v9, v0, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v5

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_1

    .line 75
    .end local v0           #block:I
    .end local v1           #buffer:[B
    .end local v3           #i:I
    .end local v5           #index:I
    .end local v7           #pad:I
    .end local v8           #size:I
    :cond_4
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    .restart local v0       #block:I
    .restart local v1       #buffer:[B
    .restart local v3       #i:I
    .restart local v4       #index:I
    .restart local v7       #pad:I
    .restart local v8       #size:I
    :cond_5
    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_2
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10
    .parameter "bytes"

    .prologue
    .line 34
    array-length v4, p0

    .line 35
    .local v4, length:I
    if-nez v4, :cond_0

    const-string v6, ""

    .line 63
    :goto_0
    return-object v6

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    int-to-double v6, v4

    const-wide/high16 v8, 0x4008

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v6, v6, 0x4

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 38
    .local v1, buffer:Ljava/lang/StringBuffer;
    rem-int/lit8 v5, v4, 0x3

    .line 39
    .local v5, remainder:I
    sub-int/2addr v4, v5

    .line 41
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .line 42
    .end local v2           #i:I
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 43
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 45
    .local v0, block:I
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    ushr-int/lit8 v7, v0, 0x12

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    ushr-int/lit8 v7, v0, 0xc

    and-int/lit8 v7, v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    ushr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    and-int/lit8 v7, v0, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 50
    .end local v0           #block:I
    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 51
    :cond_2
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 52
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v0, v6, 0x4

    .line 53
    .restart local v0       #block:I
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    ushr-int/lit8 v7, v0, 0x6

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    and-int/lit8 v7, v0, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    const-string v6, "=="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 58
    .end local v0           #block:I
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    shl-int/lit8 v0, v6, 0x2

    .line 59
    .restart local v0       #block:I
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    ushr-int/lit8 v7, v0, 0xc

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    ushr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    and-int/lit8 v7, v0, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

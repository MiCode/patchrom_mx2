.class public Lmeizu_jcifs/util/Hexdump;
.super Ljava/lang/Object;
.source "Hexdump.java"


# static fields
.field public static final HEX_DIGITS:[C

.field private static final NL:Ljava/lang/String;

.field private static final NL_LENGTH:I

.field private static final SPACE_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/util/Hexdump;->NL:Ljava/lang/String;

    .line 31
    sget-object v0, Lmeizu_jcifs/util/Hexdump;->NL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lmeizu_jcifs/util/Hexdump;->NL_LENGTH:I

    .line 33
    const/16 v0, 0x30

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmeizu_jcifs/util/Hexdump;->SPACE_CHARS:[C

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lmeizu_jcifs/util/Hexdump;->HEX_DIGITS:[C

    return-void

    .line 33
    nop

    :array_0
    .array-data 0x2
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
    .end array-data

    .line 39
    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hexdump(Ljava/io/PrintStream;[BII)V
    .locals 12
    .parameter "ps"
    .parameter "src"
    .parameter "srcIndex"
    .parameter "length"

    .prologue
    .line 58
    if-nez p3, :cond_0

    .line 103
    :goto_0
    return-void

    .line 62
    :cond_0
    rem-int/lit8 v7, p3, 0x10

    .line 63
    .local v7, s:I
    if-nez v7, :cond_3

    div-int/lit8 v6, p3, 0x10

    .line 64
    .local v6, r:I
    :goto_1
    sget v9, Lmeizu_jcifs/util/Hexdump;->NL_LENGTH:I

    add-int/lit8 v9, v9, 0x4a

    mul-int/2addr v9, v6

    new-array v0, v9, [C

    .line 65
    .local v0, c:[C
    const/16 v9, 0x10

    new-array v3, v9, [C

    .line 67
    .local v3, d:[C
    const/4 v8, 0x0

    .line 68
    .local v8, si:I
    const/4 v1, 0x0

    .line 71
    .local v1, ci:I
    :cond_1
    const/4 v9, 0x5

    invoke-static {v8, v0, v1, v9}, Lmeizu_jcifs/util/Hexdump;->toHexChars(I[CII)V

    .line 72
    add-int/lit8 v1, v1, 0x5

    .line 73
    add-int/lit8 v2, v1, 0x1

    .end local v1           #ci:I
    .local v2, ci:I
    const/16 v9, 0x3a

    aput-char v9, v0, v1

    .line 75
    :goto_2
    if-ne v8, p3, :cond_4

    .line 76
    rsub-int/lit8 v5, v7, 0x10

    .line 77
    .local v5, n:I
    sget-object v9, Lmeizu_jcifs/util/Hexdump;->SPACE_CHARS:[C

    const/4 v10, 0x0

    mul-int/lit8 v11, v5, 0x3

    invoke-static {v9, v10, v0, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    mul-int/lit8 v9, v5, 0x3

    add-int v1, v2, v9

    .line 79
    .end local v2           #ci:I
    .restart local v1       #ci:I
    sget-object v9, Lmeizu_jcifs/util/Hexdump;->SPACE_CHARS:[C

    const/4 v10, 0x0

    invoke-static {v9, v10, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    .end local v5           #n:I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #ci:I
    .restart local v2       #ci:I
    const/16 v9, 0x20

    aput-char v9, v0, v1

    .line 93
    add-int/lit8 v1, v2, 0x1

    .end local v2           #ci:I
    .restart local v1       #ci:I
    const/16 v9, 0x20

    aput-char v9, v0, v2

    .line 94
    add-int/lit8 v2, v1, 0x1

    .end local v1           #ci:I
    .restart local v2       #ci:I
    const/16 v9, 0x7c

    aput-char v9, v0, v1

    .line 95
    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-static {v3, v9, v0, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    add-int/lit8 v1, v2, 0x10

    .line 97
    .end local v2           #ci:I
    .restart local v1       #ci:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #ci:I
    .restart local v2       #ci:I
    const/16 v9, 0x7c

    aput-char v9, v0, v1

    .line 98
    sget-object v9, Lmeizu_jcifs/util/Hexdump;->NL:Ljava/lang/String;

    const/4 v10, 0x0

    sget v11, Lmeizu_jcifs/util/Hexdump;->NL_LENGTH:I

    invoke-virtual {v9, v10, v11, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 99
    sget v9, Lmeizu_jcifs/util/Hexdump;->NL_LENGTH:I

    add-int v1, v2, v9

    .line 100
    .end local v2           #ci:I
    .restart local v1       #ci:I
    if-lt v8, p3, :cond_1

    .line 102
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println([C)V

    goto :goto_0

    .line 63
    .end local v0           #c:[C
    .end local v1           #ci:I
    .end local v3           #d:[C
    .end local v6           #r:I
    .end local v8           #si:I
    :cond_3
    div-int/lit8 v9, p3, 0x10

    add-int/lit8 v6, v9, 0x1

    goto :goto_1

    .line 82
    .restart local v0       #c:[C
    .restart local v2       #ci:I
    .restart local v3       #d:[C
    .restart local v6       #r:I
    .restart local v8       #si:I
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2           #ci:I
    .restart local v1       #ci:I
    const/16 v9, 0x20

    aput-char v9, v0, v2

    .line 83
    add-int v9, p2, v8

    aget-byte v9, p1, v9

    and-int/lit16 v4, v9, 0xff

    .line 84
    .local v4, i:I
    const/4 v9, 0x2

    invoke-static {v4, v0, v1, v9}, Lmeizu_jcifs/util/Hexdump;->toHexChars(I[CII)V

    .line 85
    add-int/lit8 v1, v1, 0x2

    .line 86
    if-ltz v4, :cond_5

    int-to-char v9, v4

    invoke-static {v9}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 87
    :cond_5
    rem-int/lit8 v9, v8, 0x10

    const/16 v10, 0x2e

    aput-char v10, v3, v9

    .line 91
    :goto_3
    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v9, v8, 0x10

    if-eqz v9, :cond_2

    move v2, v1

    .end local v1           #ci:I
    .restart local v2       #ci:I
    goto :goto_2

    .line 89
    .end local v2           #ci:I
    .restart local v1       #ci:I
    :cond_6
    rem-int/lit8 v9, v8, 0x10

    int-to-char v10, v4

    aput-char v10, v3, v9

    goto :goto_3
.end method

.method public static toHexChars(I[CII)V
    .locals 3
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"
    .parameter "size"

    .prologue
    .line 139
    :goto_0
    if-lez p3, :cond_2

    .line 140
    add-int v1, p2, p3

    add-int/lit8 v0, v1, -0x1

    .line 141
    .local v0, i:I
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 142
    sget-object v1, Lmeizu_jcifs/util/Hexdump;->HEX_DIGITS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    .line 144
    :cond_0
    if-eqz p0, :cond_1

    .line 145
    ushr-int/lit8 p0, p0, 0x4

    .line 147
    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 148
    goto :goto_0

    .line 149
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public static toHexChars(J[CII)V
    .locals 4
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"
    .parameter "size"

    .prologue
    .line 151
    :goto_0
    if-lez p4, :cond_1

    .line 152
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lmeizu_jcifs/util/Hexdump;->HEX_DIGITS:[C

    const-wide/16 v2, 0xf

    and-long/2addr v2, p0

    long-to-int v2, v2

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 153
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x4

    ushr-long/2addr p0, v0

    .line 156
    :cond_0
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 158
    :cond_1
    return-void
.end method

.method public static toHexString(II)Ljava/lang/String;
    .locals 2
    .parameter "val"
    .parameter "size"

    .prologue
    .line 111
    new-array v0, p1, [C

    .line 112
    .local v0, c:[C
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lmeizu_jcifs/util/Hexdump;->toHexChars(I[CII)V

    .line 113
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static toHexString(JI)Ljava/lang/String;
    .locals 2
    .parameter "val"
    .parameter "size"

    .prologue
    .line 116
    new-array v0, p2, [C

    .line 117
    .local v0, c:[C
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lmeizu_jcifs/util/Hexdump;->toHexChars(J[CII)V

    .line 118
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 6
    .parameter "src"
    .parameter "srcIndex"
    .parameter "size"

    .prologue
    .line 121
    new-array v0, p2, [C

    .line 122
    .local v0, c:[C
    rem-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_0

    div-int/lit8 p2, p2, 0x2

    .line 123
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    move v3, v2

    .end local v2           #j:I
    .local v3, j:I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 124
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    sget-object v4, Lmeizu_jcifs/util/Hexdump;->HEX_DIGITS:[C

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 125
    array-length v4, v0

    if-ne v2, v4, :cond_1

    .line 130
    :goto_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 122
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_0
    div-int/lit8 v4, p2, 0x2

    add-int/lit8 p2, v4, 0x1

    goto :goto_0

    .line 128
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .restart local v3       #j:I
    sget-object v4, Lmeizu_jcifs/util/Hexdump;->HEX_DIGITS:[C

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_2
.end method

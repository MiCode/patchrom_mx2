.class public Lmeizu_jcifs/util/Encdec;
.super Ljava/lang/Object;
.source "Encdec.java"


# static fields
.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field public static final SEC_BETWEEEN_1904_AND_1970:J = 0x7c25b080L

.field public static final TIME_1601_NANOS_64BE:I = 0x6

.field public static final TIME_1601_NANOS_64LE:I = 0x5

.field public static final TIME_1904_SEC_32BE:I = 0x3

.field public static final TIME_1904_SEC_32LE:I = 0x4

.field public static final TIME_1970_MILLIS_64BE:I = 0x7

.field public static final TIME_1970_MILLIS_64LE:I = 0x8

.field public static final TIME_1970_SEC_32BE:I = 0x1

.field public static final TIME_1970_SEC_32LE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dec_doublebe([BI)D
    .locals 2
    .parameter "src"
    .parameter "si"

    .prologue
    .line 167
    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static dec_doublele([BI)D
    .locals 2
    .parameter "src"
    .parameter "si"

    .prologue
    .line 163
    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static dec_floatbe([BI)F
    .locals 1
    .parameter "src"
    .parameter "si"

    .prologue
    .line 147
    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static dec_floatle([BI)F
    .locals 1
    .parameter "src"
    .parameter "si"

    .prologue
    .line 143
    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static dec_time([BII)Ljava/util/Date;
    .locals 13
    .parameter "src"
    .parameter "si"
    .parameter "enc"

    .prologue
    const-wide v11, 0xa9730b66800L

    const-wide v9, 0xffffffffL

    const-wide/32 v7, 0x7c25b080

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x3e8

    .line 210
    packed-switch p2, :pswitch_data_0

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported time encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :pswitch_0
    new-instance v2, Ljava/util/Date;

    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 230
    :goto_0
    return-object v2

    .line 214
    :pswitch_1
    new-instance v2, Ljava/util/Date;

    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 216
    :pswitch_2
    new-instance v2, Ljava/util/Date;

    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v9

    sub-long/2addr v3, v7

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 219
    :pswitch_3
    new-instance v2, Ljava/util/Date;

    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v9

    sub-long/2addr v3, v7

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 222
    :pswitch_4
    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v0

    .line 223
    .local v0, t:J
    new-instance v2, Ljava/util/Date;

    div-long v3, v0, v3

    sub-long/2addr v3, v11

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 225
    .end local v0           #t:J
    :pswitch_5
    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v0

    .line 226
    .restart local v0       #t:J
    new-instance v2, Ljava/util/Date;

    div-long v3, v0, v3

    sub-long/2addr v3, v11

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 228
    .end local v0           #t:J
    :pswitch_6
    new-instance v2, Ljava/util/Date;

    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 230
    :pswitch_7
    new-instance v2, Ljava/util/Date;

    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static dec_ucs2le([BII[C)Ljava/lang/String;
    .locals 3
    .parameter "src"
    .parameter "si"
    .parameter "slim"
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, bi:I
    :goto_0
    add-int/lit8 v1, p1, 0x1

    if-ge v1, p2, :cond_0

    .line 306
    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    int-to-char v1, v1

    aput-char v1, p3, v0

    .line 307
    aget-char v1, p3, v0

    if-nez v1, :cond_1

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 305
    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method public static dec_uint16be([BI)S
    .locals 2
    .parameter "src"
    .parameter "si"

    .prologue
    .line 77
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static dec_uint16le([BI)S
    .locals 2
    .parameter "src"
    .parameter "si"

    .prologue
    .line 86
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static dec_uint32be([BI)I
    .locals 2
    .parameter "src"
    .parameter "si"

    .prologue
    .line 81
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static dec_uint32le([BI)I
    .locals 2
    .parameter "src"
    .parameter "si"

    .prologue
    .line 90
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static dec_uint64be([BI)J
    .locals 6
    .parameter "src"
    .parameter "si"

    .prologue
    const-wide v4, 0xffffffffL

    .line 112
    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v2

    int-to-long v2, v2

    and-long v0, v2, v4

    .line 113
    .local v0, l:J
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 114
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lmeizu_jcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 115
    return-wide v0
.end method

.method public static dec_uint64le([BI)J
    .locals 6
    .parameter "src"
    .parameter "si"

    .prologue
    const-wide v4, 0xffffffffL

    .line 120
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lmeizu_jcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v2

    int-to-long v2, v2

    and-long v0, v2, v4

    .line 121
    .local v0, l:J
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 122
    invoke-static {p0, p1}, Lmeizu_jcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 123
    return-wide v0
.end method

.method public static dec_utf8([BII)Ljava/lang/String;
    .locals 7
    .parameter "src"
    .parameter "si"
    .parameter "slim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x80

    .line 263
    sub-int v4, p2, p1

    new-array v3, v4, [C

    .line 266
    .local v3, uni:[C
    const/4 v2, 0x0

    .local v2, ui:I
    move v1, p1

    .end local p1
    .local v1, si:I
    :goto_0
    if-ge v1, p2, :cond_a

    add-int/lit8 p1, v1, 0x1

    .end local v1           #si:I
    .restart local p1
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .local v0, ch:I
    if-eqz v0, :cond_2

    .line 267
    if-ge v0, v6, :cond_1

    .line 268
    int-to-char v4, v0

    aput-char v4, v3, v2

    .line 266
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, p1

    .end local p1
    .restart local v1       #si:I
    goto :goto_0

    .line 269
    .end local v1           #si:I
    .restart local p1
    :cond_1
    and-int/lit16 v4, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_5

    .line 270
    sub-int v4, p2, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 300
    .end local v0           #ch:I
    :cond_2
    :goto_2
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 273
    .restart local v0       #ch:I
    :cond_3
    and-int/lit8 v4, v0, 0x1f

    shl-int/lit8 v4, v4, 0x6

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 274
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #si:I
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 275
    aget-char v4, v3, v2

    and-int/lit8 v5, v0, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 276
    and-int/lit16 v4, v0, 0xc0

    if-ne v4, v6, :cond_4

    aget-char v4, v3, v2

    if-ge v4, v6, :cond_9

    .line 277
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid UTF-8 sequence"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    .end local v1           #si:I
    .restart local p1
    :cond_5
    and-int/lit16 v4, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_8

    .line 280
    sub-int v4, p2, p1

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 283
    and-int/lit8 v4, v0, 0xf

    shl-int/lit8 v4, v4, 0xc

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 284
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #si:I
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 285
    and-int/lit16 v4, v0, 0xc0

    if-eq v4, v6, :cond_6

    .line 286
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid UTF-8 sequence"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    :cond_6
    aget-char v4, v3, v2

    and-int/lit8 v5, v0, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 289
    add-int/lit8 p1, v1, 0x1

    .end local v1           #si:I
    .restart local p1
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 290
    aget-char v4, v3, v2

    and-int/lit8 v5, v0, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 291
    and-int/lit16 v4, v0, 0xc0

    if-ne v4, v6, :cond_7

    aget-char v4, v3, v2

    const/16 v5, 0x800

    if-ge v4, v5, :cond_0

    .line 292
    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid UTF-8 sequence"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 296
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unsupported UTF-8 sequence"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local p1
    .restart local v1       #si:I
    :cond_9
    move p1, v1

    .end local v1           #si:I
    .restart local p1
    goto/16 :goto_1

    .end local v0           #ch:I
    .end local p1
    .restart local v1       #si:I
    :cond_a
    move p1, v1

    .end local v1           #si:I
    .restart local p1
    goto/16 :goto_2
.end method

.method public static enc_doublebe(D[BI)I
    .locals 2
    .parameter "d"
    .parameter "dst"
    .parameter "di"

    .prologue
    .line 159
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lmeizu_jcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result v0

    return v0
.end method

.method public static enc_doublele(D[BI)I
    .locals 2
    .parameter "d"
    .parameter "dst"
    .parameter "di"

    .prologue
    .line 155
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lmeizu_jcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result v0

    return v0
.end method

.method public static enc_floatbe(F[BI)I
    .locals 1
    .parameter "f"
    .parameter "dst"
    .parameter "di"

    .prologue
    .line 135
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result v0

    return v0
.end method

.method public static enc_floatle(F[BI)I
    .locals 1
    .parameter "f"
    .parameter "dst"
    .parameter "di"

    .prologue
    .line 131
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result v0

    return v0
.end method

.method public static enc_time(Ljava/util/Date;[BII)I
    .locals 6
    .parameter "date"
    .parameter "dst"
    .parameter "di"
    .parameter "enc"

    .prologue
    .line 177
    packed-switch p3, :pswitch_data_0

    .line 199
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported time encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result v2

    .line 197
    :goto_0
    return v2

    .line 181
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result v2

    goto :goto_0

    .line 183
    :pswitch_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x7c25b080

    add-long/2addr v2, v4

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result v2

    goto :goto_0

    .line 186
    :pswitch_3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x7c25b080

    add-long/2addr v2, v4

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result v2

    goto :goto_0

    .line 189
    :pswitch_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide v4, 0xa9730b66800L

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    mul-long v0, v2, v4

    .line 190
    .local v0, t:J
    invoke-static {v0, v1, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result v2

    goto :goto_0

    .line 192
    .end local v0           #t:J
    :pswitch_5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide v4, 0xa9730b66800L

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    mul-long v0, v2, v4

    .line 193
    .restart local v0       #t:J
    invoke-static {v0, v1, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result v2

    goto :goto_0

    .line 195
    .end local v0           #t:J
    :pswitch_6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result v2

    goto :goto_0

    .line 197
    :pswitch_7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result v2

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static enc_uint16be(S[BI)I
    .locals 2
    .parameter "s"
    .parameter "dst"
    .parameter "di"

    .prologue
    .line 46
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, di:I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 47
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 48
    const/4 v1, 0x2

    return v1
.end method

.method public static enc_uint16le(S[BI)I
    .locals 2
    .parameter "s"
    .parameter "dst"
    .parameter "di"

    .prologue
    .line 59
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, di:I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 60
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 61
    const/4 v1, 0x2

    return v1
.end method

.method public static enc_uint32be(I[BI)I
    .locals 2
    .parameter "i"
    .parameter "dst"
    .parameter "di"

    .prologue
    .line 51
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, di:I
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 52
    add-int/lit8 p2, v0, 0x1

    .end local v0           #di:I
    .restart local p2
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 53
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #di:I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 54
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 55
    const/4 v1, 0x4

    return v1
.end method

.method public static enc_uint32le(I[BI)I
    .locals 2
    .parameter "i"
    .parameter "dst"
    .parameter "di"

    .prologue
    .line 65
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, di:I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 66
    add-int/lit8 p2, v0, 0x1

    .end local v0           #di:I
    .restart local p2
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 67
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #di:I
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 68
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 69
    const/4 v1, 0x4

    return v1
.end method

.method public static enc_uint64be(J[BI)I
    .locals 4
    .parameter "l"
    .parameter "dst"
    .parameter "di"

    .prologue
    const-wide v2, 0xffffffffL

    .line 99
    and-long v0, p0, v2

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lmeizu_jcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 100
    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lmeizu_jcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 101
    const/16 v0, 0x8

    return v0
.end method

.method public static enc_uint64le(J[BI)I
    .locals 4
    .parameter "l"
    .parameter "dst"
    .parameter "di"

    .prologue
    const-wide v2, 0xffffffffL

    .line 105
    and-long v0, p0, v2

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 106
    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 107
    const/16 v0, 0x8

    return v0
.end method

.method public static enc_utf8(Ljava/lang/String;[BII)I
    .locals 7
    .parameter "str"
    .parameter "dst"
    .parameter "di"
    .parameter "dlim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    move v3, p2

    .line 238
    .local v3, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 240
    .local v4, strlen:I
    const/4 v2, 0x0

    .local v2, i:I
    move v1, p2

    .end local p2
    .local v1, di:I
    :goto_0
    if-ge v1, p3, :cond_1

    if-ge v2, v4, :cond_1

    .line 241
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 242
    .local v0, ch:I
    const/4 v5, 0x1

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    .line 243
    add-int/lit8 p2, v1, 0x1

    .end local v1           #di:I
    .restart local p2
    int-to-byte v5, v0

    aput-byte v5, p1, v1

    .line 240
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #di:I
    goto :goto_0

    .line 244
    :cond_0
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_3

    .line 245
    sub-int v5, p3, v1

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 260
    .end local v0           #ch:I
    :cond_1
    sub-int v5, v1, v3

    return v5

    .line 248
    .restart local v0       #ch:I
    :cond_2
    add-int/lit8 p2, v1, 0x1

    .end local v1           #di:I
    .restart local p2
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 249
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #di:I
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 250
    add-int/lit8 p2, v1, 0x1

    .end local v1           #di:I
    .restart local p2
    shr-int/lit8 v5, v0, 0x0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    goto :goto_1

    .line 252
    .end local p2
    .restart local v1       #di:I
    :cond_3
    sub-int v5, p3, v1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 255
    add-int/lit8 p2, v1, 0x1

    .end local v1           #di:I
    .restart local p2
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 256
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #di:I
    shr-int/lit8 v5, v0, 0x0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    move p2, v1

    .end local v1           #di:I
    .restart local p2
    goto :goto_1
.end method

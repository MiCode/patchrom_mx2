.class public Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
.super Ljava/lang/Object;
.source "NdrBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;
    }
.end annotation


# instance fields
.field public buf:[B

.field public deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

.field public index:I

.field public length:I

.field referent:I

.field referents:Ljava/util/HashMap;

.field public start:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .parameter "buf"
    .parameter "start"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 43
    iput p2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    iput p2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 45
    iput-object p0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 46
    return-void
.end method

.method private getDceReferent(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"

    .prologue
    .line 197
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    .line 199
    const/4 v1, 0x1

    iput v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->referent:I

    .line 202
    :cond_0
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;

    .local v0, e:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;
    if-nez v0, :cond_1

    .line 203
    new-instance v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;

    .end local v0           #e:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;
    invoke-direct {v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;-><init>()V

    .line 204
    .restart local v0       #e:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;
    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->referent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->referent:I

    iput v1, v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    .line 205
    iput-object p1, v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;->obj:Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_1
    iget v1, v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    return v1
.end method


# virtual methods
.method public advance(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 103
    iget v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 104
    iget v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    iget v1, v1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->length:I

    if-le v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v1, v2

    iput v1, v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 107
    :cond_0
    return-void
.end method

.method public align(I)I
    .locals 5
    .parameter "boundary"

    .prologue
    .line 109
    add-int/lit8 v1, p1, -0x1

    .line 110
    .local v1, m:I
    iget v3, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v4, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int v0, v3, v4

    .line 111
    .local v0, i:I
    add-int v3, v0, v1

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 112
    .local v2, n:I
    invoke-virtual {p0, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 113
    return v2
.end method

.method public align(IB)I
    .locals 4
    .parameter "boundary"
    .parameter "value"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    move-result v1

    .line 79
    .local v1, n:I
    move v0, v1

    .line 80
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 81
    iget-object v2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v3, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v3, v0

    aput-byte p2, v2, v3

    .line 82
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 84
    :cond_0
    return v1
.end method

.method public dec_ndr_hyper()J
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 152
    invoke-virtual {p0, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 153
    iget-object v2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v3, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v0

    .line 154
    .local v0, val:J
    invoke-virtual {p0, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 155
    return-wide v0
.end method

.method public dec_ndr_long()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 141
    invoke-virtual {p0, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 142
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v1, v2}, Lmeizu_jcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v0

    .line 143
    .local v0, val:I
    invoke-virtual {p0, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 144
    return v0
.end method

.method public dec_ndr_short()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 130
    invoke-virtual {p0, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 131
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v1, v2}, Lmeizu_jcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v0

    .line 132
    .local v0, val:I
    invoke-virtual {p0, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 133
    return v0
.end method

.method public dec_ndr_small()I
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 121
    .local v0, val:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 122
    return v0
.end method

.method public dec_ndr_string()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 177
    iget v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 178
    .local v0, i:I
    const/4 v3, 0x0

    .line 179
    .local v3, val:Ljava/lang/String;
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v5, v0}, Lmeizu_jcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v1

    .line 180
    .local v1, len:I
    add-int/lit8 v0, v0, 0xc

    .line 181
    if-eqz v1, :cond_1

    .line 182
    add-int/lit8 v1, v1, -0x1

    .line 183
    mul-int/lit8 v2, v1, 0x2

    .line 185
    .local v2, size:I
    if-ltz v2, :cond_0

    const v5, 0xffff

    if-le v2, v5, :cond_2

    :cond_0
    :try_start_0
    new-instance v5, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v6, "invalid array conformance"

    invoke-direct {v5, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    move-exception v5

    .line 191
    .end local v2           #size:I
    :cond_1
    :goto_0
    iget v5, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int v5, v0, v5

    invoke-virtual {p0, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 192
    return-object v3

    .line 186
    .restart local v2       #size:I
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    const-string v6, "UTF-16LE"

    invoke-direct {v4, v5, v0, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    .end local v3           #val:Ljava/lang/String;
    .local v4, val:Ljava/lang/String;
    add-int/lit8 v5, v2, 0x2

    add-int/2addr v0, v5

    move-object v3, v4

    .line 189
    .end local v4           #val:Ljava/lang/String;
    .restart local v3       #val:Ljava/lang/String;
    goto :goto_0
.end method

.method public derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    .locals 3
    .parameter "idx"

    .prologue
    .line 49
    new-instance v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-direct {v0, v1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 50
    .local v0, nb:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    iput p1, v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 51
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    iput-object v1, v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 52
    return-object v0
.end method

.method public enc_ndr_hyper(J)V
    .locals 3
    .parameter "h"

    .prologue
    const/16 v2, 0x8

    .line 147
    invoke-virtual {p0, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 148
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, p2, v0, v1}, Lmeizu_jcifs/util/Encdec;->enc_uint64le(J[BI)I

    .line 149
    invoke-virtual {p0, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 150
    return-void
.end method

.method public enc_ndr_long(I)V
    .locals 3
    .parameter "l"

    .prologue
    const/4 v2, 0x4

    .line 136
    invoke-virtual {p0, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 137
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, v0, v1}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 138
    invoke-virtual {p0, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 139
    return-void
.end method

.method public enc_ndr_referent(Ljava/lang/Object;I)V
    .locals 1
    .parameter "obj"
    .parameter "type"

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 225
    :goto_0
    return-void

    .line 216
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-direct {p0, p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->getDceReferent(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enc_ndr_short(I)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x2

    .line 125
    invoke-virtual {p0, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 126
    int-to-short v0, p1

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v0, v1, v2}, Lmeizu_jcifs/util/Encdec;->enc_uint16le(S[BI)I

    .line 127
    invoke-virtual {p0, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 128
    return-void
.end method

.method public enc_ndr_small(I)V
    .locals 3
    .parameter "s"

    .prologue
    .line 116
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 118
    return-void
.end method

.method public enc_ndr_string(Ljava/lang/String;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v7, 0x0

    .line 160
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 161
    iget v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 162
    .local v0, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 163
    .local v2, len:I
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v3, v4, v0}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v0, v0, 0x4

    .line 164
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v7, v3, v0}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v0, v0, 0x4

    .line 165
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v3, v4, v0}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v0, v0, 0x4

    .line 167
    :try_start_0
    const-string v3, "UTF-16LE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    mul-int/lit8 v6, v2, 0x2

    invoke-static {v3, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v0, v3

    .line 171
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-byte v7, v3, v0

    .line 172
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aput-byte v7, v3, v1

    .line 173
    iget v3, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 174
    return-void

    .line 168
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    return-object v0
.end method

.method public getCapacity()I
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    array-length v0, v0

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    iget v0, v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->length:I

    return v0
.end method

.method public getTailSpace()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    array-length v0, v0

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readOctetArray([BII)V
    .locals 2
    .parameter "b"
    .parameter "i"
    .parameter "l"

    .prologue
    .line 91
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-virtual {p0, p3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 93
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->start:I

    iput v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 60
    iput-object p0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 61
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 66
    iput p1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 67
    return-void
.end method

.method public setLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 100
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    iput p1, v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeOctetArray([BII)V
    .locals 2
    .parameter "b"
    .parameter "i"
    .parameter "l"

    .prologue
    .line 87
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-virtual {p0, p3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 89
    return-void
.end method

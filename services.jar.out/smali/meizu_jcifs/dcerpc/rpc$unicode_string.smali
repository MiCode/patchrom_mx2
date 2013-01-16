.class public Lmeizu_jcifs/dcerpc/rpc$unicode_string;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unicode_string"
.end annotation


# instance fields
.field public buffer:[S

.field public length:S

.field public maximum_length:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 7
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 132
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    .line 133
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 134
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 136
    .local v2, _bufferp:I
    if-eqz v2, :cond_3

    .line 137
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 138
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 139
    .local v3, _buffers:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 140
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 141
    .local v1, _bufferl:I
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 142
    .local v0, _bufferi:I
    mul-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 144
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v5, :cond_2

    .line 145
    if-ltz v3, :cond_0

    const v5, 0xffff

    if-le v3, v5, :cond_1

    :cond_0
    new-instance v5, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v6, "invalid array conformance"

    invoke-direct {v5, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_1
    new-array v5, v3, [S

    iput-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 148
    :cond_2
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 149
    const/4 v4, 0x0

    .local v4, _i:I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 150
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v5, v4

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    .end local v0           #_bufferi:I
    .end local v1           #_bufferl:I
    .end local v3           #_buffers:I
    .end local v4           #_i:I
    :cond_3
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 6
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 110
    iget-short v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 111
    iget-short v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 112
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 114
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v4, :cond_0

    .line 115
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 116
    iget-short v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v1, v4, 0x2

    .line 117
    .local v1, _bufferl:I
    iget-short v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v2, v4, 0x2

    .line 118
    .local v2, _buffers:I
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 119
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 120
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 121
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 122
    .local v0, _bufferi:I
    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 124
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 125
    const/4 v3, 0x0

    .local v3, _i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 126
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v4, v4, v3

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v0           #_bufferi:I
    .end local v1           #_bufferl:I
    .end local v2           #_buffers:I
    .end local v3           #_i:I
    :cond_0
    return-void
.end method

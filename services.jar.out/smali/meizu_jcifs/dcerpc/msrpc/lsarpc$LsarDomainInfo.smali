.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarDomainInfo"
.end annotation


# instance fields
.field public name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

.field public sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;


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
    .locals 8
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 136
    invoke-virtual {p1, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 137
    invoke-virtual {p1, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 138
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    if-nez v6, :cond_0

    .line 139
    new-instance v6, Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v6}, Lmeizu_jcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    .line 141
    :cond_0
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    .line 142
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 143
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 144
    .local v3, _name_bufferp:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v5

    .line 146
    .local v5, _sidp:I
    if-eqz v3, :cond_4

    .line 147
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 148
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 149
    .local v4, _name_buffers:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 150
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 151
    .local v2, _name_bufferl:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 152
    .local v1, _name_bufferi:I
    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {p1, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 154
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v6, v6, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v6, :cond_3

    .line 155
    if-ltz v4, :cond_1

    const v6, 0xffff

    if-le v4, v6, :cond_2

    :cond_1
    new-instance v6, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v7, "invalid array conformance"

    invoke-direct {v6, v7}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 156
    :cond_2
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    new-array v7, v4, [S

    iput-object v7, v6, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 158
    :cond_3
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 159
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 160
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v6, v6, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v6, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v4           #_name_buffers:I
    :cond_4
    if-eqz v5, :cond_6

    .line 164
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    if-nez v6, :cond_5

    .line 165
    new-instance v6, Lmeizu_jcifs/dcerpc/rpc$sid_t;

    invoke-direct {v6}, Lmeizu_jcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    .line 167
    :cond_5
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 168
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v6, p1}, Lmeizu_jcifs/dcerpc/rpc$sid_t;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 171
    :cond_6
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
    const/4 v5, 0x1

    .line 108
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 109
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 110
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 111
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1, v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 112
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    invoke-virtual {p1, v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 114
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v4, :cond_0

    .line 115
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 116
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v2, v4, 0x2

    .line 117
    .local v2, _name_bufferl:I
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v3, v4, 0x2

    .line 118
    .local v3, _name_buffers:I
    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 119
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 120
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 121
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 122
    .local v1, _name_bufferi:I
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 124
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 125
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 126
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v4, v4, v0

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v3           #_name_buffers:I
    :cond_0
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    if-eqz v4, :cond_1

    .line 130
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 131
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/rpc$sid_t;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 134
    :cond_1
    return-void
.end method

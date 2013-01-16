.class public Lmeizu_jcifs/dcerpc/rpc$sid_t;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sid_t"
.end annotation


# instance fields
.field public identifier_authority:[B

.field public revision:B

.field public sub_authority:[I

.field public sub_authority_count:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
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
    const v7, 0xffff

    .line 184
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 185
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 186
    .local v4, _sub_authoritys:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    .line 187
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 188
    const/4 v2, 0x6

    .line 189
    .local v2, _identifier_authoritys:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 190
    .local v1, _identifier_authorityi:I
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 191
    iget v3, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 192
    .local v3, _sub_authorityi:I
    mul-int/lit8 v5, v4, 0x4

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 194
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    if-nez v5, :cond_2

    .line 195
    if-ltz v2, :cond_0

    if-le v2, v7, :cond_1

    :cond_0
    new-instance v5, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v6, "invalid array conformance"

    invoke-direct {v5, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    :cond_1
    new-array v5, v2, [B

    iput-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 198
    :cond_2
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 199
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 200
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_3
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    if-nez v5, :cond_6

    .line 203
    if-ltz v4, :cond_4

    if-le v4, v7, :cond_5

    :cond_4
    new-instance v5, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v6, "invalid array conformance"

    invoke-direct {v5, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_5
    new-array v5, v4, [I

    iput-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 206
    :cond_6
    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 207
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_7

    .line 208
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v6

    aput v6, v5, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_7
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
    .line 163
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 164
    iget-byte v4, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 165
    .local v4, _sub_authoritys:I
    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 166
    iget-byte v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 167
    iget-byte v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 168
    const/4 v2, 0x6

    .line 169
    .local v2, _identifier_authoritys:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 170
    .local v1, _identifier_authorityi:I
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 171
    iget v3, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 172
    .local v3, _sub_authorityi:I
    mul-int/lit8 v5, v4, 0x4

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 174
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 175
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 176
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v5, v5, v0

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 179
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 180
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v5, v5, v0

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_1
    return-void
.end method

.class public Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareInfo502"
.end annotation


# instance fields
.field public current_uses:I

.field public max_uses:I

.field public netname:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public permissions:I

.field public remark:Ljava/lang/String;

.field public sd_size:I

.field public security_descriptor:[B

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 10
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 237
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 238
    .local v1, _netnamep:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v8

    iput v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->type:I

    .line 239
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 240
    .local v4, _remarkp:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v8

    iput v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->permissions:I

    .line 241
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v8

    iput v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->max_uses:I

    .line 242
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v8

    iput v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->current_uses:I

    .line 243
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 244
    .local v3, _pathp:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 245
    .local v2, _passwordp:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v8

    iput v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    .line 246
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v6

    .line 248
    .local v6, _security_descriptorp:I
    if-eqz v1, :cond_0

    .line 249
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 250
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    .line 253
    :cond_0
    if-eqz v4, :cond_1

    .line 254
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 255
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    .line 258
    :cond_1
    if-eqz v3, :cond_2

    .line 259
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 260
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    .line 263
    :cond_2
    if-eqz v2, :cond_3

    .line 264
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 265
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    .line 268
    :cond_3
    if-eqz v6, :cond_7

    .line 269
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 270
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v7

    .line 271
    .local v7, _security_descriptors:I
    iget v5, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 272
    .local v5, _security_descriptori:I
    mul-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v8}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 274
    iget-object v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-nez v8, :cond_6

    .line 275
    if-ltz v7, :cond_4

    const v8, 0xffff

    if-le v7, v8, :cond_5

    :cond_4
    new-instance v8, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v9, "invalid array conformance"

    invoke-direct {v8, v9}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 276
    :cond_5
    new-array v8, v7, [B

    iput-object v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    .line 278
    :cond_6
    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 279
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v7, :cond_7

    .line 280
    iget-object v8, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v8, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v0           #_i:I
    .end local v5           #_security_descriptori:I
    .end local v7           #_security_descriptors:I
    :cond_7
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 5
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 190
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 191
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 192
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->type:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 193
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 194
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->permissions:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 195
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->max_uses:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 196
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->current_uses:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 197
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 198
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 199
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 200
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 202
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 203
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 204
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 208
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 209
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 212
    :cond_1
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 213
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 214
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 217
    :cond_2
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 218
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 219
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 222
    :cond_3
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-eqz v3, :cond_4

    .line 223
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 224
    iget v2, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    .line 225
    .local v2, _security_descriptors:I
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 226
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 227
    .local v1, _security_descriptori:I
    mul-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 229
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 230
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 231
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    aget-byte v3, v3, v0

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0           #_i:I
    .end local v1           #_security_descriptori:I
    .end local v2           #_security_descriptors:I
    :cond_4
    return-void
.end method

.class public Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumArray3"
.end annotation


# instance fields
.field public count:I

.field public s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 6
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 233
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->count:I

    .line 234
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 236
    .local v2, _sp:I
    if-eqz v2, :cond_4

    .line 237
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 238
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 239
    .local v3, _ss:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 240
    .local v1, _si:I
    mul-int/lit8 v4, v3, 0x14

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 242
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    if-nez v4, :cond_2

    .line 243
    if-ltz v3, :cond_0

    const v4, 0xffff

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :cond_1
    new-array v4, v3, [Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    .line 246
    :cond_2
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 247
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 248
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    .line 249
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;-><init>()V

    aput-object v5, v4, v0

    .line 251
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0           #_i:I
    .end local v1           #_si:I
    .end local v3           #_ss:I
    :cond_4
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
    .line 214
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 215
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 216
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 218
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    if-eqz v3, :cond_0

    .line 219
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 220
    iget v2, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->count:I

    .line 221
    .local v2, _ss:I
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 222
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 223
    .local v1, _si:I
    mul-int/lit8 v3, v2, 0x14

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 225
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 226
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 227
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0           #_i:I
    .end local v1           #_si:I
    .end local v2           #_ss:I
    :cond_0
    return-void
.end method

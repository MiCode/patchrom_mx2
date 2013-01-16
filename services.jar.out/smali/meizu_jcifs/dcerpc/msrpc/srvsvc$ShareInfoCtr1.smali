.class public Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareInfoCtr1"
.end annotation


# instance fields
.field public array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

.field public count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
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
    .line 152
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 153
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    .line 154
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 156
    .local v1, _arrayp:I
    if-eqz v1, :cond_4

    .line 157
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 158
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 159
    .local v2, _arrays:I
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 160
    .local v0, _arrayi:I
    mul-int/lit8 v4, v2, 0xc

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 162
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    if-nez v4, :cond_2

    .line 163
    if-ltz v2, :cond_0

    const v4, 0xffff

    if-le v2, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_1
    new-array v4, v2, [Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    .line 166
    :cond_2
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 167
    const/4 v3, 0x0

    .local v3, _i:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 168
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 169
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;-><init>()V

    aput-object v5, v4, v3

    .line 171
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    .end local v0           #_arrayi:I
    .end local v2           #_arrays:I
    .end local v3           #_i:I
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
    .line 134
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 135
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 136
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 138
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    if-eqz v3, :cond_0

    .line 139
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 140
    iget v1, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    .line 141
    .local v1, _arrays:I
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 142
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 143
    .local v0, _arrayi:I
    mul-int/lit8 v3, v1, 0xc

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 145
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 146
    const/4 v2, 0x0

    .local v2, _i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 147
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0           #_arrayi:I
    .end local v1           #_arrays:I
    .end local v2           #_i:I
    :cond_0
    return-void
.end method

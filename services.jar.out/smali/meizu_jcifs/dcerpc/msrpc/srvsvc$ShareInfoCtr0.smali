.class public Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareInfoCtr0"
.end annotation


# instance fields
.field public array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

.field public count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
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
    .line 63
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 64
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->count:I

    .line 65
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 67
    .local v1, _arrayp:I
    if-eqz v1, :cond_4

    .line 68
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 69
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 70
    .local v2, _arrays:I
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 71
    .local v0, _arrayi:I
    mul-int/lit8 v4, v2, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 73
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    if-nez v4, :cond_2

    .line 74
    if-ltz v2, :cond_0

    const v4, 0xffff

    if-le v2, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_1
    new-array v4, v2, [Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    .line 77
    :cond_2
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 78
    const/4 v3, 0x0

    .local v3, _i:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 79
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 80
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;-><init>()V

    aput-object v5, v4, v3

    .line 82
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
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
    .line 45
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 46
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 47
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 49
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    if-eqz v3, :cond_0

    .line 50
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 51
    iget v1, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->count:I

    .line 52
    .local v1, _arrays:I
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 53
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 54
    .local v0, _arrayi:I
    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 56
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 57
    const/4 v2, 0x0

    .local v2, _i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 58
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v0           #_arrayi:I
    .end local v1           #_arrays:I
    .end local v2           #_i:I
    :cond_0
    return-void
.end method

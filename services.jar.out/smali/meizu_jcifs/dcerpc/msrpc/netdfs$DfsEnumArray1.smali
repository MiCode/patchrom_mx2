.class public Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumArray1"
.end annotation


# instance fields
.field public count:I

.field public s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
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
    .line 66
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 67
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->count:I

    .line 68
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 70
    .local v2, _sp:I
    if-eqz v2, :cond_4

    .line 71
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 72
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 73
    .local v3, _ss:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 74
    .local v1, _si:I
    mul-int/lit8 v4, v3, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 76
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    if-nez v4, :cond_2

    .line 77
    if-ltz v3, :cond_0

    const v4, 0xffff

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_1
    new-array v4, v3, [Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    .line 80
    :cond_2
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 81
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 82
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    .line 83
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;-><init>()V

    aput-object v5, v4, v0

    .line 85
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
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
    .line 48
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 49
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 50
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 52
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    if-eqz v3, :cond_0

    .line 53
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 54
    iget v2, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->count:I

    .line 55
    .local v2, _ss:I
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 56
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 57
    .local v1, _si:I
    mul-int/lit8 v3, v2, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 59
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 60
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 61
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0           #_i:I
    .end local v1           #_si:I
    .end local v2           #_ss:I
    :cond_0
    return-void
.end method

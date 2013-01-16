.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarSidArray"
.end annotation


# instance fields
.field public num_sids:I

.field public sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 398
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
    .line 422
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 423
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    .line 424
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 426
    .local v2, _sidsp:I
    if-eqz v2, :cond_4

    .line 427
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 428
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 429
    .local v3, _sidss:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 430
    .local v1, _sidsi:I
    mul-int/lit8 v4, v3, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 432
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    if-nez v4, :cond_2

    .line 433
    if-ltz v3, :cond_0

    const v4, 0xffff

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 434
    :cond_1
    new-array v4, v3, [Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    .line 436
    :cond_2
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 437
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 438
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    .line 439
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;-><init>()V

    aput-object v5, v4, v0

    .line 441
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v0           #_i:I
    .end local v1           #_sidsi:I
    .end local v3           #_sidss:I
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
    .line 404
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 405
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 406
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 408
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    if-eqz v3, :cond_0

    .line 409
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 410
    iget v2, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    .line 411
    .local v2, _sidss:I
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 412
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 413
    .local v1, _sidsi:I
    mul-int/lit8 v3, v2, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 415
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 416
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 417
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v0           #_i:I
    .end local v1           #_sidsi:I
    .end local v2           #_sidss:I
    :cond_0
    return-void
.end method

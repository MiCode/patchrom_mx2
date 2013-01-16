.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTransSidArray"
.end annotation


# instance fields
.field public count:I

.field public sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 477
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
    .line 501
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 502
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->count:I

    .line 503
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 505
    .local v2, _sidsp:I
    if-eqz v2, :cond_4

    .line 506
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 507
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 508
    .local v3, _sidss:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 509
    .local v1, _sidsi:I
    mul-int/lit8 v4, v3, 0xc

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 511
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    if-nez v4, :cond_2

    .line 512
    if-ltz v3, :cond_0

    const v4, 0xffff

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 513
    :cond_1
    new-array v4, v3, [Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    .line 515
    :cond_2
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 516
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 517
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    .line 518
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;-><init>()V

    aput-object v5, v4, v0

    .line 520
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
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
    .line 483
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 484
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 485
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 487
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    if-eqz v3, :cond_0

    .line 488
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 489
    iget v2, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->count:I

    .line 490
    .local v2, _sidss:I
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 491
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 492
    .local v1, _sidsi:I
    mul-int/lit8 v3, v2, 0xc

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 494
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 495
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 496
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    .end local v0           #_i:I
    .end local v1           #_sidsi:I
    .end local v2           #_sidss:I
    :cond_0
    return-void
.end method

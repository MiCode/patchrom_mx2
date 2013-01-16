.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarRefDomainList"
.end annotation


# instance fields
.field public count:I

.field public domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

.field public max_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 596
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
    .line 622
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 623
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->count:I

    .line 624
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 625
    .local v1, _domainsp:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->max_count:I

    .line 627
    if-eqz v1, :cond_4

    .line 628
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 629
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 630
    .local v2, _domainss:I
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 631
    .local v0, _domainsi:I
    mul-int/lit8 v4, v2, 0xc

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 633
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    if-nez v4, :cond_2

    .line 634
    if-ltz v2, :cond_0

    const v4, 0xffff

    if-le v2, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 635
    :cond_1
    new-array v4, v2, [Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 637
    :cond_2
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 638
    const/4 v3, 0x0

    .local v3, _i:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 639
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 640
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;-><init>()V

    aput-object v5, v4, v3

    .line 642
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    .end local v0           #_domainsi:I
    .end local v2           #_domainss:I
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
    .line 603
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 604
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 605
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 606
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->max_count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 608
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    if-eqz v3, :cond_0

    .line 609
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 610
    iget v1, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->count:I

    .line 611
    .local v1, _domainss:I
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 612
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 613
    .local v0, _domainsi:I
    mul-int/lit8 v3, v1, 0xc

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 615
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 616
    const/4 v2, 0x0

    .local v2, _i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 617
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 616
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    .end local v0           #_domainsi:I
    .end local v1           #_domainss:I
    .end local v2           #_i:I
    :cond_0
    return-void
.end method

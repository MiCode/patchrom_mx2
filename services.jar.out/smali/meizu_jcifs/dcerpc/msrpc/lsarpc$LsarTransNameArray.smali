.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTransNameArray"
.end annotation


# instance fields
.field public count:I

.field public names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 708
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
    .line 732
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 733
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->count:I

    .line 734
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 736
    .local v2, _namesp:I
    if-eqz v2, :cond_4

    .line 737
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 738
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 739
    .local v3, _namess:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 740
    .local v1, _namesi:I
    mul-int/lit8 v4, v3, 0x10

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 742
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    if-nez v4, :cond_2

    .line 743
    if-ltz v3, :cond_0

    const v4, 0xffff

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 744
    :cond_1
    new-array v4, v3, [Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    .line 746
    :cond_2
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 747
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 748
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    .line 749
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;-><init>()V

    aput-object v5, v4, v0

    .line 751
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 754
    .end local v0           #_i:I
    .end local v1           #_namesi:I
    .end local v3           #_namess:I
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
    .line 714
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 715
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 716
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 718
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    if-eqz v3, :cond_0

    .line 719
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 720
    iget v2, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->count:I

    .line 721
    .local v2, _namess:I
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 722
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 723
    .local v1, _namesi:I
    mul-int/lit8 v3, v2, 0x10

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 725
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 726
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 727
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v0           #_i:I
    .end local v1           #_namesi:I
    .end local v2           #_namess:I
    :cond_0
    return-void
.end method

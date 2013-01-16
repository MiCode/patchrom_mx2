.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTranslatedName"
.end annotation


# instance fields
.field public name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

.field public sid_index:I

.field public sid_type:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 7
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 678
    invoke-virtual {p1, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 679
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    .line 680
    invoke-virtual {p1, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 681
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    if-nez v5, :cond_0

    .line 682
    new-instance v5, Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v5, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    .line 684
    :cond_0
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    .line 685
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 686
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 687
    .local v3, _name_bufferp:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v5

    iput v5, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    .line 689
    if-eqz v3, :cond_4

    .line 690
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 691
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 692
    .local v4, _name_buffers:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 693
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 694
    .local v2, _name_bufferl:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 695
    .local v1, _name_bufferi:I
    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 697
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v5, v5, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v5, :cond_3

    .line 698
    if-ltz v4, :cond_1

    const v5, 0xffff

    if-le v4, v5, :cond_2

    :cond_1
    new-instance v5, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v6, "invalid array conformance"

    invoke-direct {v5, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 699
    :cond_2
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    new-array v6, v4, [S

    iput-object v6, v5, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 701
    :cond_3
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 702
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 703
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v5, v5, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v5, v0

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v4           #_name_buffers:I
    :cond_4
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
    .line 654
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 655
    iget-short v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 656
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 657
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 658
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 659
    iget v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 661
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v4, :cond_0

    .line 662
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 663
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v2, v4, 0x2

    .line 664
    .local v2, _name_bufferl:I
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v3, v4, 0x2

    .line 665
    .local v3, _name_buffers:I
    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 666
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 667
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 668
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 669
    .local v1, _name_bufferi:I
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 671
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 672
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 673
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v4, v4, v0

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v3           #_name_buffers:I
    :cond_0
    return-void
.end method

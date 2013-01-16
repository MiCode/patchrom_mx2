.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarQosInfo"
.end annotation


# instance fields
.field public context_mode:B

.field public effective_only:B

.field public impersonation_level:S

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 29
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    .line 30
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    .line 31
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    .line 32
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    .line 34
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 21
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 22
    iget-short v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 23
    iget-byte v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 24
    iget-byte v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 26
    return-void
.end method

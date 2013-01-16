.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.super Lmeizu_jcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarQueryInformationPolicy"
.end annotation


# instance fields
.field public handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

.field public info:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

.field public level:S

.field public retval:I


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;SLmeizu_jcifs/dcerpc/ndr/NdrObject;)V
    .locals 0
    .parameter "handle"
    .parameter "level"
    .parameter "info"

    .prologue
    .line 784
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 785
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    .line 786
    iput-short p2, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->level:S

    .line 787
    iput-object p3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->info:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    .line 788
    return-void
.end method


# virtual methods
.method public decode_out(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 796
    .local v0, _infop:I
    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 798
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->info:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 801
    :cond_0
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    .line 802
    return-void
.end method

.method public encode_in(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 792
    iget-short v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->level:S

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 793
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x7

    return v0
.end method

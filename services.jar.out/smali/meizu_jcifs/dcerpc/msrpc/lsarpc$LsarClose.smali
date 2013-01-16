.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarClose;
.super Lmeizu_jcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarClose"
.end annotation


# instance fields
.field public handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

.field public retval:I


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 763
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 764
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarClose;->handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    .line 765
    return-void
.end method


# virtual methods
.method public decode_out(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarClose;->handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 772
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarClose;->retval:I

    .line 773
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
    .line 768
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarClose;->handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 769
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x0

    return v0
.end method

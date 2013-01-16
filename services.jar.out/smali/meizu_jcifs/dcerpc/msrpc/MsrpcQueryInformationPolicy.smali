.class public Lmeizu_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
.super Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.source "MsrpcQueryInformationPolicy.java"


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;SLmeizu_jcifs/dcerpc/ndr/NdrObject;)V
    .locals 1
    .parameter "policyHandle"
    .parameter "level"
    .parameter "info"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;-><init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;SLmeizu_jcifs/dcerpc/ndr/NdrObject;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 33
    return-void
.end method

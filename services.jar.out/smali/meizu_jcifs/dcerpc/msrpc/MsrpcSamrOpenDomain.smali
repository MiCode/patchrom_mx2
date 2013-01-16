.class public Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;
.super Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;
.source "MsrpcSamrOpenDomain.java"


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;ILmeizu_jcifs/dcerpc/rpc$sid_t;Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;)V
    .locals 1
    .parameter "handle"
    .parameter "access"
    .parameter "sid"
    .parameter "domainHandle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;-><init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;ILmeizu_jcifs/dcerpc/rpc$sid_t;Lmeizu_jcifs/dcerpc/rpc$policy_handle;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 32
    return-void
.end method

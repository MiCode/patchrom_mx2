.class public Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;
.super Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;
.source "MsrpcSamrOpenAlias.java"


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;IILmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;)V
    .locals 1
    .parameter "handle"
    .parameter "access"
    .parameter "rid"
    .parameter "aliasHandle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;-><init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;IILmeizu_jcifs/dcerpc/rpc$policy_handle;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 32
    return-void
.end method

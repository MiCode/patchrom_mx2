.class public Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrConnect2;
.super Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;
.source "MsrpcSamrConnect2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .locals 1
    .parameter "server"
    .parameter "access"
    .parameter "policyHandle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;-><init>(Ljava/lang/String;ILmeizu_jcifs/dcerpc/rpc$policy_handle;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 27
    return-void
.end method

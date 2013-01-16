.class public Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrConnect4;
.super Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect4;
.source "MsrpcSamrConnect4.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .locals 1
    .parameter "server"
    .parameter "access"
    .parameter "policyHandle"

    .prologue
    .line 24
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2, p3}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect4;-><init>(Ljava/lang/String;IILmeizu_jcifs/dcerpc/rpc$policy_handle;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 27
    return-void
.end method

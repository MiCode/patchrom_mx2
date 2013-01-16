.class public Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
.super Lmeizu_jcifs/dcerpc/rpc$policy_handle;
.source "SamrPolicyHandle.java"


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .locals 5
    .parameter "handle"
    .parameter "server"
    .parameter "access"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 28
    if-nez p2, :cond_0

    .line 29
    const-string p2, "\\\\"

    .line 30
    :cond_0
    new-instance v1, Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrConnect4;

    invoke-direct {v1, p2, p3, p0}, Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrConnect4;-><init>(Ljava/lang/String;ILmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    .line 32
    .local v1, rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrConnect4;
    :try_start_0
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V
    :try_end_0
    .catch Lmeizu_jcifs/dcerpc/DcerpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, de:Lmeizu_jcifs/dcerpc/DcerpcException;
    invoke-virtual {v0}, Lmeizu_jcifs/dcerpc/DcerpcException;->getErrorCode()I

    move-result v3

    const v4, 0x1c010002

    if-eq v3, v4, :cond_1

    .line 35
    throw v0

    .line 37
    :cond_1
    new-instance v2, Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrConnect2;

    invoke-direct {v2, p2, p3, p0}, Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrConnect2;-><init>(Ljava/lang/String;ILmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    .line 38
    .local v2, rpc2:Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrConnect2;
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method

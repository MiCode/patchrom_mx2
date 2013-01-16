.class public Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
.super Lmeizu_jcifs/dcerpc/rpc$policy_handle;
.source "LsaPolicyHandle.java"


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .locals 4
    .parameter "handle"
    .parameter "server"
    .parameter "access"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 31
    if-nez p2, :cond_0

    .line 32
    const-string p2, "\\\\"

    .line 33
    :cond_0
    new-instance v0, Lmeizu_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;

    invoke-direct {v0, p2, p3, p0}, Lmeizu_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;-><init>(Ljava/lang/String;ILmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;)V

    .line 34
    .local v0, rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V

    .line 35
    iget v1, v0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->retval:I

    if-eqz v1, :cond_1

    .line 36
    new-instance v1, Lmeizu_jcifs/smb/SmbException;

    iget v2, v0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->retval:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmeizu_jcifs/smb/SmbException;-><init>(IZ)V

    throw v1

    .line 37
    :cond_1
    return-void
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
    .line 40
    return-void
.end method

.class public Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
.super Lmeizu_jcifs/dcerpc/rpc$policy_handle;
.source "SamrAliasHandle.java"


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    .locals 4
    .parameter "handle"
    .parameter "domainHandle"
    .parameter "access"
    .parameter "rid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 33
    new-instance v0, Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;

    invoke-direct {v0, p2, p3, p4, p0}, Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;-><init>(Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;IILmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;)V

    .line 34
    .local v0, rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V

    .line 35
    iget v1, v0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->retval:I

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Lmeizu_jcifs/smb/SmbException;

    iget v2, v0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->retval:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmeizu_jcifs/smb/SmbException;-><init>(IZ)V

    throw v1

    .line 37
    :cond_0
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

.class public Lmeizu_jcifs/dcerpc/msrpc/MsrpcShareGetInfo;
.super Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;
.source "MsrpcShareGetInfo.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "server"
    .parameter "sharename"

    .prologue
    .line 30
    const/16 v0, 0x1f6

    new-instance v1, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    invoke-direct {v1}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILmeizu_jcifs/dcerpc/ndr/NdrObject;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 33
    return-void
.end method


# virtual methods
.method public getSecurity()[Lmeizu_jcifs/smb/ACE;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    .line 37
    .local v0, info502:Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;
    iget-object v2, v0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-eqz v2, :cond_0

    .line 39
    new-instance v1, Lmeizu_jcifs/smb/SecurityDescriptor;

    iget-object v2, v0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    const/4 v3, 0x0

    iget v4, v0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-direct {v1, v2, v3, v4}, Lmeizu_jcifs/smb/SecurityDescriptor;-><init>([BII)V

    .line 40
    .local v1, sd:Lmeizu_jcifs/smb/SecurityDescriptor;
    iget-object v2, v1, Lmeizu_jcifs/smb/SecurityDescriptor;->aces:[Lmeizu_jcifs/smb/ACE;

    .line 42
    .end local v1           #sd:Lmeizu_jcifs/smb/SecurityDescriptor;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

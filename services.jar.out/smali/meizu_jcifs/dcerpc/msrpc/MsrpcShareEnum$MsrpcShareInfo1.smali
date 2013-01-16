.class Lmeizu_jcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;
.super Lmeizu_jcifs/smb/SmbShareInfo;
.source "MsrpcShareEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/MsrpcShareEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsrpcShareInfo1"
.end annotation


# instance fields
.field final synthetic this$0:Lmeizu_jcifs/dcerpc/msrpc/MsrpcShareEnum;


# direct methods
.method constructor <init>(Lmeizu_jcifs/dcerpc/msrpc/MsrpcShareEnum;Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;)V
    .locals 1
    .parameter
    .parameter "info1"

    .prologue
    .line 29
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;->this$0:Lmeizu_jcifs/dcerpc/msrpc/MsrpcShareEnum;

    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbShareInfo;-><init>()V

    .line 30
    iget-object v0, p2, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->netname:Ljava/lang/String;

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 31
    iget v0, p2, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->type:I

    iput v0, p0, Lmeizu_jcifs/smb/SmbShareInfo;->type:I

    .line 32
    iget-object v0, p2, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->remark:Ljava/lang/String;

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    .line 33
    return-void
.end method

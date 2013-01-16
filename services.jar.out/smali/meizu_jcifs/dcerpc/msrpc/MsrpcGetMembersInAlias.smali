.class public Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
.super Lmeizu_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;
.source "MsrpcGetMembersInAlias.java"


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V
    .locals 1
    .parameter "aliasHandle"
    .parameter "sids"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;-><init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    .line 28
    iput-object p2, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 31
    return-void
.end method

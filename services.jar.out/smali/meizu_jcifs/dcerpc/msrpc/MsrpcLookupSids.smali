.class public Lmeizu_jcifs/dcerpc/msrpc/MsrpcLookupSids;
.super Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;
.source "MsrpcLookupSids.java"


# instance fields
.field sids:[Lmeizu_jcifs/smb/SID;


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;[Lmeizu_jcifs/smb/SID;)V
    .locals 7
    .parameter "policyHandle"
    .parameter "sids"

    .prologue
    .line 31
    new-instance v2, Lmeizu_jcifs/dcerpc/msrpc/LsarSidArrayX;

    invoke-direct {v2, p2}, Lmeizu_jcifs/dcerpc/msrpc/LsarSidArrayX;-><init>([Lmeizu_jcifs/smb/SID;)V

    new-instance v3, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    invoke-direct {v3}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;-><init>()V

    new-instance v4, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    invoke-direct {v4}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;-><init>()V

    const/4 v5, 0x1

    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;-><init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;SI)V

    .line 37
    iput-object p2, p0, Lmeizu_jcifs/dcerpc/msrpc/MsrpcLookupSids;->sids:[Lmeizu_jcifs/smb/SID;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 40
    return-void
.end method

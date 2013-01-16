.class public Lmeizu_jcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
.super Lmeizu_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;
.source "MsrpcDfsRootEnum.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "server"

    .prologue
    const/4 v6, 0x0

    .line 27
    const/16 v2, 0xc8

    const v3, 0xffff

    new-instance v4, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-direct {v4}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;-><init>()V

    new-instance v5, Lmeizu_jcifs/dcerpc/ndr/NdrLong;

    invoke-direct {v5, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrLong;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;-><init>(Ljava/lang/String;IILmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;Lmeizu_jcifs/dcerpc/ndr/NdrLong;)V

    .line 28
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    iget v1, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->level:I

    iput v1, v0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 29
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    new-instance v1, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    invoke-direct {v1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;-><init>()V

    iput-object v1, v0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    .line 30
    iput v6, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 32
    return-void
.end method


# virtual methods
.method public getEntries()[Lmeizu_jcifs/smb/FileEntry;
    .locals 7

    .prologue
    .line 35
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    iget-object v0, v3, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    .line 36
    .local v0, a200:Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;
    iget v3, v0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    new-array v1, v3, [Lmeizu_jcifs/smb/SmbShareInfo;

    .line 37
    .local v1, entries:[Lmeizu_jcifs/smb/SmbShareInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, v0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    if-ge v2, v3, :cond_0

    .line 38
    new-instance v3, Lmeizu_jcifs/smb/SmbShareInfo;

    iget-object v4, v0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    aget-object v4, v4, v2

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo200;->dfs_name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lmeizu_jcifs/smb/SmbShareInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-object v1
.end method

.class Lmeizu_jcifs/dcerpc/msrpc/LsarSidArrayX;
.super Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;
.source "LsarSidArrayX.java"


# direct methods
.method constructor <init>([Lmeizu_jcifs/smb/SID;)V
    .locals 3
    .parameter "sids"

    .prologue
    .line 7
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;-><init>()V

    .line 8
    array-length v1, p1

    iput v1, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    .line 9
    array-length v1, p1

    new-array v1, v1, [Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    .line 10
    const/4 v0, 0x0

    .local v0, si:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    new-instance v2, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    invoke-direct {v2}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;-><init>()V

    aput-object v2, v1, v0

    .line 12
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iput-object v2, v1, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    .line 10
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

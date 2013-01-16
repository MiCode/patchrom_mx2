.class public Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsStorageInfo"
.end annotation


# instance fields
.field public server_name:Ljava/lang/String;

.field public share_name:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 115
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->state:I

    .line 116
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 117
    .local v0, _server_namep:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 119
    .local v1, _share_namep:I
    if-eqz v0, :cond_0

    .line 120
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 121
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->server_name:Ljava/lang/String;

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    .line 125
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 126
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->share_name:Ljava/lang/String;

    .line 129
    :cond_1
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 97
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 98
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->state:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 99
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->server_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 100
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->share_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 102
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->server_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 104
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->server_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->share_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 108
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 109
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->share_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 112
    :cond_1
    return-void
.end method

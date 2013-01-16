.class public Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsInfo3"
.end annotation


# instance fields
.field public comment:Ljava/lang/String;

.field public num_stores:I

.field public path:Ljava/lang/String;

.field public state:I

.field public stores:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 8
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 172
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 173
    .local v2, _pathp:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 174
    .local v0, _commentp:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v6

    iput v6, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->state:I

    .line 175
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v6

    iput v6, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    .line 176
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 178
    .local v4, _storesp:I
    if-eqz v2, :cond_0

    .line 179
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 180
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    .line 183
    :cond_0
    if-eqz v0, :cond_1

    .line 184
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 185
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    .line 188
    :cond_1
    if-eqz v4, :cond_6

    .line 189
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 190
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v5

    .line 191
    .local v5, _storess:I
    iget v3, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 192
    .local v3, _storesi:I
    mul-int/lit8 v6, v5, 0xc

    invoke-virtual {p1, v6}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 194
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    if-nez v6, :cond_4

    .line 195
    if-ltz v5, :cond_2

    const v6, 0xffff

    if-le v5, v6, :cond_3

    :cond_2
    new-instance v6, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v7, "invalid array conformance"

    invoke-direct {v6, v7}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 196
    :cond_3
    new-array v6, v5, [Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    iput-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 198
    :cond_4
    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 199
    const/4 v1, 0x0

    .local v1, _i:I
    :goto_0
    if-ge v1, v5, :cond_6

    .line 200
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    aget-object v6, v6, v1

    if-nez v6, :cond_5

    .line 201
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    new-instance v7, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    invoke-direct {v7}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;-><init>()V

    aput-object v7, v6, v1

    .line 203
    :cond_5
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1           #_i:I
    .end local v3           #_storesi:I
    .end local v5           #_storess:I
    :cond_6
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 5
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 140
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 141
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 142
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 143
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->state:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 144
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 145
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 147
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 148
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 149
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 153
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 154
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 157
    :cond_1
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    if-eqz v3, :cond_2

    .line 158
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 159
    iget v2, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    .line 160
    .local v2, _storess:I
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 161
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 162
    .local v1, _storesi:I
    mul-int/lit8 v3, v2, 0xc

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 164
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 165
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 166
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0           #_i:I
    .end local v1           #_storesi:I
    .end local v2           #_storess:I
    :cond_2
    return-void
.end method

.class public Lmeizu_jcifs/smb/SmbFileInputStream;
.super Ljava/io/InputStream;
.source "SmbFileInputStream.java"


# instance fields
.field private access:I

.field file:Lmeizu_jcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private readSize:I

.field private tmp:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lmeizu_jcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lmeizu_jcifs/smb/SmbFileInputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/smb/SmbFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmeizu_jcifs/smb/SmbFileInputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;I)V

    .line 66
    return-void
.end method

.method constructor <init>(Lmeizu_jcifs/smb/SmbFile;I)V
    .locals 3
    .parameter "file"
    .parameter "openFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const v1, 0xffff

    .line 68
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->tmp:[B

    .line 69
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    .line 70
    and-int v0, p2, v1

    iput v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->openFlags:I

    .line 71
    ushr-int/lit8 v0, p2, 0x10

    and-int/2addr v0, v1

    iput v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->access:I

    .line 72
    iget v0, p1, Lmeizu_jcifs/smb/SmbFile;->type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 73
    iget v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->access:I

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lmeizu_jcifs/smb/SmbFile;->open(IIII)V

    .line 74
    iget v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->openFlags:I

    and-int/lit8 v0, v0, -0x51

    iput v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->openFlags:I

    .line 78
    :goto_0
    iget-object v0, p1, Lmeizu_jcifs/smb/SmbFile;->tree:Lmeizu_jcifs/smb/SmbTree;

    iget-object v0, v0, Lmeizu_jcifs/smb/SmbTree;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v0, v0, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v0, v0, Lmeizu_jcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v0, v0, -0x46

    iget-object v1, p1, Lmeizu_jcifs/smb/SmbFile;->tree:Lmeizu_jcifs/smb/SmbTree;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbTree;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Lmeizu_jcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/lit8 v1, v1, -0x46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->readSize:I

    .line 80
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->connect0()V

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v5, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v5, v5, Lmeizu_jcifs/smb/SmbFile;->type:I

    const/16 v6, 0x10

    if-eq v5, v6, :cond_0

    .line 228
    :goto_0
    return v4

    .line 216
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    check-cast v0, Lmeizu_jcifs/smb/SmbNamedPipe;

    .line 217
    .local v0, pipe:Lmeizu_jcifs/smb/SmbNamedPipe;
    iget-object v5, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    const/16 v6, 0x20

    iget v7, v0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    const/high16 v8, 0xff

    and-int/2addr v7, v8

    const/16 v8, 0x80

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lmeizu_jcifs/smb/SmbFile;->open(IIII)V

    .line 219
    new-instance v1, Lmeizu_jcifs/smb/TransPeekNamedPipe;

    iget-object v5, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget-object v5, v5, Lmeizu_jcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v6, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v6, v6, Lmeizu_jcifs/smb/SmbFile;->fid:I

    invoke-direct {v1, v5, v6}, Lmeizu_jcifs/smb/TransPeekNamedPipe;-><init>(Ljava/lang/String;I)V

    .line 220
    .local v1, req:Lmeizu_jcifs/smb/TransPeekNamedPipe;
    new-instance v2, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;

    invoke-direct {v2, v0}, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;-><init>(Lmeizu_jcifs/smb/SmbNamedPipe;)V

    .line 222
    .local v2, resp:Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;
    invoke-virtual {v0, v1, v2}, Lmeizu_jcifs/smb/SmbNamedPipe;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 223
    iget v5, v2, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->status:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, v2, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->status:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 225
    :cond_1
    iget-object v5, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lmeizu_jcifs/smb/SmbFile;->opened:Z
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v0           #pipe:Lmeizu_jcifs/smb/SmbNamedPipe;
    .end local v1           #req:Lmeizu_jcifs/smb/TransPeekNamedPipe;
    .end local v2           #resp:Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;
    :catch_0
    move-exception v3

    .line 230
    .local v3, se:Lmeizu_jcifs/smb/SmbException;
    invoke-virtual {p0, v3}, Lmeizu_jcifs/smb/SmbFileInputStream;->seToIoe(Lmeizu_jcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 228
    .end local v3           #se:Lmeizu_jcifs/smb/SmbException;
    .restart local v0       #pipe:Lmeizu_jcifs/smb/SmbNamedPipe;
    .restart local v1       #req:Lmeizu_jcifs/smb/TransPeekNamedPipe;
    .restart local v2       #resp:Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;
    :cond_2
    :try_start_1
    iget v4, v2, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->available:I
    :try_end_1
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v1}, Lmeizu_jcifs/smb/SmbFile;->close()V

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->tmp:[B
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, se:Lmeizu_jcifs/smb/SmbException;
    invoke-virtual {p0, v0}, Lmeizu_jcifs/smb/SmbFileInputStream;->seToIoe(Lmeizu_jcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 119
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->tmp:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lmeizu_jcifs/smb/SmbFileInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 122
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->tmp:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmeizu_jcifs/smb/SmbFileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lmeizu_jcifs/smb/SmbFileInputStream;->readDirect([BII)I

    move-result v0

    return v0
.end method

.method public readDirect([BII)I
    .locals 14
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    if-gtz p3, :cond_0

    .line 146
    const/4 v2, 0x0

    .line 197
    :goto_0
    return v2

    .line 148
    :cond_0
    iget-wide v10, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    .line 150
    .local v10, start:J
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->tmp:[B

    if-nez v2, :cond_1

    .line 151
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad file descriptor"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_1
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v3, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->openFlags:I

    iget v4, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->access:I

    const/16 v6, 0x80

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v4, v6, v12}, Lmeizu_jcifs/smb/SmbFile;->open(IIII)V

    .line 160
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    sget-object v2, Lmeizu_jcifs/smb/SmbFile;->log:Lmeizu_jcifs/util/LogStream;

    sget v2, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 161
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    sget-object v2, Lmeizu_jcifs/smb/SmbFile;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read: fid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v4, v4, Lmeizu_jcifs/smb/SmbFile;->fid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",off="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 163
    :cond_2
    new-instance v8, Lmeizu_jcifs/smb/SmbComReadAndXResponse;

    move/from16 v0, p2

    invoke-direct {v8, p1, v0}, Lmeizu_jcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    .line 165
    .local v8, response:Lmeizu_jcifs/smb/SmbComReadAndXResponse;
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v2, v2, Lmeizu_jcifs/smb/SmbFile;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 166
    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lmeizu_jcifs/smb/ServerMessageBlock;->responseTimeout:J

    .line 171
    :cond_3
    iget v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->readSize:I

    move/from16 v0, p3

    if-le v0, v2, :cond_6

    iget v5, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->readSize:I

    .line 173
    .local v5, r:I
    :goto_1
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    sget-object v2, Lmeizu_jcifs/smb/SmbFile;->log:Lmeizu_jcifs/util/LogStream;

    sget v2, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    .line 174
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    sget-object v2, Lmeizu_jcifs/smb/SmbFile;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",fp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 177
    :cond_4
    :try_start_0
    new-instance v1, Lmeizu_jcifs/smb/SmbComReadAndX;

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v2, v2, Lmeizu_jcifs/smb/SmbFile;->fid:I

    iget-wide v3, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmeizu_jcifs/smb/SmbComReadAndX;-><init>(IJILmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 178
    .local v1, request:Lmeizu_jcifs/smb/SmbComReadAndX;
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v2, v2, Lmeizu_jcifs/smb/SmbFile;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 179
    const/16 v2, 0x400

    iput v2, v1, Lmeizu_jcifs/smb/SmbComReadAndX;->remaining:I

    iput v2, v1, Lmeizu_jcifs/smb/SmbComReadAndX;->maxCount:I

    iput v2, v1, Lmeizu_jcifs/smb/SmbComReadAndX;->minCount:I

    .line 181
    :cond_5
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v2, v1, v8}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    iget v7, v8, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .local v7, n:I
    if-gtz v7, :cond_9

    .line 190
    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    sub-long/2addr v2, v10

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-lez v2, :cond_8

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    sub-long/2addr v2, v10

    :goto_2
    long-to-int v2, v2

    goto/16 :goto_0

    .end local v1           #request:Lmeizu_jcifs/smb/SmbComReadAndX;
    .end local v5           #r:I
    .end local v7           #n:I
    :cond_6
    move/from16 v5, p3

    .line 171
    goto :goto_1

    .line 182
    .restart local v5       #r:I
    :catch_0
    move-exception v9

    .line 183
    .local v9, se:Lmeizu_jcifs/smb/SmbException;
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v2, v2, Lmeizu_jcifs/smb/SmbFile;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_7

    invoke-virtual {v9}, Lmeizu_jcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v3, -0x3ffffeb5

    if-ne v2, v3, :cond_7

    .line 185
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 187
    :cond_7
    invoke-virtual {p0, v9}, Lmeizu_jcifs/smb/SmbFileInputStream;->seToIoe(Lmeizu_jcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 190
    .end local v9           #se:Lmeizu_jcifs/smb/SmbException;
    .restart local v1       #request:Lmeizu_jcifs/smb/SmbComReadAndX;
    .restart local v7       #n:I
    :cond_8
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 192
    :cond_9
    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    int-to-long v12, v7

    add-long/2addr v2, v12

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    .line 193
    sub-int p3, p3, v7

    .line 194
    iget v2, v8, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->off:I

    add-int/2addr v2, v7

    iput v2, v8, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->off:I

    .line 195
    if-lez p3, :cond_a

    if-eq v7, v5, :cond_3

    .line 197
    :cond_a
    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    sub-long/2addr v2, v10

    long-to-int v2, v2

    goto/16 :goto_0
.end method

.method protected seToIoe(Lmeizu_jcifs/smb/SmbException;)Ljava/io/IOException;
    .locals 3
    .parameter "se"

    .prologue
    .line 83
    move-object v0, p1

    .line 84
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 85
    .local v1, root:Ljava/lang/Throwable;
    instance-of v2, v1, Lmeizu_jcifs/util/transport/TransportException;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 86
    check-cast v0, Lmeizu_jcifs/util/transport/TransportException;

    move-object v2, v0

    .line 87
    check-cast v2, Lmeizu_jcifs/util/transport/TransportException;

    invoke-virtual {v2}, Lmeizu_jcifs/util/transport/TransportException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 89
    :cond_0
    instance-of v2, v1, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_1

    .line 90
    new-instance v0, Ljava/io/InterruptedIOException;

    .end local v0           #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v0       #ioe:Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 93
    :cond_1
    return-object v0
.end method

.method public skip(J)J
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 240
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 241
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmeizu_jcifs/smb/SmbFileInputStream;->fp:J

    .line 244
    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    move-wide p1, v0

    goto :goto_0
.end method

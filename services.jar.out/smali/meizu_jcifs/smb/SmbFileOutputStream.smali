.class public Lmeizu_jcifs/smb/SmbFileOutputStream;
.super Ljava/io/OutputStream;
.source "SmbFileOutputStream.java"


# instance fields
.field private access:I

.field private append:Z

.field private file:Lmeizu_jcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private req:Lmeizu_jcifs/smb/SmbComWrite;

.field private reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

.field private rsp:Lmeizu_jcifs/smb/SmbComWriteResponse;

.field private rspx:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

.field private tmp:[B

.field private useNTSmbs:Z

.field private writeSize:I


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
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmeizu_jcifs/smb/SmbFileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "url"
    .parameter "shareAccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lmeizu_jcifs/smb/SmbFile;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmeizu_jcifs/smb/SmbFileOutputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;Z)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lmeizu_jcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lmeizu_jcifs/smb/SmbFileOutputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;Z)V

    .line 83
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
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmeizu_jcifs/smb/SmbFileOutputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/smb/SmbFile;Z)V
    .locals 1
    .parameter "file"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p2, :cond_0

    const/16 v0, 0x16

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lmeizu_jcifs/smb/SmbFileOutputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;ZI)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/16 v0, 0x52

    goto :goto_0
.end method

.method constructor <init>(Lmeizu_jcifs/smb/SmbFile;ZI)V
    .locals 5
    .parameter "file"
    .parameter "append"
    .parameter "openFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 38
    const/4 v2, 0x1

    new-array v2, v2, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->tmp:[B

    .line 124
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    .line 125
    iput-boolean p2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->append:Z

    .line 126
    iput p3, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->openFlags:I

    .line 127
    ushr-int/lit8 v2, p3, 0x10

    const v3, 0xffff

    and-int/2addr v2, v3

    iput v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->access:I

    .line 128
    if-eqz p2, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :cond_0
    :goto_0
    instance-of v2, p1, Lmeizu_jcifs/smb/SmbNamedPipe;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lmeizu_jcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const-string v3, "\\pipe\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lmeizu_jcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 139
    new-instance v2, Lmeizu_jcifs/smb/TransWaitNamedPipe;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\pipe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lmeizu_jcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmeizu_jcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v3, Lmeizu_jcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v3}, Lmeizu_jcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {p1, v2, v3}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 142
    :cond_1
    iget v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->access:I

    or-int/lit8 v2, v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {p1, p3, v2, v3, v4}, Lmeizu_jcifs/smb/SmbFile;->open(IIII)V

    .line 143
    iget v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->openFlags:I

    and-int/lit8 v2, v2, -0x51

    iput v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->openFlags:I

    .line 144
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbFile;->tree:Lmeizu_jcifs/smb/SmbTree;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTree;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v2, v2, -0x46

    iput v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->writeSize:I

    .line 146
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbFile;->tree:Lmeizu_jcifs/smb/SmbTree;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTree;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lmeizu_jcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v2

    iput-boolean v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    .line 147
    iget-boolean v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    if-eqz v2, :cond_2

    .line 148
    new-instance v2, Lmeizu_jcifs/smb/SmbComWriteAndX;

    invoke-direct {v2}, Lmeizu_jcifs/smb/SmbComWriteAndX;-><init>()V

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

    .line 149
    new-instance v2, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {v2}, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rspx:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    .line 154
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, sae:Lmeizu_jcifs/smb/SmbAuthException;
    throw v0

    .line 133
    .end local v0           #sae:Lmeizu_jcifs/smb/SmbAuthException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, se:Lmeizu_jcifs/smb/SmbException;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J

    goto :goto_0

    .line 151
    .end local v1           #se:Lmeizu_jcifs/smb/SmbException;
    :cond_2
    new-instance v2, Lmeizu_jcifs/smb/SmbComWrite;

    invoke-direct {v2}, Lmeizu_jcifs/smb/SmbComWrite;-><init>()V

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->req:Lmeizu_jcifs/smb/SmbComWrite;

    .line 152
    new-instance v2, Lmeizu_jcifs/smb/SmbComWriteResponse;

    invoke-direct {v2}, Lmeizu_jcifs/smb/SmbComWriteResponse;-><init>()V

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rsp:Lmeizu_jcifs/smb/SmbComWriteResponse;

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbFile;->close()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->tmp:[B

    .line 166
    return-void
.end method

.method ensureOpen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v1, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->openFlags:I

    iget v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->access:I

    or-int/lit8 v2, v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lmeizu_jcifs/smb/SmbFile;->open(IIII)V

    .line 198
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->append:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J

    .line 202
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 176
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbFileOutputStream;->write([BII)V

    .line 177
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmeizu_jcifs/smb/SmbFileOutputStream;->write([BII)V

    .line 188
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    instance-of v0, v0, Lmeizu_jcifs/smb/SmbNamedPipe;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    new-instance v1, Lmeizu_jcifs/smb/TransWaitNamedPipe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\pipe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmeizu_jcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lmeizu_jcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v2}, Lmeizu_jcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 216
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmeizu_jcifs/smb/SmbFileOutputStream;->writeDirect([BIII)V

    .line 217
    return-void
.end method

.method public writeDirect([BIII)V
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    if-gtz p3, :cond_0

    .line 257
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->tmp:[B

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad file descriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SmbFileOutputStream;->ensureOpen()V

    .line 231
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    sget-object v0, Lmeizu_jcifs/smb/SmbFile;->log:Lmeizu_jcifs/util/LogStream;

    sget v0, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    sget-object v0, Lmeizu_jcifs/smb/SmbFile;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v2, v2, Lmeizu_jcifs/smb/SmbFile;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 236
    :cond_2
    iget v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->writeSize:I

    if-le p3, v0, :cond_3

    iget v7, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->writeSize:I

    .line 237
    .local v7, w:I
    :goto_1
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    if-eqz v0, :cond_5

    .line 238
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v1, v1, Lmeizu_jcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J

    sub-int v4, p3, v7

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lmeizu_jcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    .line 239
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v1, v1, Lmeizu_jcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J

    move v4, p3

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lmeizu_jcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    .line 241
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

    const/16 v1, 0x8

    iput v1, v0, Lmeizu_jcifs/smb/SmbComWriteAndX;->writeMode:I

    .line 245
    :goto_2
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rspx:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    invoke-virtual {v0, v1, v2}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 246
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rspx:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J

    .line 247
    int-to-long v0, p3

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rspx:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;->count:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 248
    int-to-long v0, p2

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rspx:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    .line 256
    :goto_3
    if-gtz p3, :cond_2

    goto/16 :goto_0

    .end local v7           #w:I
    :cond_3
    move v7, p3

    .line 236
    goto :goto_1

    .line 243
    .restart local v7       #w:I
    :cond_4
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

    const/4 v1, 0x0

    iput v1, v0, Lmeizu_jcifs/smb/SmbComWriteAndX;->writeMode:I

    goto :goto_2

    .line 250
    :cond_5
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->req:Lmeizu_jcifs/smb/SmbComWrite;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v1, v1, Lmeizu_jcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J

    sub-int v4, p3, v7

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lmeizu_jcifs/smb/SmbComWrite;->setParam(IJI[BII)V

    .line 251
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rsp:Lmeizu_jcifs/smb/SmbComWriteResponse;

    iget-wide v2, v2, Lmeizu_jcifs/smb/SmbComWriteResponse;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->fp:J

    .line 252
    int-to-long v0, p3

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rsp:Lmeizu_jcifs/smb/SmbComWriteResponse;

    iget-wide v2, v2, Lmeizu_jcifs/smb/SmbComWriteResponse;->count:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 253
    int-to-long v0, p2

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rsp:Lmeizu_jcifs/smb/SmbComWriteResponse;

    iget-wide v2, v2, Lmeizu_jcifs/smb/SmbComWriteResponse;->count:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    .line 254
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->file:Lmeizu_jcifs/smb/SmbFile;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->req:Lmeizu_jcifs/smb/SmbComWrite;

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFileOutputStream;->rsp:Lmeizu_jcifs/smb/SmbComWriteResponse;

    invoke-virtual {v0, v1, v2}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    goto :goto_3
.end method

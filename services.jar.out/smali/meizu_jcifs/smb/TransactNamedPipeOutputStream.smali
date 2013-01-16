.class Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;
.super Lmeizu_jcifs/smb/SmbFileOutputStream;
.source "TransactNamedPipeOutputStream.java"


# instance fields
.field private dcePipe:Z

.field private path:Ljava/lang/String;

.field private pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

.field private tmp:[B


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/SmbNamedPipe;)V
    .locals 4
    .parameter "pipe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    iget v2, p1, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    const v3, -0xff01

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    invoke-direct {p0, p1, v1, v2}, Lmeizu_jcifs/smb/SmbFileOutputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;ZI)V

    .line 28
    new-array v2, v0, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    .line 33
    iput-object p1, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    .line 34
    iget v2, p1, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v2, v2, 0x600

    const/16 v3, 0x600

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    .line 35
    iget-object v0, p1, Lmeizu_jcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iput-object v0, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    .line 36
    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
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
    .line 39
    iget-object v0, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbNamedPipe;->close()V

    .line 40
    return-void
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

    .line 42
    iget-object v0, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 43
    iget-object v0, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    .line 44
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
    .line 46
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    .line 47
    return-void
.end method

.method public write([BII)V
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    if-gez p3, :cond_0

    .line 50
    const/4 p3, 0x0

    .line 53
    :cond_0
    iget-object v1, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    iget v1, v1, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2

    .line 54
    iget-object v1, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    new-instance v2, Lmeizu_jcifs/smb/TransWaitNamedPipe;

    iget-object v3, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Lmeizu_jcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v3, Lmeizu_jcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v3}, Lmeizu_jcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {v1, v2, v3}, Lmeizu_jcifs/smb/SmbNamedPipe;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 56
    iget-object v1, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    new-instance v2, Lmeizu_jcifs/smb/TransCallNamedPipe;

    iget-object v3, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v2, v3, p1, p2, p3}, Lmeizu_jcifs/smb/TransCallNamedPipe;-><init>(Ljava/lang/String;[BII)V

    new-instance v3, Lmeizu_jcifs/smb/TransCallNamedPipeResponse;

    iget-object v4, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    invoke-direct {v3, v4}, Lmeizu_jcifs/smb/TransCallNamedPipeResponse;-><init>(Lmeizu_jcifs/smb/SmbNamedPipe;)V

    invoke-virtual {v1, v2, v3}, Lmeizu_jcifs/smb/SmbNamedPipe;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    iget-object v1, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    iget v1, v1, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_1

    .line 60
    invoke-virtual {p0}, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->ensureOpen()V

    .line 61
    new-instance v0, Lmeizu_jcifs/smb/TransTransactNamedPipe;

    iget-object v1, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    iget v1, v1, Lmeizu_jcifs/smb/SmbFile;->fid:I

    invoke-direct {v0, v1, p1, p2, p3}, Lmeizu_jcifs/smb/TransTransactNamedPipe;-><init>(I[BII)V

    .line 62
    .local v0, req:Lmeizu_jcifs/smb/TransTransactNamedPipe;
    iget-boolean v1, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    if-eqz v1, :cond_3

    .line 63
    const/16 v1, 0x400

    iput v1, v0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 65
    :cond_3
    iget-object v1, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    new-instance v2, Lmeizu_jcifs/smb/TransTransactNamedPipeResponse;

    iget-object v3, p0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    invoke-direct {v2, v3}, Lmeizu_jcifs/smb/TransTransactNamedPipeResponse;-><init>(Lmeizu_jcifs/smb/SmbNamedPipe;)V

    invoke-virtual {v1, v0, v2}, Lmeizu_jcifs/smb/SmbNamedPipe;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    goto :goto_0
.end method

.class public Lmeizu_jcifs/smb/SmbRandomAccessFile;
.super Ljava/lang/Object;
.source "SmbRandomAccessFile.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;


# static fields
.field private static final WRITE_OPTIONS:I = 0x842


# instance fields
.field private access:I

.field private ch:I

.field private file:Lmeizu_jcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private options:I

.field private readSize:I

.field private tmp:[B

.field private writeSize:I

.field private write_andx_resp:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "url"
    .parameter "mode"
    .parameter "shareAccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lmeizu_jcifs/smb/SmbFile;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p3}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;I)V

    invoke-direct {p0, v0, p2}, Lmeizu_jcifs/smb/SmbRandomAccessFile;-><init>(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;)V
    .locals 4
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->access:I

    iput v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->options:I

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write_andx_resp:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    .line 46
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    .line 47
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/16 v0, 0x11

    iput v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->openFlags:I

    .line 57
    :goto_0
    iget v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->openFlags:I

    iget v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->access:I

    const/16 v2, 0x80

    iget v3, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lmeizu_jcifs/smb/SmbFile;->open(IIII)V

    .line 58
    iget-object v0, p1, Lmeizu_jcifs/smb/SmbFile;->tree:Lmeizu_jcifs/smb/SmbTree;

    iget-object v0, v0, Lmeizu_jcifs/smb/SmbTree;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v0, v0, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v0, v0, Lmeizu_jcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->readSize:I

    .line 59
    iget-object v0, p1, Lmeizu_jcifs/smb/SmbFile;->tree:Lmeizu_jcifs/smb/SmbTree;

    iget-object v0, v0, Lmeizu_jcifs/smb/SmbTree;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v0, v0, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v0, v0, Lmeizu_jcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->writeSize:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    .line 61
    return-void

    .line 49
    :cond_0
    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const/16 v0, 0x17

    iput v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->openFlags:I

    .line 51
    new-instance v0, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {v0}, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write_andx_resp:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    .line 52
    const/16 v0, 0x842

    iput v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->options:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->access:I

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbFile;->close()V

    .line 164
    return-void
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 146
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    return-wide v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 64
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 11
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    if-gtz p3, :cond_0

    .line 96
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-wide v8, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    .line 79
    .local v8, start:J
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v1}, Lmeizu_jcifs/smb/SmbFile;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v3, 0x80

    iget v5, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v1, v2, v0, v3, v5}, Lmeizu_jcifs/smb/SmbFile;->open(IIII)V

    .line 84
    :cond_1
    new-instance v7, Lmeizu_jcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v7, p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    .line 86
    .local v7, response:Lmeizu_jcifs/smb/SmbComReadAndXResponse;
    :cond_2
    iget v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->readSize:I

    if-le p3, v0, :cond_3

    iget v4, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->readSize:I

    .line 87
    .local v4, r:I
    :goto_1
    iget-object v10, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    new-instance v0, Lmeizu_jcifs/smb/SmbComReadAndX;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v1, v1, Lmeizu_jcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmeizu_jcifs/smb/SmbComReadAndX;-><init>(IJILmeizu_jcifs/smb/ServerMessageBlock;)V

    invoke-virtual {v10, v0, v7}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 88
    iget v6, v7, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .local v6, n:I
    if-gtz v6, :cond_5

    .line 89
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long/2addr v0, v8

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long/2addr v0, v8

    :goto_2
    long-to-int v0, v0

    goto :goto_0

    .end local v4           #r:I
    .end local v6           #n:I
    :cond_3
    move v4, p3

    .line 86
    goto :goto_1

    .line 89
    .restart local v4       #r:I
    .restart local v6       #n:I
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 91
    :cond_5
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    .line 92
    sub-int/2addr p3, v6

    .line 93
    iget v0, v7, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->off:I

    add-int/2addr v0, v6

    iput v0, v7, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->off:I

    .line 94
    if-lez p3, :cond_6

    if-eq v6, v4, :cond_2

    .line 96
    :cond_6
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long/2addr v0, v8

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-virtual {p0, v2, v1, v0}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    .line 168
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    .line 174
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public final readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    .line 198
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Lmeizu_jcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    .line 222
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Lmeizu_jcifs/util/Encdec;->dec_doublebe([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    .line 216
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Lmeizu_jcifs/util/Encdec;->dec_floatbe([BI)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->readFully([BII)V

    .line 100
    return-void
.end method

.method public final readFully([BII)V
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 105
    .local v1, n:I
    :cond_0
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    .line 106
    .local v0, count:I
    if-gez v0, :cond_1

    new-instance v2, Lmeizu_jcifs/smb/SmbException;

    const-string v3, "EOF"

    invoke-direct {v2, v3}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_1
    add-int/2addr v1, v0

    .line 108
    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    .line 109
    if-lt v1, p3, :cond_0

    .line 110
    return-void
.end method

.method public final readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    .line 204
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Lmeizu_jcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v4, input:Ljava/lang/StringBuffer;
    const/4 v0, -0x1

    .line 229
    .local v0, c:I
    const/4 v3, 0x0

    .line 231
    .local v3, eol:Z
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 232
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 245
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 235
    :sswitch_0
    const/4 v3, 0x1

    .line 236
    goto :goto_0

    .line 238
    :sswitch_1
    const/4 v3, 0x1

    .line 239
    iget-wide v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    .line 240
    .local v1, cur:J
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 241
    iput-wide v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    goto :goto_0

    .line 250
    .end local v1           #cur:J
    :cond_1
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 251
    const/4 v5, 0x0

    .line 254
    :goto_1
    return-object v5

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    .line 210
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Lmeizu_jcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    .line 186
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Lmeizu_jcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->readUnsignedShort()I

    move-result v2

    .line 259
    .local v2, size:I
    new-array v0, v2, [B

    .line 260
    .local v0, b:[B
    invoke-virtual {p0, v0, v3, v2}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 262
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v3, v2}, Lmeizu_jcifs/util/Encdec;->dec_utf8([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, ioe:Ljava/io/IOException;
    new-instance v3, Lmeizu_jcifs/smb/SmbException;

    const-string v4, ""

    invoke-direct {v3, v4, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final readUnsignedByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    .line 180
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    .line 192
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Lmeizu_jcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public seek(J)V
    .locals 0
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 149
    iput-wide p1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    .line 150
    return-void
.end method

.method public setLength(J)V
    .locals 9
    .parameter "newLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v2, 0x80

    iget v4, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lmeizu_jcifs/smb/SmbFile;->open(IIII)V

    .line 159
    :cond_0
    new-instance v7, Lmeizu_jcifs/smb/SmbComWriteResponse;

    invoke-direct {v7}, Lmeizu_jcifs/smb/SmbComWriteResponse;-><init>()V

    .line 160
    .local v7, rsp:Lmeizu_jcifs/smb/SmbComWriteResponse;
    iget-object v8, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    new-instance v0, Lmeizu_jcifs/smb/SmbComWrite;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v1, v1, Lmeizu_jcifs/smb/SmbFile;->fid:I

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p1

    long-to-int v2, v4

    iget-object v4, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lmeizu_jcifs/smb/SmbComWrite;-><init>(III[BII)V

    invoke-virtual {v8, v0, v7}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 161
    return-void
.end method

.method public skipBytes(I)I
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 112
    if-lez p1, :cond_0

    .line 113
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    .line 116
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 121
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 122
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 125
    return-void
.end method

.method public write([BII)V
    .locals 10
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 127
    if-gtz p3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/4 v2, 0x0

    const/16 v3, 0x80

    iget v4, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmeizu_jcifs/smb/SmbFile;->open(IIII)V

    .line 138
    :cond_1
    iget v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->writeSize:I

    if-le p3, v0, :cond_2

    iget v7, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->writeSize:I

    .line 139
    .local v7, w:I
    :goto_1
    iget-object v9, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    new-instance v0, Lmeizu_jcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->file:Lmeizu_jcifs/smb/SmbFile;

    iget v1, v1, Lmeizu_jcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    sub-int v4, p3, v7

    const/4 v8, 0x0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lmeizu_jcifs/smb/SmbComWriteAndX;-><init>(IJI[BIILmeizu_jcifs/smb/ServerMessageBlock;)V

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write_andx_resp:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    invoke-virtual {v9, v0, v1}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 140
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write_andx_resp:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->fp:J

    .line 141
    int-to-long v0, p3

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write_andx_resp:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;->count:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 142
    int-to-long v0, p2

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write_andx_resp:Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    .line 143
    if-gtz p3, :cond_1

    goto :goto_0

    .end local v7           #w:I
    :cond_2
    move v7, p3

    .line 138
    goto :goto_1
.end method

.method public final writeBoolean(Z)V
    .locals 4
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v3, v2

    .line 269
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 270
    return-void

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 273
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 274
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 301
    .local v0, b:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 302
    return-void
.end method

.method public final writeChar(I)V
    .locals 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 280
    int-to-short v0, p1

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v1, v2}, Lmeizu_jcifs/util/Encdec;->enc_uint16be(S[BI)I

    .line 281
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 282
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 9
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 305
    .local v3, clen:I
    mul-int/lit8 v1, v3, 0x2

    .line 306
    .local v1, blen:I
    new-array v0, v1, [B

    .line 307
    .local v0, b:[B
    new-array v2, v3, [C

    .line 308
    .local v2, c:[C
    invoke-virtual {p1, v8, v3, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 309
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 310
    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aget-char v7, v2, v4

    ushr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 311
    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    aget-char v7, v2, v4

    ushr-int/lit8 v7, v7, 0x0

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0, v0, v8, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 314
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, p2, v0, v2}, Lmeizu_jcifs/util/Encdec;->enc_doublebe(D[BI)I

    .line 297
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 298
    return-void
.end method

.method public final writeFloat(F)V
    .locals 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, v0, v2}, Lmeizu_jcifs/util/Encdec;->enc_floatbe(F[BI)I

    .line 293
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 294
    return-void
.end method

.method public final writeInt(I)V
    .locals 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, v0, v2}, Lmeizu_jcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 285
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 286
    return-void
.end method

.method public final writeLong(J)V
    .locals 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, p2, v0, v2}, Lmeizu_jcifs/util/Encdec;->enc_uint64be(J[BI)I

    .line 289
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 290
    return-void
.end method

.method public final writeShort(I)V
    .locals 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 276
    int-to-short v0, p1

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v1, v2}, Lmeizu_jcifs/util/Encdec;->enc_uint16be(S[BI)I

    .line 277
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 278
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 8
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 317
    .local v4, len:I
    const/4 v5, 0x0

    .line 320
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 321
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 322
    .local v0, ch:I
    const/16 v6, 0x7f

    if-le v0, v6, :cond_1

    const/16 v6, 0x7ff

    if-le v0, v6, :cond_0

    const/4 v6, 0x3

    :goto_1
    add-int/2addr v5, v6

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_0
    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    .line 324
    .end local v0           #ch:I
    :cond_2
    new-array v1, v5, [B

    .line 325
    .local v1, dst:[B
    invoke-virtual {p0, v5}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->writeShort(I)V

    .line 327
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, v1, v6, v5}, Lmeizu_jcifs/util/Encdec;->enc_utf8(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    invoke-virtual {p0, v1, v7, v5}, Lmeizu_jcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 332
    return-void

    .line 328
    :catch_0
    move-exception v3

    .line 329
    .local v3, ioe:Ljava/io/IOException;
    new-instance v6, Lmeizu_jcifs/smb/SmbException;

    const-string v7, ""

    invoke-direct {v6, v7, v3}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

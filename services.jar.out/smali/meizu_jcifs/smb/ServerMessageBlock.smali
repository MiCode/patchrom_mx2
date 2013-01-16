.class abstract Lmeizu_jcifs/smb/ServerMessageBlock;
.super Lmeizu_jcifs/util/transport/Response;
.source "ServerMessageBlock.java"

# interfaces
.implements Lmeizu_jcifs/util/transport/Request;
.implements Lmeizu_jcifs/smb/SmbConstants;


# static fields
.field static final SMB_COM_CHECK_DIRECTORY:B = 0x10t

.field static final SMB_COM_CLOSE:B = 0x4t

.field static final SMB_COM_CREATE_DIRECTORY:B = 0x0t

.field static final SMB_COM_DELETE:B = 0x6t

.field static final SMB_COM_DELETE_DIRECTORY:B = 0x1t

.field static final SMB_COM_ECHO:B = 0x2bt

.field static final SMB_COM_FIND_CLOSE2:B = 0x34t

.field static final SMB_COM_LOGOFF_ANDX:B = 0x74t

.field static final SMB_COM_MOVE:B = 0x2at

.field static final SMB_COM_NEGOTIATE:B = 0x72t

.field static final SMB_COM_NT_CREATE_ANDX:B = -0x5et

.field static final SMB_COM_NT_TRANSACT:B = -0x60t

.field static final SMB_COM_NT_TRANSACT_SECONDARY:B = -0x5ft

.field static final SMB_COM_OPEN_ANDX:B = 0x2dt

.field static final SMB_COM_QUERY_INFORMATION:B = 0x8t

.field static final SMB_COM_READ_ANDX:B = 0x2et

.field static final SMB_COM_RENAME:B = 0x7t

.field static final SMB_COM_SESSION_SETUP_ANDX:B = 0x73t

.field static final SMB_COM_TRANSACTION:B = 0x25t

.field static final SMB_COM_TRANSACTION2:B = 0x32t

.field static final SMB_COM_TRANSACTION_SECONDARY:B = 0x26t

.field static final SMB_COM_TREE_CONNECT_ANDX:B = 0x75t

.field static final SMB_COM_TREE_DISCONNECT:B = 0x71t

.field static final SMB_COM_WRITE:B = 0xbt

.field static final SMB_COM_WRITE_ANDX:B = 0x2ft

.field static final header:[B

.field static log:Lmeizu_jcifs/util/LogStream;


# instance fields
.field auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

.field batchLevel:I

.field byteCount:I

.field command:B

.field digest:Lmeizu_jcifs/smb/SigningDigest;

.field errorCode:I

.field extendedSecurity:Z

.field flags:B

.field flags2:I

.field headerStart:I

.field length:I

.field mid:I

.field path:Ljava/lang/String;

.field pid:I

.field received:Z

.field response:Lmeizu_jcifs/smb/ServerMessageBlock;

.field responseTimeout:J

.field signSeq:I

.field tid:I

.field uid:I

.field useUnicode:Z

.field verifyFailed:Z

.field wordCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lmeizu_jcifs/util/LogStream;->getInstance()Lmeizu_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmeizu_jcifs/smb/ServerMessageBlock;->header:[B

    return-void

    :array_0
    .array-data 0x1
        0xfft
        0x53t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Lmeizu_jcifs/util/transport/Response;-><init>()V

    .line 180
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->responseTimeout:J

    .line 183
    iput-object v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 185
    iput-object v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->digest:Lmeizu_jcifs/smb/SigningDigest;

    .line 189
    const/16 v0, 0x18

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags:B

    .line 190
    sget v0, Lmeizu_jcifs/smb/ServerMessageBlock;->PID:I

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->pid:I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->batchLevel:I

    .line 192
    return-void
.end method

.method static readInt2([BI)I
    .locals 2
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 56
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method static readInt4([BI)I
    .locals 2
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 60
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method static readInt8([BI)J
    .locals 5
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static readTime([BI)J
    .locals 10
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 80
    invoke-static {p0, p1}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    .line 81
    .local v1, low:I
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    .line 82
    .local v0, hi:I
    int-to-long v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long v2, v4, v6

    .line 83
    .local v2, t:J
    const-wide/16 v4, 0x2710

    div-long v4, v2, v4

    const-wide v6, 0xa9730b66800L

    sub-long v2, v4, v6

    .line 84
    return-wide v2
.end method

.method static readUTime([BI)J
    .locals 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 93
    invoke-static {p0, p1}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static writeInt2(J[BI)V
    .locals 2
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 46
    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 47
    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 48
    return-void
.end method

.method static writeInt4(J[BI)V
    .locals 2
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v1, 0x8

    .line 50
    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 51
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 52
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 53
    add-int/lit8 p3, p3, 0x1

    shr-long v0, p0, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 54
    return-void
.end method

.method static writeInt8(J[BI)V
    .locals 2
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v1, 0x8

    .line 70
    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 71
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 72
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 73
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 74
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 75
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 76
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 77
    add-int/lit8 p3, p3, 0x1

    shr-long v0, p0, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 78
    return-void
.end method

.method static writeTime(J[BI)V
    .locals 4
    .parameter "t"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 88
    const-wide v0, 0xa9730b66800L

    add-long/2addr v0, p0

    const-wide/16 v2, 0x2710

    mul-long p0, v0, v2

    .line 90
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    .line 91
    return-void
.end method

.method static writeUTime(J[BI)V
    .locals 6
    .parameter "t"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const-wide/32 v4, 0x36ee80

    const-wide/16 v2, -0x1

    .line 96
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    .line 97
    :cond_0
    invoke-static {v2, v3, p2, p3}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 120
    :goto_0
    return-void

    .line 100
    :cond_1
    sget-object v1, Lmeizu_jcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    monitor-enter v1

    .line 101
    :try_start_0
    sget-object v0, Lmeizu_jcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    sget-object v0, Lmeizu_jcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    goto :goto_0

    .line 107
    :cond_3
    sub-long/2addr p0, v4

    goto :goto_1

    .line 111
    :cond_4
    :try_start_1
    sget-object v0, Lmeizu_jcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    add-long/2addr p0, v4

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method decode([BI)I
    .locals 7
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v6, 0x5

    .line 348
    iput p2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    move v2, p2

    .line 350
    .local v2, start:I
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 352
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bufferIndex:I
    aget-byte v3, p1, p2

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 353
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    if-eqz v3, :cond_3

    .line 355
    invoke-virtual {p0, p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v1

    .local v1, n:I
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v1, v3, :cond_0

    .line 356
    sget-object v3, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    if-lt v3, v6, :cond_0

    .line 357
    sget-object v3, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wordCount * 2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but readParameterWordsWireFormat returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 361
    :cond_0
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int p2, v0, v3

    .line 364
    .end local v0           #bufferIndex:I
    .end local v1           #n:I
    .restart local p2
    :goto_0
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    .line 365
    add-int/lit8 p2, p2, 0x2

    .line 367
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v3, :cond_2

    .line 369
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    move-result v1

    .restart local v1       #n:I
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    if-eq v1, v3, :cond_1

    .line 370
    sget-object v3, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    if-lt v3, v6, :cond_1

    .line 371
    sget-object v3, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but readBytesWireFormat returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 378
    :cond_1
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v3

    .line 381
    .end local v1           #n:I
    :cond_2
    sub-int v3, p2, v2

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    .line 382
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    return v3

    .end local p2
    .restart local v0       #bufferIndex:I
    :cond_3
    move p2, v0

    .end local v0           #bufferIndex:I
    .restart local p2
    goto :goto_0
.end method

.method encode([BI)I
    .locals 8
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 327
    iput p2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    move v7, p2

    .line 329
    .local v7, start:I
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 330
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 331
    add-int/lit8 v6, p2, 0x1

    .end local p2
    .local v6, dstIndex:I
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 332
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    add-int p2, v6, v0

    .line 333
    .end local v6           #dstIndex:I
    .restart local p2
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 334
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    .line 335
    add-int/lit8 v6, p2, 0x1

    .end local p2
    .restart local v6       #dstIndex:I
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 336
    add-int/lit8 p2, v6, 0x1

    .end local v6           #dstIndex:I
    .restart local p2
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    .line 337
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v0

    .line 339
    sub-int v0, p2, v7

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    .line 341
    iget-object v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->digest:Lmeizu_jcifs/smb/SigningDigest;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->digest:Lmeizu_jcifs/smb/SigningDigest;

    iget v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    iget-object v5, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->response:Lmeizu_jcifs/smb/ServerMessageBlock;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lmeizu_jcifs/smb/SigningDigest;->sign([BIILmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 345
    :cond_0
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 441
    instance-of v0, p1, Lmeizu_jcifs/smb/ServerMessageBlock;

    if-eqz v0, :cond_0

    check-cast p1, Lmeizu_jcifs/smb/ServerMessageBlock;

    .end local p1
    iget v0, p1, Lmeizu_jcifs/smb/ServerMessageBlock;->mid:I

    iget v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->mid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->mid:I

    return v0
.end method

.method isResponse()Z
    .locals 2

    .prologue
    .line 408
    iget-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags:B

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract readBytesWireFormat([BI)I
.end method

.method readHeaderWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 397
    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 398
    add-int/lit8 v0, p2, 0x5

    invoke-static {p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->errorCode:I

    .line 399
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags:B

    .line 400
    add-int/lit8 v0, p2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    .line 401
    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->tid:I

    .line 402
    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->pid:I

    .line 403
    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->uid:I

    .line 404
    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x6

    invoke-static {p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->mid:I

    .line 405
    const/16 v0, 0x20

    return v0
.end method

.method abstract readParameterWordsWireFormat([BI)I
.end method

.method readString([BI)Ljava/lang/String;
    .locals 2
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 232
    const/16 v0, 0x100

    iget-boolean v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, v0, v1}, Lmeizu_jcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readString([BIIIZ)Ljava/lang/String;
    .locals 6
    .parameter "src"
    .parameter "srcIndex"
    .parameter "srcEnd"
    .parameter "maxLen"
    .parameter "useUnicode"

    .prologue
    const/16 v4, 0x80

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, len:I
    const/4 v1, 0x0

    .line 274
    .local v1, str:Ljava/lang/String;
    if-eqz p5, :cond_7

    .line 276
    :try_start_0
    iget v5, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v5, p2, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 277
    add-int/lit8 p2, p2, 0x1

    .line 279
    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1

    if-ge v5, p3, :cond_1

    .line 280
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-nez v5, :cond_3

    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    if-nez v5, :cond_3

    .line 289
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #str:Ljava/lang/String;
    .local v2, str:Ljava/lang/String;
    move-object v1, v2

    .line 307
    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v1

    .line 283
    :cond_3
    if-le v0, p4, :cond_6

    .line 284
    sget-object v5, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    sget v5, Lmeizu_jcifs/util/LogStream;->level:I

    if-lez v5, :cond_5

    .line 285
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v4, :cond_4

    add-int/lit8 v4, p4, 0x8

    :cond_4
    invoke-static {v5, p1, p2, v4}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 286
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :catch_0
    move-exception v3

    .line 304
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    sget-object v4, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    sget v4, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 305
    sget-object v4, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    .line 279
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 291
    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-ge p2, p3, :cond_8

    .line 292
    add-int v5, p2, v0

    :try_start_1
    aget-byte v5, p1, v5

    if-nez v5, :cond_9

    .line 301
    :cond_8
    new-instance v2, Ljava/lang/String;

    sget-object v4, Lmeizu_jcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_1

    .line 295
    :cond_9
    if-le v0, p4, :cond_c

    .line 296
    sget-object v5, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    sget v5, Lmeizu_jcifs/util/LogStream;->level:I

    if-lez v5, :cond_b

    .line 297
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v4, :cond_a

    add-int/lit8 v4, p4, 0x8

    :cond_a
    invoke-static {v5, p1, p2, v4}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 298
    :cond_b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method readString([BIIZ)Ljava/lang/String;
    .locals 6
    .parameter "src"
    .parameter "srcIndex"
    .parameter "maxLen"
    .parameter "useUnicode"

    .prologue
    const/16 v4, 0x80

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, len:I
    const/4 v1, 0x0

    .line 238
    .local v1, str:Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 240
    :try_start_0
    iget v5, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v5, p2, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 241
    add-int/lit8 p2, p2, 0x1

    .line 244
    :cond_0
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-nez v5, :cond_1

    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    if-eqz v5, :cond_5

    .line 245
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 246
    if-le v0, p3, :cond_0

    .line 247
    sget-object v5, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    sget v5, Lmeizu_jcifs/util/LogStream;->level:I

    if-lez v5, :cond_3

    .line 248
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v4, :cond_2

    add-int/lit8 v4, p3, 0x8

    :cond_2
    invoke-static {v5, p1, p2, v4}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 249
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :catch_0
    move-exception v3

    .line 265
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    sget-object v4, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    sget v4, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 266
    sget-object v4, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 268
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_4
    :goto_0
    return-object v1

    .line 252
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #str:Ljava/lang/String;
    .local v2, str:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0

    .line 254
    :cond_6
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-eqz v5, :cond_9

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 256
    if-le v0, p3, :cond_6

    .line 257
    sget-object v5, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    sget v5, Lmeizu_jcifs/util/LogStream;->level:I

    if-lez v5, :cond_8

    .line 258
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v4, :cond_7

    add-int/lit8 v4, p3, 0x8

    :cond_7
    invoke-static {v5, p1, p2, v4}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 259
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 262
    :cond_9
    new-instance v2, Ljava/lang/String;

    sget-object v4, Lmeizu_jcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0
.end method

.method readStringLength([BII)I
    .locals 5
    .parameter "src"
    .parameter "srcIndex"
    .parameter "max"

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, len:I
    :goto_0
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    if-eqz v2, :cond_0

    .line 320
    add-int/lit8 v1, v0, 0x1

    .end local v0           #len:I
    .local v1, len:I
    if-le v0, p3, :cond_1

    .line 321
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zero termination not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v1           #len:I
    .restart local v0       #len:I
    :cond_0
    return v0

    .end local v0           #len:I
    .restart local v1       #len:I
    :cond_1
    move v0, v1

    .end local v1           #len:I
    .restart local v0       #len:I
    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    const/16 v0, 0x18

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags:B

    .line 196
    iput v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    .line 197
    iput v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->errorCode:I

    .line 198
    iput-boolean v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->received:Z

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->digest:Lmeizu_jcifs/smb/SigningDigest;

    .line 200
    return-void
.end method

.method stringWireLength(Ljava/lang/String;I)I
    .locals 2
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 311
    .local v0, len:I
    iget-boolean v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 313
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 315
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 445
    iget-byte v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v2, :sswitch_data_0

    .line 519
    const-string v0, "UNKNOWN"

    .line 521
    .local v0, c:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v2, :cond_0

    const-string v1, "0"

    .line 522
    .local v1, str:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",received="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->received:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags:B

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4, v5}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flags2=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    invoke-static {v4, v5}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",signSeq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->signSeq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->tid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->mid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",wordCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",byteCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 447
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #str:Ljava/lang/String;
    :sswitch_0
    const-string v0, "SMB_COM_NEGOTIATE"

    .line 448
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 450
    .end local v0           #c:Ljava/lang/String;
    :sswitch_1
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    .line 451
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 453
    .end local v0           #c:Ljava/lang/String;
    :sswitch_2
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    .line 454
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 456
    .end local v0           #c:Ljava/lang/String;
    :sswitch_3
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    .line 457
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 459
    .end local v0           #c:Ljava/lang/String;
    :sswitch_4
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    .line 460
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 462
    .end local v0           #c:Ljava/lang/String;
    :sswitch_5
    const-string v0, "SMB_COM_TRANSACTION"

    .line 463
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 465
    .end local v0           #c:Ljava/lang/String;
    :sswitch_6
    const-string v0, "SMB_COM_TRANSACTION2"

    .line 466
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 468
    .end local v0           #c:Ljava/lang/String;
    :sswitch_7
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    .line 469
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 471
    .end local v0           #c:Ljava/lang/String;
    :sswitch_8
    const-string v0, "SMB_COM_FIND_CLOSE2"

    .line 472
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 474
    .end local v0           #c:Ljava/lang/String;
    :sswitch_9
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    .line 475
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 477
    .end local v0           #c:Ljava/lang/String;
    :sswitch_a
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    .line 478
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 480
    .end local v0           #c:Ljava/lang/String;
    :sswitch_b
    const-string v0, "SMB_COM_ECHO"

    .line 481
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 483
    .end local v0           #c:Ljava/lang/String;
    :sswitch_c
    const-string v0, "SMB_COM_MOVE"

    .line 484
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 486
    .end local v0           #c:Ljava/lang/String;
    :sswitch_d
    const-string v0, "SMB_COM_RENAME"

    .line 487
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 489
    .end local v0           #c:Ljava/lang/String;
    :sswitch_e
    const-string v0, "SMB_COM_DELETE"

    .line 490
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 492
    .end local v0           #c:Ljava/lang/String;
    :sswitch_f
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    .line 493
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 495
    .end local v0           #c:Ljava/lang/String;
    :sswitch_10
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    .line 496
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 498
    .end local v0           #c:Ljava/lang/String;
    :sswitch_11
    const-string v0, "SMB_COM_OPEN_ANDX"

    .line 499
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 501
    .end local v0           #c:Ljava/lang/String;
    :sswitch_12
    const-string v0, "SMB_COM_READ_ANDX"

    .line 502
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 504
    .end local v0           #c:Ljava/lang/String;
    :sswitch_13
    const-string v0, "SMB_COM_CLOSE"

    .line 505
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 507
    .end local v0           #c:Ljava/lang/String;
    :sswitch_14
    const-string v0, "SMB_COM_WRITE_ANDX"

    .line 508
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 510
    .end local v0           #c:Ljava/lang/String;
    :sswitch_15
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    .line 511
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 513
    .end local v0           #c:Ljava/lang/String;
    :sswitch_16
    const-string v0, "SMB_COM_NT_TRANSACT"

    .line 514
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 516
    .end local v0           #c:Ljava/lang/String;
    :sswitch_17
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    .line 517
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_0

    .line 521
    :cond_0
    iget v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v2}, Lmeizu_jcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        -0x60 -> :sswitch_16
        -0x5f -> :sswitch_17
        -0x5e -> :sswitch_10
        0x0 -> :sswitch_15
        0x1 -> :sswitch_f
        0x4 -> :sswitch_13
        0x6 -> :sswitch_e
        0x7 -> :sswitch_d
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x25 -> :sswitch_5
        0x26 -> :sswitch_7
        0x2a -> :sswitch_c
        0x2b -> :sswitch_b
        0x2d -> :sswitch_11
        0x2e -> :sswitch_12
        0x2f -> :sswitch_14
        0x32 -> :sswitch_6
        0x34 -> :sswitch_8
        0x71 -> :sswitch_9
        0x72 -> :sswitch_0
        0x73 -> :sswitch_1
        0x74 -> :sswitch_a
        0x75 -> :sswitch_2
    .end sparse-switch
.end method

.method abstract writeBytesWireFormat([BI)I
.end method

.method writeHeaderWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 385
    sget-object v0, Lmeizu_jcifs/smb/ServerMessageBlock;->header:[B

    const/4 v1, 0x0

    sget-object v2, Lmeizu_jcifs/smb/ServerMessageBlock;->header:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    add-int/lit8 v0, p2, 0x4

    iget-byte v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    aput-byte v1, p1, v0

    .line 387
    add-int/lit8 v0, p2, 0x9

    iget-byte v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags:B

    aput-byte v1, p1, v0

    .line 388
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x9

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 389
    add-int/lit8 p2, p2, 0x18

    .line 390
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->tid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 391
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->pid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, p1, v2}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 392
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->uid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x4

    invoke-static {v0, v1, p1, v2}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 393
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->mid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x6

    invoke-static {v0, v1, p1, v2}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 394
    const/16 v0, 0x20

    return v0
.end method

.method abstract writeParameterWordsWireFormat([BI)I
.end method

.method writeString(Ljava/lang/String;[BI)I
    .locals 1
    .parameter "str"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 202
    iget-boolean v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result v0

    return v0
.end method

.method writeString(Ljava/lang/String;[BIZ)I
    .locals 7
    .parameter "str"
    .parameter "dst"
    .parameter "dstIndex"
    .parameter "useUnicode"

    .prologue
    .line 205
    move v2, p3

    .line 208
    .local v2, start:I
    if-eqz p4, :cond_2

    .line 210
    :try_start_0
    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v4, p3, v4

    rem-int/lit8 v4, v4, 0x2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 211
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .local v1, dstIndex:I
    const/4 v4, 0x0

    :try_start_1
    aput-byte v4, p2, p3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move p3, v1

    .line 213
    .end local v1           #dstIndex:I
    .restart local p3
    :cond_0
    :try_start_2
    const-string v4, "UTF-16LE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v4, v5, p2, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr p3, v4

    .line 216
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .restart local v1       #dstIndex:I
    const/4 v4, 0x0

    :try_start_3
    aput-byte v4, p2, p3
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 217
    add-int/lit8 p3, v1, 0x1

    .end local v1           #dstIndex:I
    .restart local p3
    const/4 v4, 0x0

    :try_start_4
    aput-byte v4, p2, v1

    .line 229
    :cond_1
    :goto_0
    sub-int v4, p3, v2

    return v4

    .line 219
    :cond_2
    sget-object v4, Lmeizu_jcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 220
    .local v0, b:[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, p2, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    array-length v4, v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/2addr p3, v4

    .line 222
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .restart local v1       #dstIndex:I
    const/4 v4, 0x0

    :try_start_5
    aput-byte v4, p2, p3
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    move p3, v1

    .end local v1           #dstIndex:I
    .restart local p3
    goto :goto_0

    .line 224
    .end local v0           #b:[B
    :catch_0
    move-exception v3

    .line 225
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    :goto_1
    sget-object v4, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    sget v4, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 226
    sget-object v4, Lmeizu_jcifs/smb/ServerMessageBlock;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 224
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    .end local p3
    .restart local v1       #dstIndex:I
    :catch_1
    move-exception v3

    move p3, v1

    .end local v1           #dstIndex:I
    .restart local p3
    goto :goto_1
.end method

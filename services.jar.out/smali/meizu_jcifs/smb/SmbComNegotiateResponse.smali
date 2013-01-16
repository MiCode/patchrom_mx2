.class Lmeizu_jcifs/smb/SmbComNegotiateResponse;
.super Lmeizu_jcifs/smb/ServerMessageBlock;
.source "SmbComNegotiateResponse.java"


# instance fields
.field dialectIndex:I

.field server:Lmeizu_jcifs/smb/SmbTransport$ServerData;


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/SmbTransport$ServerData;)V
    .locals 0
    .parameter "server"

    .prologue
    .line 30
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 31
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    .line 32
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 9
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const v8, 0x8000

    const/16 v7, 0x100

    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 67
    move v1, p2

    .line 69
    .local v1, start:I
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->capabilities:I

    const/high16 v4, -0x8000

    and-int/2addr v3, v4

    if-nez v3, :cond_7

    .line 70
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    new-array v4, v4, [B

    iput-object v4, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    .line 71
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    add-int/2addr p2, v3

    .line 74
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    if-le v3, v4, :cond_6

    .line 75
    const/4 v0, 0x0

    .line 78
    .local v0, len:I
    :try_start_0
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_4

    .line 80
    :cond_0
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    if-nez v3, :cond_1

    add-int v3, p2, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    if-eqz v3, :cond_3

    .line 81
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 82
    if-le v0, v7, :cond_0

    .line 83
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "zero termination not found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 100
    sget-object v3, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 102
    .end local v2           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_0
    add-int/2addr p2, v0

    .line 113
    .end local v0           #len:I
    :goto_1
    sub-int v3, p2, v1

    return v3

    .line 86
    .restart local v0       #len:I
    :cond_3
    :try_start_1
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-16LE"

    invoke-direct {v4, p1, p2, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_4
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    if-eqz v3, :cond_5

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    if-le v0, v7, :cond_4

    .line 92
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "zero termination not found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_5
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lmeizu_jcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v4, p1, p2, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    .end local v0           #len:I
    :cond_6
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    iput-object v4, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_7
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    new-array v4, v6, [B

    iput-object v4, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->guid:[B

    .line 108
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->guid:[B

    invoke-static {p1, p2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    iput-object v4, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_1
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 7
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 42
    move v1, p2

    .line 44
    .local v1, start:I
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    add-int/lit8 p2, p2, 0x2

    .line 45
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    const/16 v5, 0xa

    if-le v2, v5, :cond_0

    .line 46
    sub-int v2, p2, v1

    .line 63
    :goto_0
    return v2

    .line 48
    :cond_0
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bufferIndex:I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    iput v5, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->securityMode:I

    .line 49
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v5, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v5, v5, Lmeizu_jcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v5, v5, 0x1

    iput v5, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->security:I

    .line 50
    iget-object v5, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, v5, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    .line 51
    iget-object v5, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v2, v2, 0x4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, v5, Lmeizu_jcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    .line 52
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v5, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v5, v5, Lmeizu_jcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    :goto_3
    iput-boolean v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    .line 53
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v3

    iput v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    add-int/lit8 p2, v0, 0x2

    .line 54
    .end local v0           #bufferIndex:I
    .restart local p2
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v3

    iput v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    add-int/lit8 p2, p2, 0x2

    .line 55
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v3

    iput v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/lit8 p2, p2, 0x4

    .line 56
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v3

    iput v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    add-int/lit8 p2, p2, 0x4

    .line 57
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v3

    iput v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->sessionKey:I

    add-int/lit8 p2, p2, 0x4

    .line 58
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v3

    iput v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->capabilities:I

    add-int/lit8 p2, p2, 0x4

    .line 59
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->readTime([BI)J

    move-result-wide v3

    iput-wide v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->serverTime:J

    add-int/lit8 p2, p2, 0x8

    .line 60
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v3

    iput v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    add-int/lit8 p2, p2, 0x2

    .line 61
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #bufferIndex:I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    .line 63
    sub-int v2, v0, v1

    move p2, v0

    .end local v0           #bufferIndex:I
    .restart local p2
    goto/16 :goto_0

    .end local p2
    .restart local v0       #bufferIndex:I
    :cond_1
    move v2, v4

    .line 50
    goto :goto_1

    :cond_2
    move v2, v4

    .line 51
    goto :goto_2

    :cond_3
    move v3, v4

    .line 52
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 116
    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNegotiateResponse["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",wordCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",dialectIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",securityMode=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->securityMode:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",security="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Lmeizu_jcifs/smb/SmbTransport$ServerData;->security:I

    if-nez v0, :cond_0

    const-string v0, "share"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",encryptedPasswords="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-boolean v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxMpxCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxNumberVcs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxBufferSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxRawSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sessionKey=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->sessionKey:I

    invoke-static {v2, v4}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",capabilities=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->capabilities:I

    invoke-static {v2, v4}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-wide v3, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->serverTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTimeZone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",encryptionKeyLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",byteCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",oemDomainName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComNegotiateResponse;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "user"

    goto/16 :goto_0
.end method

.method writeBytesWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

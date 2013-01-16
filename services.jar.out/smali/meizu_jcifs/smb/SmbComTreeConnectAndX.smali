.class Lmeizu_jcifs/smb/SmbComTreeConnectAndX;
.super Lmeizu_jcifs/smb/AndXServerMessageBlock;
.source "SmbComTreeConnectAndX.java"


# static fields
.field private static final DISABLE_PLAIN_TEXT_PASSWORDS:Z

.field private static batchLimits:[B


# instance fields
.field private disconnectTid:Z

.field private password:[B

.field private passwordLength:I

.field path:Ljava/lang/String;

.field private service:Ljava/lang/String;

.field private session:Lmeizu_jcifs/smb/SmbSession;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    const-string v1, "meizu_jcifs.smb.client.disablePlainTextPasswords"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmeizu_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    .line 52
    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 59
    const-string v1, "meizu_jcifs.smb.client.TreeConnectAndX.CheckDirectory"

    invoke-static {v1}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    .line 62
    :cond_0
    const-string v1, "meizu_jcifs.smb.client.TreeConnectAndX.CreateDirectory"

    invoke-static {v1}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    .line 65
    :cond_1
    const-string v1, "meizu_jcifs.smb.client.TreeConnectAndX.Delete"

    invoke-static {v1}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    .line 68
    :cond_2
    const-string v1, "meizu_jcifs.smb.client.TreeConnectAndX.DeleteDirectory"

    invoke-static {v1}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    .line 71
    :cond_3
    const-string v1, "meizu_jcifs.smb.client.TreeConnectAndX.OpenAndX"

    invoke-static {v1}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 72
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    .line 74
    :cond_4
    const-string v1, "meizu_jcifs.smb.client.TreeConnectAndX.Rename"

    invoke-static {v1}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 75
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    .line 77
    :cond_5
    const-string v1, "meizu_jcifs.smb.client.TreeConnectAndX.Transaction"

    invoke-static {v1}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 78
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x7

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    .line 80
    :cond_6
    const-string v1, "meizu_jcifs.smb.client.TreeConnectAndX.QueryInformation"

    invoke-static {v1}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 81
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/16 v2, 0x8

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    .line 83
    :cond_7
    return-void

    .line 52
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method constructor <init>(Lmeizu_jcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;Lmeizu_jcifs/smb/ServerMessageBlock;)V
    .locals 1
    .parameter "session"
    .parameter "path"
    .parameter "service"
    .parameter "andx"

    .prologue
    .line 87
    invoke-direct {p0, p4}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>(Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    .line 88
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    .line 89
    iput-object p2, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    .line 91
    const/16 v0, 0x75

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 92
    return-void
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 3
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 95
    and-int/lit16 v0, p1, 0xff

    .line 97
    .local v0, c:I
    sparse-switch v0, :sswitch_data_0

    .line 115
    :goto_0
    return v1

    .line 99
    :sswitch_0
    sget-object v2, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    aget-byte v1, v2, v1

    goto :goto_0

    .line 101
    :sswitch_1
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    goto :goto_0

    .line 103
    :sswitch_2
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    goto :goto_0

    .line 105
    :sswitch_3
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    goto :goto_0

    .line 107
    :sswitch_4
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    goto :goto_0

    .line 109
    :sswitch_5
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    goto :goto_0

    .line 111
    :sswitch_6
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    goto :goto_0

    .line 113
    :sswitch_7
    sget-object v1, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/16 v2, 0x8

    aget-byte v1, v1, v2

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x10 -> :sswitch_0
        0x25 -> :sswitch_6
        0x2d -> :sswitch_4
    .end sparse-switch
.end method

.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 175
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComTreeConnectAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",disconnectTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",passwordLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmeizu_jcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 7
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v3, 0x0

    .line 146
    move v1, p2

    .line 148
    .local v1, start:I
    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v4, v4, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v4, v4, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Lmeizu_jcifs/smb/SmbTransport$ServerData;->security:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v4, v4, Lmeizu_jcifs/smb/SmbSession;->auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v4, v4, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v4, v4, Lmeizu_jcifs/smb/SmbSession;->auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    iget-object v4, v4, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 151
    :cond_0
    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget v5, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    invoke-static {v4, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    add-int/2addr p2, v4

    .line 157
    :goto_0
    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    invoke-virtual {p0, v4, p1, p2}, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v4

    add-int/2addr p2, v4

    .line 159
    :try_start_0
    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v5, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr p2, v4

    .line 164
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    aput-byte v3, p1, p2

    .line 166
    sub-int v3, v0, v1

    move p2, v0

    .end local v0           #dstIndex:I
    .restart local p2
    :goto_1
    return v3

    .line 155
    :cond_1
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v3, p1, p2

    move p2, v0

    .end local v0           #dstIndex:I
    .restart local p2
    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    goto :goto_1
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->security:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v3, v3, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    iget-object v3, v3, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 124
    :cond_0
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-boolean v3, v3, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v4, v4, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v4, v4, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v4, v4, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {v3, v4}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    move-result-object v3

    iput-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->password:[B

    .line 127
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->password:[B

    array-length v3, v3

    iput v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 140
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-boolean v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    if-eqz v3, :cond_4

    :goto_1
    aput-byte v1, p1, p2

    .line 141
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v2, p1, v0

    .line 142
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->writeInt2(J[BI)V

    .line 143
    const/4 v1, 0x4

    return v1

    .line 128
    :cond_1
    sget-boolean v3, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    if-eqz v3, :cond_2

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Plain text passwords are disabled"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_2
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    iget-object v3, v3, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->password:[B

    .line 133
    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    iget-object v3, v3, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->password:[B

    invoke-virtual {p0, v3, v4, v2}, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    goto :goto_0

    .line 137
    :cond_3
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    goto :goto_0

    .end local p2
    .restart local v0       #dstIndex:I
    :cond_4
    move v1, v2

    .line 140
    goto :goto_1
.end method

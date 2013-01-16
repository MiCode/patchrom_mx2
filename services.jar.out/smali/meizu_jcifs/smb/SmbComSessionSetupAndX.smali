.class Lmeizu_jcifs/smb/SmbComSessionSetupAndX;
.super Lmeizu_jcifs/smb/AndXServerMessageBlock;
.source "SmbComSessionSetupAndX.java"


# static fields
.field private static final BATCH_LIMIT:I

.field private static final DISABLE_PLAIN_TEXT_PASSWORDS:Z


# instance fields
.field private accountName:Ljava/lang/String;

.field private blob:[B

.field private capabilities:I

.field cred:Ljava/lang/Object;

.field private lmHash:[B

.field private ntHash:[B

.field private primaryDomain:Ljava/lang/String;

.field session:Lmeizu_jcifs/smb/SmbSession;

.field private sessionKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    const-string v0, "meizu_jcifs.smb.client.SessionSetupAndX.TreeConnectAndX"

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->BATCH_LIMIT:I

    .line 28
    const-string v0, "meizu_jcifs.smb.client.disablePlainTextPasswords"

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    return-void
.end method

.method constructor <init>(Lmeizu_jcifs/smb/SmbSession;Lmeizu_jcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V
    .locals 5
    .parameter "session"
    .parameter "andx"
    .parameter "cred"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-direct {p0, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>(Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 31
    const/4 v2, 0x0

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->blob:[B

    .line 40
    const/16 v2, 0x73

    iput-byte v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 41
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    .line 42
    iput-object p3, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->cred:Ljava/lang/Object;

    .line 44
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport;->sessionKey:I

    iput v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->sessionKey:I

    .line 45
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport;->capabilities:I

    iput v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    .line 47
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->security:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 48
    instance-of v2, p3, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    if-eqz v2, :cond_6

    move-object v0, p3

    .line 49
    check-cast v0, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 51
    .local v0, auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    sget-object v2, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    if-ne v0, v2, :cond_2

    .line 52
    new-array v2, v4, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 53
    new-array v2, v4, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 54
    iget v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    .line 77
    :cond_0
    :goto_0
    iget-object v2, v0, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 78
    iget-boolean v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 80
    :cond_1
    iget-object v2, v0, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    .line 101
    .end local v0           #auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    .end local p3
    :goto_1
    return-void

    .line 55
    .restart local v0       #auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    .restart local p3
    :cond_2
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-boolean v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    if-eqz v2, :cond_3

    .line 56
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {v0, v2}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 57
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {v0, v2}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 59
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length v2, v2

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Null setup prohibited."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_3
    sget-boolean v2, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    if-eqz v2, :cond_4

    .line 63
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Plain text passwords are disabled"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_4
    iget-boolean v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v2, :cond_5

    .line 66
    invoke-virtual {v0}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, password:Ljava/lang/String;
    new-array v2, v4, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 69
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    invoke-virtual {p0, v1, v2, v4}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    goto :goto_0

    .line 72
    .end local v1           #password:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1       #password:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 74
    new-array v2, v4, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 75
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    invoke-virtual {p0, v1, v2, v4}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    goto/16 :goto_0

    .line 81
    .end local v0           #auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    .end local v1           #password:Ljava/lang/String;
    :cond_6
    instance-of v2, p3, [B

    if-eqz v2, :cond_7

    .line 82
    check-cast p3, [B

    .end local p3
    check-cast p3, [B

    iput-object p3, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->blob:[B

    goto/16 :goto_1

    .line 84
    .restart local p3
    :cond_7
    new-instance v2, Lmeizu_jcifs/smb/SmbException;

    const-string v3, "Unsupported credential type"

    invoke-direct {v2, v3}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_8
    iget-object v2, p1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport$ServerData;->security:I

    if-nez v2, :cond_b

    .line 87
    instance-of v2, p3, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    if-eqz v2, :cond_a

    move-object v0, p3

    .line 88
    check-cast v0, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 89
    .restart local v0       #auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    new-array v2, v4, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 90
    new-array v2, v4, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 91
    iget-object v2, v0, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 92
    iget-boolean v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v2, :cond_9

    .line 93
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 94
    :cond_9
    iget-object v2, v0, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    goto/16 :goto_1

    .line 96
    .end local v0           #auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    :cond_a
    new-instance v2, Lmeizu_jcifs/smb/SmbException;

    const-string v3, "Unsupported credential type"

    invoke-direct {v2, v3}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_b
    new-instance v2, Lmeizu_jcifs/smb/SmbException;

    const-string v3, "Unsupported"

    invoke-direct {v2, v3}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 1
    .parameter "command"

    .prologue
    .line 104
    const/16 v0, 0x75

    if-ne p1, v0, :cond_0

    sget v0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->BATCH_LIMIT:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 162
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmbComSessionSetupAndX["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",snd_buf_size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v3, v3, Lmeizu_jcifs/smb/SmbTransport;->snd_buf_size:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",maxMpxCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v3, v3, Lmeizu_jcifs/smb/SmbTransport;->maxMpxCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",VC_NUMBER="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v3, v3, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",sessionKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->sessionKey:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",lmHash.length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",ntHash.length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",accountName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",primaryDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",NATIVE_OS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    sget-object v2, Lmeizu_jcifs/smb/SmbTransport;->NATIVE_OS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",NATIVE_LANMAN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    sget-object v2, Lmeizu_jcifs/smb/SmbTransport;->NATIVE_LANMAN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, result:Ljava/lang/String;
    return-object v0

    .line 162
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length v1, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length v2, v2

    goto :goto_1
.end method

.method writeBytesWireFormat([BI)I
    .locals 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v3, 0x0

    .line 136
    move v0, p2

    .line 138
    .local v0, start:I
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->blob:[B

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->blob:[B

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->blob:[B

    array-length v2, v2

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->blob:[B

    array-length v1, v1

    add-int/2addr p2, v1

    .line 150
    :goto_0
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    sget-object v1, Lmeizu_jcifs/smb/SmbTransport;->NATIVE_OS:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 151
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    sget-object v1, Lmeizu_jcifs/smb/SmbTransport;->NATIVE_LANMAN:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 153
    sub-int v1, p2, v0

    return v1

    .line 142
    :cond_0
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length v2, v2

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length v1, v1

    add-int/2addr p2, v1

    .line 144
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length v2, v2

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length v1, v1

    add-int/2addr p2, v1

    .line 147
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 148
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v4, 0x0

    .line 107
    move v1, p2

    .line 109
    .local v1, start:I
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport;->snd_buf_size:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    .line 110
    add-int/lit8 p2, p2, 0x2

    .line 111
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    iget v2, v2, Lmeizu_jcifs/smb/SmbTransport;->maxMpxCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    .line 112
    add-int/lit8 p2, p2, 0x2

    .line 113
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v2, v2, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    .line 114
    add-int/lit8 p2, p2, 0x2

    .line 115
    iget v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->sessionKey:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeInt4(J[BI)V

    .line 116
    add-int/lit8 p2, p2, 0x4

    .line 117
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->blob:[B

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->blob:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    .line 119
    add-int/lit8 p2, p2, 0x2

    .line 126
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    aput-byte v4, p1, p2

    .line 127
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v4, p1, v0

    .line 128
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v4, p1, p2

    .line 129
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v4, p1, v0

    .line 130
    iget v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeInt4(J[BI)V

    .line 131
    add-int/lit8 p2, p2, 0x4

    .line 133
    sub-int v2, p2, v1

    return v2

    .line 121
    :cond_0
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    .line 122
    add-int/lit8 p2, p2, 0x2

    .line 123
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    .line 124
    add-int/lit8 p2, p2, 0x2

    goto :goto_0
.end method

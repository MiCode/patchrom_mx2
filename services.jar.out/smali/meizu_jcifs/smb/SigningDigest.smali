.class public Lmeizu_jcifs/smb/SigningDigest;
.super Ljava/lang/Object;
.source "SigningDigest.java"

# interfaces
.implements Lmeizu_jcifs/smb/SmbConstants;


# static fields
.field static log:Lmeizu_jcifs/util/LogStream;


# instance fields
.field private bypass:Z

.field private digest:Ljava/security/MessageDigest;

.field private macSigningKey:[B

.field private signSequence:I

.field private updates:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lmeizu_jcifs/util/LogStream;->getInstance()Lmeizu_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/smb/SmbTransport;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)V
    .locals 7
    .parameter "transport"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v6, p0, Lmeizu_jcifs/smb/SigningDigest;->bypass:Z

    .line 47
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lmeizu_jcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    sget v1, Lmeizu_jcifs/smb/SigningDigest;->LM_COMPATIBILITY:I

    packed-switch v1, :pswitch_data_0

    .line 71
    const/16 v1, 0x28

    new-array v1, v1, [B

    iput-object v1, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    .line 72
    iget-object v1, p1, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v2, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 73
    iget-object v1, p1, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, v1}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    const/16 v4, 0x10

    const/16 v5, 0x18

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :goto_0
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    sget v1, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 81
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LM_COMPATIBILITY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lmeizu_jcifs/smb/SigningDigest;->LM_COMPATIBILITY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    iget-object v2, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v3, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v3, v3

    invoke-static {v1, v2, v6, v3}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 84
    :cond_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, ex:Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    sget v1, Lmeizu_jcifs/util/LogStream;->level:I

    if-lez v1, :cond_1

    .line 50
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 51
    :cond_1
    new-instance v1, Lmeizu_jcifs/smb/SmbException;

    const-string v2, "MD5"

    invoke-direct {v1, v2, v0}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 59
    .end local v0           #ex:Ljava/security/NoSuchAlgorithmException;
    :pswitch_0
    const/16 v1, 0x28

    :try_start_2
    new-array v1, v1, [B

    iput-object v1, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    .line 60
    iget-object v1, p1, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v2, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 61
    iget-object v1, p1, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, v1}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    const/16 v4, 0x10

    const/16 v5, 0x18

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Lmeizu_jcifs/smb/SmbException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    .end local v0           #ex:Ljava/lang/Exception;
    :pswitch_1
    const/16 v1, 0x10

    :try_start_3
    new-array v1, v1, [B

    iput-object v1, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    .line 68
    iget-object v1, p1, Lmeizu_jcifs/smb/SmbTransport;->server:Lmeizu_jcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Lmeizu_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v2, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>([BZ)V
    .locals 4
    .parameter "macSigningKey"
    .parameter "bypass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v3, p0, Lmeizu_jcifs/smb/SigningDigest;->bypass:Z

    .line 26
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lmeizu_jcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iput-object p1, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    .line 34
    iput-boolean p2, p0, Lmeizu_jcifs/smb/SigningDigest;->bypass:Z

    .line 35
    iput v3, p0, Lmeizu_jcifs/smb/SigningDigest;->updates:I

    .line 36
    iput v3, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    .line 38
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    sget v1, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 39
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    const-string v2, "macSigningKey:"

    invoke-virtual {v1, v2}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    array-length v2, p1

    invoke-static {v1, p1, v3, v2}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 42
    :cond_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, ex:Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    sget v1, Lmeizu_jcifs/util/LogStream;->level:I

    if-lez v1, :cond_1

    .line 29
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 30
    :cond_1
    new-instance v1, Lmeizu_jcifs/smb/SmbException;

    const-string v2, "MD5"

    invoke-direct {v1, v2, v0}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public digest()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Lmeizu_jcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 103
    .local v0, b:[B
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    sget v1, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 104
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    const-string v2, "digest: "

    invoke-virtual {v1, v2}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    array-length v2, v0

    invoke-static {v1, v0, v3, v2}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 106
    sget-object v1, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v1}, Lmeizu_jcifs/util/LogStream;->flush()V

    .line 108
    :cond_0
    iput v3, p0, Lmeizu_jcifs/smb/SigningDigest;->updates:I

    .line 110
    return-object v0
.end method

.method sign([BIILmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "request"
    .parameter "response"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 125
    iget v3, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    iput v3, p4, Lmeizu_jcifs/smb/ServerMessageBlock;->signSeq:I

    .line 126
    if-eqz p5, :cond_0

    .line 127
    iget v3, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p5, Lmeizu_jcifs/smb/ServerMessageBlock;->signSeq:I

    .line 128
    iput-boolean v4, p5, Lmeizu_jcifs/smb/ServerMessageBlock;->verifyFailed:Z

    .line 132
    :cond_0
    :try_start_0
    iget-object v3, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v5, v5

    invoke-virtual {p0, v3, v4, v5}, Lmeizu_jcifs/smb/SigningDigest;->update([BII)V

    .line 133
    add-int/lit8 v2, p2, 0xe

    .line 134
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_1

    add-int v3, v2, v1

    const/4 v4, 0x0

    aput-byte v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget v3, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v2}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lmeizu_jcifs/smb/SigningDigest;->update([BII)V

    .line 137
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SigningDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v3, v4, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-boolean v3, p0, Lmeizu_jcifs/smb/SigningDigest;->bypass:Z

    if-eqz v3, :cond_2

    .line 139
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmeizu_jcifs/smb/SigningDigest;->bypass:Z

    .line 140
    const-string v3, "BSRSPYL "

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v3, v4, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_2
    iget v3, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    .line 148
    .end local v1           #i:I
    .end local v2           #index:I
    :goto_1
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    if-lez v3, :cond_3

    .line 144
    sget-object v3, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :cond_3
    iget v3, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget v4, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lmeizu_jcifs/smb/SigningDigest;->signSequence:I

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LM_COMPATIBILITY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmeizu_jcifs/smb/SigningDigest;->LM_COMPATIBILITY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MacSigningKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update([BII)V
    .locals 3
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 87
    sget-object v0, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    sget v0, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 88
    sget-object v0, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SigningDigest;->updates:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    const/16 v1, 0x100

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 90
    sget-object v0, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v0}, Lmeizu_jcifs/util/LogStream;->flush()V

    .line 92
    :cond_0
    if-nez p3, :cond_1

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lmeizu_jcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 96
    iget v0, p0, Lmeizu_jcifs/smb/SigningDigest;->updates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmeizu_jcifs/smb/SigningDigest;->updates:I

    goto :goto_0
.end method

.method verify([BILmeizu_jcifs/smb/ServerMessageBlock;)Z
    .locals 11
    .parameter "data"
    .parameter "offset"
    .parameter "response"

    .prologue
    const/16 v10, 0x8

    const/4 v6, 0x0

    .line 159
    iget-object v7, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v8, p0, Lmeizu_jcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v8, v8

    invoke-virtual {p0, v7, v6, v8}, Lmeizu_jcifs/smb/SigningDigest;->update([BII)V

    .line 160
    move v1, p2

    .line 161
    .local v1, index:I
    const/16 v7, 0xe

    invoke-virtual {p0, p1, v1, v7}, Lmeizu_jcifs/smb/SigningDigest;->update([BII)V

    .line 162
    add-int/lit8 v1, v1, 0xe

    .line 163
    new-array v4, v10, [B

    .line 164
    .local v4, sequence:[B
    iget v7, p3, Lmeizu_jcifs/smb/ServerMessageBlock;->signSeq:I

    int-to-long v7, v7

    invoke-static {v7, v8, v4, v6}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 165
    array-length v7, v4

    invoke-virtual {p0, v4, v6, v7}, Lmeizu_jcifs/smb/SigningDigest;->update([BII)V

    .line 166
    add-int/lit8 v1, v1, 0x8

    .line 167
    iget-byte v7, p3, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_1

    move-object v3, p3

    .line 170
    check-cast v3, Lmeizu_jcifs/smb/SmbComReadAndXResponse;

    .line 171
    .local v3, raxr:Lmeizu_jcifs/smb/SmbComReadAndXResponse;
    iget v7, p3, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    iget v8, v3, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataLength:I

    sub-int v2, v7, v8

    .line 172
    .local v2, length:I
    add-int/lit8 v7, v2, -0xe

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {p0, p1, v1, v7}, Lmeizu_jcifs/smb/SigningDigest;->update([BII)V

    .line 173
    iget-object v7, v3, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v8, v3, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->off:I

    iget v9, v3, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-virtual {p0, v7, v8, v9}, Lmeizu_jcifs/smb/SigningDigest;->update([BII)V

    .line 177
    .end local v2           #length:I
    .end local v3           #raxr:Lmeizu_jcifs/smb/SmbComReadAndXResponse;
    :goto_0
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SigningDigest;->digest()[B

    move-result-object v5

    .line 178
    .local v5, signature:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_3

    .line 179
    aget-byte v7, v5, v0

    add-int/lit8 v8, p2, 0xe

    add-int/2addr v8, v0

    aget-byte v8, p1, v8

    if-eq v7, v8, :cond_2

    .line 180
    sget-object v7, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    sget v7, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 181
    sget-object v7, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    const-string v8, "signature verification failure"

    invoke-virtual {v7, v8}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 182
    sget-object v7, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    invoke-static {v7, v5, v6, v10}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 183
    sget-object v6, Lmeizu_jcifs/smb/SigningDigest;->log:Lmeizu_jcifs/util/LogStream;

    add-int/lit8 v7, p2, 0xe

    invoke-static {v6, p1, v7, v10}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 186
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p3, Lmeizu_jcifs/smb/ServerMessageBlock;->verifyFailed:Z

    .line 190
    :goto_2
    return v6

    .line 175
    .end local v0           #i:I
    .end local v5           #signature:[B
    :cond_1
    iget v7, p3, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    add-int/lit8 v7, v7, -0xe

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {p0, p1, v1, v7}, Lmeizu_jcifs/smb/SigningDigest;->update([BII)V

    goto :goto_0

    .line 178
    .restart local v0       #i:I
    .restart local v5       #signature:[B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_3
    iput-boolean v6, p3, Lmeizu_jcifs/smb/ServerMessageBlock;->verifyFailed:Z

    goto :goto_2
.end method

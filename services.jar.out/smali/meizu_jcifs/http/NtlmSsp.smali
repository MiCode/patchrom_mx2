.class public Lmeizu_jcifs/http/NtlmSsp;
.super Ljava/lang/Object;
.source "NtlmSsp.java"

# interfaces
.implements Lmeizu_jcifs/ntlmssp/NtlmFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    .locals 12
    .parameter "req"
    .parameter "resp"
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/4 v11, 0x0

    .line 84
    const-string v1, "Authorization"

    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, msg:Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v1, "NTLM "

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmeizu_jcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 87
    .local v7, src:[B
    aget-byte v1, v7, v3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 88
    new-instance v8, Lmeizu_jcifs/ntlmssp/Type1Message;

    invoke-direct {v8, v7}, Lmeizu_jcifs/ntlmssp/Type1Message;-><init>([B)V

    .line 89
    .local v8, type1:Lmeizu_jcifs/ntlmssp/Type1Message;
    new-instance v9, Lmeizu_jcifs/ntlmssp/Type2Message;

    invoke-direct {v9, v8, p2, v0}, Lmeizu_jcifs/ntlmssp/Type2Message;-><init>(Lmeizu_jcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    .line 90
    .local v9, type2:Lmeizu_jcifs/ntlmssp/Type2Message;
    invoke-virtual {v9}, Lmeizu_jcifs/ntlmssp/Type2Message;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lmeizu_jcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 91
    const-string v1, "WWW-Authenticate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NTLM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v7           #src:[B
    .end local v8           #type1:Lmeizu_jcifs/ntlmssp/Type1Message;
    .end local v9           #type2:Lmeizu_jcifs/ntlmssp/Type2Message;
    :cond_0
    :goto_0
    const/16 v1, 0x191

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 105
    invoke-interface {p1, v11}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 106
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 107
    :goto_1
    return-object v0

    .line 92
    .restart local v7       #src:[B
    :cond_1
    aget-byte v1, v7, v3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 93
    new-instance v10, Lmeizu_jcifs/ntlmssp/Type3Message;

    invoke-direct {v10, v7}, Lmeizu_jcifs/ntlmssp/Type3Message;-><init>([B)V

    .line 94
    .local v10, type3:Lmeizu_jcifs/ntlmssp/Type3Message;
    invoke-virtual {v10}, Lmeizu_jcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v4

    .line 95
    .local v4, lmResponse:[B
    if-nez v4, :cond_2

    new-array v4, v11, [B

    .line 96
    :cond_2
    invoke-virtual {v10}, Lmeizu_jcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v5

    .line 97
    .local v5, ntResponse:[B
    if-nez v5, :cond_3

    new-array v5, v11, [B

    .line 98
    :cond_3
    new-instance v0, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v10}, Lmeizu_jcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lmeizu_jcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V

    goto :goto_1

    .line 102
    .end local v4           #lmResponse:[B
    .end local v5           #ntResponse:[B
    .end local v7           #src:[B
    .end local v10           #type3:Lmeizu_jcifs/ntlmssp/Type3Message;
    :cond_4
    const-string v1, "WWW-Authenticate"

    const-string v2, "NTLM"

    invoke-interface {p1, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public doAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    .locals 1
    .parameter "req"
    .parameter "resp"
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p1, p2, p3}, Lmeizu_jcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    return-object v0
.end method

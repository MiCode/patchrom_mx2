.class public abstract Lmeizu_jcifs/http/NtlmServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "NtlmServlet.java"


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 4
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->init(Ljavax/servlet/ServletConfig;)V

    .line 79
    const-string v2, "meizu_jcifs.smb.client.soTimeout"

    const-string v3, "300000"

    invoke-static {v2, v3}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    const-string v2, "meizu_jcifs.netbios.cachePolicy"

    const-string v3, "600"

    invoke-static {v2, v3}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    invoke-interface {p1}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 84
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, name:Ljava/lang/String;
    const-string v2, "meizu_jcifs."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-interface {p1, v1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    const-string v2, "meizu_jcifs.smb.client.domain"

    invoke-static {v2}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    .line 91
    const-string v2, "meizu_jcifs.http.domainController"

    invoke-static {v2}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lmeizu_jcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 93
    iget-object v2, p0, Lmeizu_jcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    iput-object v2, p0, Lmeizu_jcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    .line 94
    const-string v2, "meizu_jcifs.http.loadBalance"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmeizu_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lmeizu_jcifs/http/NtlmServlet;->loadBalance:Z

    .line 96
    :cond_2
    const-string v2, "meizu_jcifs.http.enableBasic"

    invoke-static {v2}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lmeizu_jcifs/http/NtlmServlet;->enableBasic:Z

    .line 98
    const-string v2, "meizu_jcifs.http.insecureBasic"

    invoke-static {v2}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lmeizu_jcifs/http/NtlmServlet;->insecureBasic:Z

    .line 100
    const-string v2, "meizu_jcifs.http.basicRealm"

    invoke-static {v2}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lmeizu_jcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, "jCIFS"

    iput-object v2, p0, Lmeizu_jcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    .line 102
    :cond_3
    return-void
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 17
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lmeizu_jcifs/http/NtlmServlet;->enableBasic:Z

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lmeizu_jcifs/http/NtlmServlet;->insecureBasic:Z

    if-nez v14, :cond_0

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_0
    const/4 v9, 0x1

    .line 109
    .local v9, offerBasic:Z
    :goto_0
    const-string v14, "Authorization"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, msg:Ljava/lang/String;
    if-eqz v7, :cond_d

    const-string v14, "NTLM "

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    if-eqz v9, :cond_d

    const-string v14, "Basic "

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lmeizu_jcifs/http/NtlmServlet;->loadBalance:Z

    if-eqz v14, :cond_3

    .line 113
    new-instance v4, Lmeizu_jcifs/UniAddress;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu_jcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const/16 v15, 0x1c

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v14

    invoke-direct {v4, v14}, Lmeizu_jcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    .line 118
    .local v4, dc:Lmeizu_jcifs/UniAddress;
    :goto_1
    const-string v14, "NTLM "

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 119
    invoke-static {v4}, Lmeizu_jcifs/smb/SmbSession;->getChallenge(Lmeizu_jcifs/UniAddress;)[B

    move-result-object v3

    .line 120
    .local v3, challenge:[B
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lmeizu_jcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    move-result-object v8

    .line 121
    .local v8, ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    if-nez v8, :cond_7

    .line 167
    .end local v3           #challenge:[B
    .end local v4           #dc:Lmeizu_jcifs/UniAddress;
    .end local v8           #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    :goto_2
    return-void

    .line 107
    .end local v7           #msg:Ljava/lang/String;
    .end local v9           #offerBasic:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 115
    .restart local v7       #msg:Ljava/lang/String;
    .restart local v9       #offerBasic:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu_jcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lmeizu_jcifs/UniAddress;->getByName(Ljava/lang/String;Z)Lmeizu_jcifs/UniAddress;

    move-result-object v4

    .restart local v4       #dc:Lmeizu_jcifs/UniAddress;
    goto :goto_1

    .line 123
    :cond_4
    new-instance v2, Ljava/lang/String;

    const/4 v14, 0x6

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmeizu_jcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v14

    const-string v15, "US-ASCII"

    invoke-direct {v2, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 125
    .local v2, auth:Ljava/lang/String;
    const/16 v14, 0x3a

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 126
    .local v6, index:I
    const/4 v14, -0x1

    if-eq v6, v14, :cond_9

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 127
    .local v13, user:Ljava/lang/String;
    :goto_3
    const/4 v14, -0x1

    if-eq v6, v14, :cond_a

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, password:Ljava/lang/String;
    :goto_4
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 130
    const/4 v14, -0x1

    if-ne v6, v14, :cond_5

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 131
    :cond_5
    const/4 v14, -0x1

    if-eq v6, v14, :cond_b

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, domain:Ljava/lang/String;
    :goto_5
    const/4 v14, -0x1

    if-eq v6, v14, :cond_6

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 134
    :cond_6
    new-instance v8, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v8, v5, v13, v10}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v2           #auth:Ljava/lang/String;
    .end local v5           #domain:Ljava/lang/String;
    .end local v6           #index:I
    .end local v10           #password:Ljava/lang/String;
    .end local v13           #user:Ljava/lang/String;
    .restart local v8       #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    :cond_7
    :try_start_0
    invoke-static {v4, v8}, Lmeizu_jcifs/smb/SmbSession;->logon(Lmeizu_jcifs/UniAddress;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v12

    .line 150
    .local v12, ssn:Ljavax/servlet/http/HttpSession;
    const-string v14, "NtlmHttpAuth"

    invoke-interface {v12, v14, v8}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v14, "ntlmdomain"

    invoke-virtual {v8}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string v14, "ntlmuser"

    invoke-virtual {v8}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    .end local v4           #dc:Lmeizu_jcifs/UniAddress;
    .end local v8           #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    :cond_8
    invoke-super/range {p0 .. p2}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    .end local v12           #ssn:Ljavax/servlet/http/HttpSession;
    .restart local v2       #auth:Ljava/lang/String;
    .restart local v4       #dc:Lmeizu_jcifs/UniAddress;
    .restart local v6       #index:I
    :cond_9
    move-object v13, v2

    .line 126
    goto :goto_3

    .line 127
    .restart local v13       #user:Ljava/lang/String;
    :cond_a
    const-string v10, ""

    goto :goto_4

    .line 131
    .restart local v10       #password:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lmeizu_jcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    goto :goto_5

    .line 138
    .end local v2           #auth:Ljava/lang/String;
    .end local v6           #index:I
    .end local v10           #password:Ljava/lang/String;
    .end local v13           #user:Ljava/lang/String;
    .restart local v8       #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    :catch_0
    move-exception v11

    .line 139
    .local v11, sae:Lmeizu_jcifs/smb/SmbAuthException;
    const-string v14, "WWW-Authenticate"

    const-string v15, "NTLM"

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz v9, :cond_c

    .line 141
    const-string v14, "WWW-Authenticate"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Basic realm=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu_jcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_c
    const-string v14, "Connection"

    const-string v15, "close"

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/16 v14, 0x191

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 146
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    goto/16 :goto_2

    .line 154
    .end local v4           #dc:Lmeizu_jcifs/UniAddress;
    .end local v8           #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    .end local v11           #sae:Lmeizu_jcifs/smb/SmbAuthException;
    :cond_d
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v12

    .line 155
    .restart local v12       #ssn:Ljavax/servlet/http/HttpSession;
    if-eqz v12, :cond_e

    const-string v14, "NtlmHttpAuth"

    invoke-interface {v12, v14}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_8

    .line 156
    :cond_e
    const-string v14, "WWW-Authenticate"

    const-string v15, "NTLM"

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz v9, :cond_f

    .line 158
    const-string v14, "WWW-Authenticate"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Basic realm=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu_jcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_f
    const/16 v14, 0x191

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 162
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    goto/16 :goto_2
.end method

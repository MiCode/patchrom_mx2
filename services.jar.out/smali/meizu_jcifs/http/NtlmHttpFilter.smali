.class public Lmeizu_jcifs/http/NtlmHttpFilter;
.super Ljava/lang/Object;
.source "NtlmHttpFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# static fields
.field private static log:Lmeizu_jcifs/util/LogStream;


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lmeizu_jcifs/util/LogStream;->getInstance()Lmeizu_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/http/NtlmHttpFilter;->log:Lmeizu_jcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 4
    .parameter "request"
    .parameter "response"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 117
    move-object v1, p1

    check-cast v1, Ljavax/servlet/http/HttpServletRequest;

    .local v1, req:Ljavax/servlet/http/HttpServletRequest;
    move-object v2, p2

    .line 118
    check-cast v2, Ljavax/servlet/http/HttpServletResponse;

    .line 121
    .local v2, resp:Ljavax/servlet/http/HttpServletResponse;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmeizu_jcifs/http/NtlmHttpFilter;->negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    .local v0, ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v3, Lmeizu_jcifs/http/NtlmHttpServletRequest;

    invoke-direct {v3, v1, v0}, Lmeizu_jcifs/http/NtlmHttpServletRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/security/Principal;)V

    invoke-interface {p3, v3, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0
.end method

.method public getFilterConfig()Ljavax/servlet/FilterConfig;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 6
    .parameter "filterConfig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 65
    const-string v3, "meizu_jcifs.smb.client.soTimeout"

    const-string v4, "1800000"

    invoke-static {v3, v4}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v3, "meizu_jcifs.netbios.cachePolicy"

    const-string v4, "1200"

    invoke-static {v3, v4}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v3, "meizu_jcifs.smb.lmCompatibility"

    const-string v4, "0"

    invoke-static {v3, v4}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    const-string v3, "meizu_jcifs.smb.client.useExtendedSecurity"

    const-string v4, "false"

    invoke-static {v3, v4}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 76
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    .local v2, name:Ljava/lang/String;
    const-string v3, "meizu_jcifs."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    const-string v3, "meizu_jcifs.smb.client.domain"

    invoke-static {v3}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    .line 83
    const-string v3, "meizu_jcifs.http.domainController"

    invoke-static {v3}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 85
    iget-object v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    iput-object v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    .line 86
    const-string v3, "meizu_jcifs.http.loadBalance"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lmeizu_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->loadBalance:Z

    .line 88
    :cond_2
    const-string v3, "meizu_jcifs.http.enableBasic"

    invoke-static {v3}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->enableBasic:Z

    .line 90
    const-string v3, "meizu_jcifs.http.insecureBasic"

    invoke-static {v3}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->insecureBasic:Z

    .line 92
    const-string v3, "meizu_jcifs.http.basicRealm"

    invoke-static {v3}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "jCIFS"

    iput-object v3, p0, Lmeizu_jcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    .line 95
    :cond_3
    const-string v3, "meizu_jcifs.util.loglevel"

    invoke-static {v3, v5}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, level:I
    if-eq v1, v5, :cond_4

    .line 96
    invoke-static {v1}, Lmeizu_jcifs/util/LogStream;->setLevel(I)V

    .line 98
    :cond_4
    sget-object v3, Lmeizu_jcifs/http/NtlmHttpFilter;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_5

    .line 100
    :try_start_0
    sget-object v3, Lmeizu_jcifs/http/NtlmHttpFilter;->log:Lmeizu_jcifs/util/LogStream;

    const-string v4, "JCIFS PROPERTIES"

    invoke-static {v3, v4}, Lmeizu_jcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_5
    :goto_1
    return-void

    .line 101
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    .locals 19
    .parameter "req"
    .parameter "resp"
    .parameter "skipAuthentication"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v9, 0x0

    .line 145
    .local v9, ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    const-string v15, "Authorization"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmeizu_jcifs/http/NtlmHttpFilter;->enableBasic:Z

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmeizu_jcifs/http/NtlmHttpFilter;->insecureBasic:Z

    if-nez v15, :cond_0

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 148
    .local v10, offerBasic:Z
    :goto_0
    if-eqz v8, :cond_11

    const-string v15, "NTLM "

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    if-eqz v10, :cond_11

    const-string v15, "Basic "

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 150
    :cond_1
    const-string v15, "NTLM "

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 151
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v13

    .line 154
    .local v13, ssn:Ljavax/servlet/http/HttpSession;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmeizu_jcifs/http/NtlmHttpFilter;->loadBalance:Z

    if-eqz v15, :cond_4

    .line 155
    const-string v15, "NtlmHttpChal"

    invoke-interface {v13, v15}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu_jcifs/smb/NtlmChallenge;

    .line 156
    .local v3, chal:Lmeizu_jcifs/smb/NtlmChallenge;
    if-nez v3, :cond_2

    .line 157
    invoke-static {}, Lmeizu_jcifs/smb/SmbSession;->getChallengeForDomain()Lmeizu_jcifs/smb/NtlmChallenge;

    move-result-object v3

    .line 158
    const-string v15, "NtlmHttpChal"

    invoke-interface {v13, v15, v3}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_2
    iget-object v5, v3, Lmeizu_jcifs/smb/NtlmChallenge;->dc:Lmeizu_jcifs/UniAddress;

    .line 161
    .local v5, dc:Lmeizu_jcifs/UniAddress;
    iget-object v4, v3, Lmeizu_jcifs/smb/NtlmChallenge;->challenge:[B

    .line 167
    .end local v3           #chal:Lmeizu_jcifs/smb/NtlmChallenge;
    .local v4, challenge:[B
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lmeizu_jcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    move-result-object v9

    if-nez v9, :cond_5

    .line 168
    const/4 v15, 0x0

    .line 239
    .end local v4           #challenge:[B
    .end local v5           #dc:Lmeizu_jcifs/UniAddress;
    .end local v13           #ssn:Ljavax/servlet/http/HttpSession;
    :goto_2
    return-object v15

    .line 146
    .end local v10           #offerBasic:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 163
    .restart local v10       #offerBasic:Z
    .restart local v13       #ssn:Ljavax/servlet/http/HttpSession;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lmeizu_jcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lmeizu_jcifs/UniAddress;->getByName(Ljava/lang/String;Z)Lmeizu_jcifs/UniAddress;

    move-result-object v5

    .line 164
    .restart local v5       #dc:Lmeizu_jcifs/UniAddress;
    invoke-static {v5}, Lmeizu_jcifs/smb/SmbSession;->getChallenge(Lmeizu_jcifs/UniAddress;)[B

    move-result-object v4

    .restart local v4       #challenge:[B
    goto :goto_1

    .line 171
    :cond_5
    const-string v15, "NtlmHttpChal"

    invoke-interface {v13, v15}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 189
    .end local v4           #challenge:[B
    .end local v13           #ssn:Ljavax/servlet/http/HttpSession;
    :goto_3
    :try_start_0
    invoke-static {v5, v9}, Lmeizu_jcifs/smb/SmbSession;->logon(Lmeizu_jcifs/UniAddress;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)V

    .line 191
    sget-object v15, Lmeizu_jcifs/http/NtlmHttpFilter;->log:Lmeizu_jcifs/util/LogStream;

    sget v15, Lmeizu_jcifs/util/LogStream;->level:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 192
    sget-object v15, Lmeizu_jcifs/http/NtlmHttpFilter;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NtlmHttpFilter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " successfully authenticated against "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v15

    const-string v16, "NtlmHttpAuth"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v9}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v5           #dc:Lmeizu_jcifs/UniAddress;
    :cond_7
    move-object v15, v9

    .line 239
    goto :goto_2

    .line 173
    :cond_8
    new-instance v2, Ljava/lang/String;

    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmeizu_jcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v15

    const-string v16, "US-ASCII"

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 175
    .local v2, auth:Ljava/lang/String;
    const/16 v15, 0x3a

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 176
    .local v7, index:I
    const/4 v15, -0x1

    if-eq v7, v15, :cond_b

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 177
    .local v14, user:Ljava/lang/String;
    :goto_4
    const/4 v15, -0x1

    if-eq v7, v15, :cond_c

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, password:Ljava/lang/String;
    :goto_5
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 180
    const/4 v15, -0x1

    if-ne v7, v15, :cond_9

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 181
    :cond_9
    const/4 v15, -0x1

    if-eq v7, v15, :cond_d

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, domain:Ljava/lang/String;
    :goto_6
    const/4 v15, -0x1

    if-eq v7, v15, :cond_a

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 184
    :cond_a
    new-instance v9, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .end local v9           #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    invoke-direct {v9, v6, v14, v11}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .restart local v9       #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmeizu_jcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lmeizu_jcifs/UniAddress;->getByName(Ljava/lang/String;Z)Lmeizu_jcifs/UniAddress;

    move-result-object v5

    .restart local v5       #dc:Lmeizu_jcifs/UniAddress;
    goto/16 :goto_3

    .end local v5           #dc:Lmeizu_jcifs/UniAddress;
    .end local v6           #domain:Ljava/lang/String;
    .end local v11           #password:Ljava/lang/String;
    .end local v14           #user:Ljava/lang/String;
    :cond_b
    move-object v14, v2

    .line 176
    goto :goto_4

    .line 177
    .restart local v14       #user:Ljava/lang/String;
    :cond_c
    const-string v11, ""

    goto :goto_5

    .line 181
    .restart local v11       #password:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lmeizu_jcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    goto :goto_6

    .line 195
    .end local v2           #auth:Ljava/lang/String;
    .end local v7           #index:I
    .end local v11           #password:Ljava/lang/String;
    .end local v14           #user:Ljava/lang/String;
    .restart local v5       #dc:Lmeizu_jcifs/UniAddress;
    :catch_0
    move-exception v12

    .line 196
    .local v12, sae:Lmeizu_jcifs/smb/SmbAuthException;
    sget-object v15, Lmeizu_jcifs/http/NtlmHttpFilter;->log:Lmeizu_jcifs/util/LogStream;

    sget v15, Lmeizu_jcifs/util/LogStream;->level:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_e

    .line 197
    sget-object v15, Lmeizu_jcifs/http/NtlmHttpFilter;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NtlmHttpFilter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Lmeizu_jcifs/smb/SmbAuthException;->getNtStatus()I

    move-result v17

    const/16 v18, 0x8

    invoke-static/range {v17 .. v18}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 201
    :cond_e
    invoke-virtual {v12}, Lmeizu_jcifs/smb/SmbAuthException;->getNtStatus()I

    move-result v15

    const v16, -0x3ffffffb

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 205
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v13

    .line 206
    .restart local v13       #ssn:Ljavax/servlet/http/HttpSession;
    if-eqz v13, :cond_f

    .line 207
    const-string v15, "NtlmHttpAuth"

    invoke-interface {v13, v15}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 210
    .end local v13           #ssn:Ljavax/servlet/http/HttpSession;
    :cond_f
    const-string v15, "WWW-Authenticate"

    const-string v16, "NTLM"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-eqz v10, :cond_10

    .line 212
    const-string v15, "WWW-Authenticate"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Basic realm=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu_jcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_10
    const/16 v15, 0x191

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 216
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 217
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 218
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 222
    .end local v5           #dc:Lmeizu_jcifs/UniAddress;
    .end local v12           #sae:Lmeizu_jcifs/smb/SmbAuthException;
    :cond_11
    if-nez p3, :cond_7

    .line 223
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v13

    .line 224
    .restart local v13       #ssn:Ljavax/servlet/http/HttpSession;
    if-eqz v13, :cond_12

    const-string v15, "NtlmHttpAuth"

    invoke-interface {v13, v15}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    check-cast v9, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .restart local v9       #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    if-nez v9, :cond_7

    .line 226
    :cond_12
    const-string v15, "WWW-Authenticate"

    const-string v16, "NTLM"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz v10, :cond_13

    .line 228
    const-string v15, "WWW-Authenticate"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Basic realm=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu_jcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_13
    const/16 v15, 0x191

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 232
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 233
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 234
    const/4 v15, 0x0

    goto/16 :goto_2
.end method

.method public setFilterConfig(Ljavax/servlet/FilterConfig;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0, p1}, Lmeizu_jcifs/http/NtlmHttpFilter;->init(Ljavax/servlet/FilterConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/meizu/util/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createInvalidCertificationAcceptingSSLSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v3, Lcom/meizu/util/Connectivity$1;

    invoke-direct {v3}, Lcom/meizu/util/Connectivity$1;-><init>()V

    .line 33
    .local v3, trustManager:Ljavax/net/ssl/X509TrustManager;
    new-instance v4, Lcom/meizu/util/Connectivity$2;

    invoke-direct {v4}, Lcom/meizu/util/Connectivity$2;-><init>()V

    .line 39
    .local v4, verifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    const/4 v2, 0x0

    .line 41
    .local v2, sCtx:Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 42
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, factory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    if-eqz v2, :cond_0

    .line 50
    new-instance v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .end local v1           #factory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 51
    .restart local v1       #factory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-virtual {v1, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 53
    .end local v1           #factory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_0
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 45
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, e:Ljava/security/KeyManagementException;
    goto :goto_0
.end method

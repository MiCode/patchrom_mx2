.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.super Landroid/net/sip/ISipSession$Stub;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipSessionImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
    }
.end annotation


# instance fields
.field mAuthenticationRetryCount:I

.field mClientTransaction:Ljavax/sip/ClientTransaction;

.field mContext:Landroid/content/Context;

.field mDialog:Ljavax/sip/Dialog;

.field mInCall:Z

.field mInviteReceived:Ljavax/sip/RequestEvent;

.field private mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

.field private mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field mPeerProfile:Landroid/net/sip/SipProfile;

.field mPeerSessionDescription:Ljava/lang/String;

.field mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field mRPort:I

.field mReRegisterFlag:Z

.field mRegistered:Z

.field mServerTransaction:Ljavax/sip/ServerTransaction;

.field mState:I

.field mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 770
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {p0}, Landroid/net/sip/ISipSession$Stub;-><init>()V

    .line 708
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 709
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 725
    iput-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mContext:Landroid/content/Context;

    .line 728
    iput-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRegistered:Z

    .line 771
    invoke-virtual {p0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 772
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 706
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 706
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onMessageFailed(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 706
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onSubscribeFailed(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 706
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    return-void
.end method

.method private cancelSessionTimer()V
    .locals 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    if-eqz v0, :cond_0

    .line 1811
    const-string v0, "Interval"

    const-string v1, "cancelSessionTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->cancel()V

    .line 1813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1815
    :cond_0
    return-void
.end method

.method private createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 1819
    const-string v0, "%s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljavax/sip/message/Response;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 1445
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, realm:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 1447
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCommandAsync(Ljava/util/EventObject;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 860
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V

    const-string v2, "SipSessionAsyncCmdThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 889
    return-void
.end method

.method private enableKeepAlive()V
    .locals 5

    .prologue
    .line 1824
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_0

    .line 1825
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 1830
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :goto_1
    return-void

    .line 1827
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    goto :goto_0

    .line 1832
    :catch_0
    move-exception v0

    .line 1833
    .local v0, e:Ljavax/sip/SipException;
    const-string v1, "SipSession"

    const-string v2, "keepalive cannot be enabled; ignored"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1834
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    goto :goto_1
.end method

.method private endCallNormally()V
    .locals 1

    .prologue
    .line 1846
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1847
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 1848
    return-void
.end method

.method private endCallOnBusy()V
    .locals 1

    .prologue
    .line 1856
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1857
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallBusy(Landroid/net/sip/ISipSession;)V

    .line 1858
    return-void
.end method

.method private endCallOnError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1851
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1852
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1853
    return-void
.end method

.method private establishCall()V
    .locals 2

    .prologue
    .line 1838
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 1840
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1841
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 1842
    return-void
.end method

.method private getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .locals 1

    .prologue
    .line 1451
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-object v0
.end method

.method private getErrorCode(I)I
    .locals 2
    .parameter "responseStatusCode"

    .prologue
    const/16 v0, 0x1f3

    .line 1893
    sparse-switch p1, :sswitch_data_0

    .line 1911
    const/16 v1, 0x1f4

    if-ge p1, v1, :cond_1

    .line 1912
    if-ne p1, v0, :cond_0

    .line 1917
    :goto_0
    return v0

    .line 1900
    :sswitch_0
    const/4 v0, -0x7

    goto :goto_0

    .line 1905
    :sswitch_1
    const/4 v0, -0x6

    goto :goto_0

    .line 1908
    :sswitch_2
    const/4 v0, -0x5

    goto :goto_0

    .line 1915
    :cond_0
    const/4 v0, -0x4

    goto :goto_0

    .line 1917
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 1893
    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x196 -> :sswitch_0
        0x198 -> :sswitch_2
        0x19a -> :sswitch_0
        0x19e -> :sswitch_1
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_1
        0x1e5 -> :sswitch_1
        0x1e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getErrorCode(Ljava/lang/Throwable;)I
    .locals 2
    .parameter "exception"

    .prologue
    .line 1932
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1933
    .local v0, message:Ljava/lang/String;
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    .line 1934
    const/16 v1, -0xc

    .line 1938
    :goto_0
    return v1

    .line 1935
    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 1936
    const/4 v1, -0x1

    goto :goto_0

    .line 1938
    :cond_1
    const/4 v1, -0x4

    goto :goto_0
.end method

.method private getExpiryTime(Ljavax/sip/message/Response;)I
    .locals 3
    .parameter "response"

    .prologue
    .line 1330
    const/16 v0, 0xe10

    .line 1331
    .local v0, expires:I
    const-string v2, "Expires"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    .line 1333
    .local v1, expiresHeader:Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v0

    .line 1334
    :cond_0
    const-string v2, "Min-Expires"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    .end local v1           #expiresHeader:Ljavax/sip/header/ExpiresHeader;
    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    .line 1336
    .restart local v1       #expiresHeader:Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_1

    .line 1337
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1339
    :cond_1
    return v0
.end method

.method private getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 3
    .parameter "response"

    .prologue
    .line 1483
    const-string v2, "WWW-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 1485
    .local v1, wwwAuth:Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getNonce()Ljava/lang/String;

    move-result-object v2

    .line 1488
    :goto_0
    return-object v2

    .line 1486
    :cond_0
    const-string v2, "Proxy-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 1488
    .local v0, proxyAuth:Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getNonce()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getRPortFromResponse(Ljavax/sip/message/Response;)I
    .locals 2
    .parameter "response"

    .prologue
    .line 1380
    const-string v1, "Via"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ViaHeader;

    move-object v0, v1

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 1382
    .local v0, viaHeader:Ljavax/sip/header/ViaHeader;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v1

    goto :goto_0
.end method

.method private getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 3
    .parameter "response"

    .prologue
    .line 1474
    const-string v2, "WWW-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 1476
    .local v1, wwwAuth:Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getRealm()Ljava/lang/String;

    move-result-object v2

    .line 1479
    :goto_0
    return-object v2

    .line 1477
    :cond_0
    const-string v2, "Proxy-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 1479
    .local v0, proxyAuth:Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getRealm()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "exception"

    .prologue
    .line 1923
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1924
    .local v0, cause:Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 1925
    move-object p1, v0

    .line 1926
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 1928
    :cond_0
    return-object p1
.end method

.method private getTransaction()Ljavax/sip/Transaction;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 845
    :goto_0
    return-object v0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    goto :goto_0

    .line 845
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAuthentication(Ljavax/sip/ResponseEvent;)Z
    .locals 5
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1416
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1417
    .local v1, response:Ljavax/sip/message/Response;
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, nonce:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1419
    const/4 v3, -0x2

    const-string v4, "server does not provide challenge"

    invoke-direct {p0, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1440
    :goto_0
    return v2

    .line 1422
    :cond_0
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 1423
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/sip/SipHelper;->handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1425
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1426
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 1427
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1428
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SipSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   authentication retry count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1433
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1434
    const/16 v3, -0xb

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 1437
    :cond_3
    const/4 v3, -0x8

    const-string v4, "incorrect username or password"

    invoke-direct {p0, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private inCall(Ljava/util/EventObject;)Z
    .locals 11
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isRegistered()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 1797
    .end local p1
    :goto_0
    return v6

    .line 1755
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$2300()Ljava/util/EventObject;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 1757
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v6, v9, v7}, Lcom/android/server/sip/SipHelper;->sendBye(Ljavax/sip/Dialog;Z)V

    .line 1758
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v6, v8

    .line 1759
    goto :goto_0

    .line 1760
    :cond_1
    const-string v6, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v6, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v5, p1

    .line 1762
    check-cast v5, Ljavax/sip/RequestEvent;

    .line 1763
    .local v5, requestEvent:Ljavax/sip/RequestEvent;
    invoke-virtual {v5}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    .line 1764
    .local v4, request:Ljavax/sip/message/Request;
    const/4 v0, 0x0

    .line 1765
    .local v0, bFileTransfer:Z
    const-string v6, "Call-ID"

    invoke-interface {v4, v6}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/CallIdHeader;

    .line 1766
    .local v2, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v2}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 1767
    .local v1, callId:Ljava/lang/String;
    const-string v6, "mzfile:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1768
    const/4 v0, 0x1

    move v6, v7

    .line 1769
    goto :goto_0

    .line 1771
    :cond_2
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    move-object v3, p1

    .line 1772
    check-cast v3, Ljavax/sip/RequestEvent;

    iput-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 1773
    .local v3, event:Ljavax/sip/RequestEvent;
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v7

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/sip/SipSessionGroup;->access$900(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1774
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1775
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v6, p0, v7, v9}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    move v6, v8

    .line 1776
    goto :goto_0

    .line 1777
    .end local v0           #bFileTransfer:Z
    .end local v1           #callId:Ljava/lang/String;
    .end local v2           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v3           #event:Ljavax/sip/RequestEvent;
    .end local v4           #request:Ljavax/sip/message/Request;
    .end local v5           #requestEvent:Ljavax/sip/RequestEvent;
    :cond_3
    const-string v6, "BYE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v6, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v5, p1

    .line 1778
    check-cast v5, Ljavax/sip/RequestEvent;

    .line 1779
    .restart local v5       #requestEvent:Ljavax/sip/RequestEvent;
    invoke-virtual {v5}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    .line 1780
    .restart local v4       #request:Ljavax/sip/message/Request;
    const-string v6, "Call-ID"

    invoke-interface {v4, v6}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/CallIdHeader;

    .line 1781
    .restart local v2       #callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v2}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 1782
    .restart local v1       #callId:Ljava/lang/String;
    const-string v6, "mzfile:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    .line 1784
    goto/16 :goto_0

    .line 1786
    :cond_4
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v6

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v7, 0xc8

    invoke-virtual {v6, p1, v7}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1787
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v6, v8

    .line 1788
    goto/16 :goto_0

    .line 1789
    .end local v1           #callId:Ljava/lang/String;
    .end local v2           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v4           #request:Ljavax/sip/message/Request;
    .end local v5           #requestEvent:Ljavax/sip/RequestEvent;
    .restart local p1
    :cond_5
    instance-of v6, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v6, :cond_6

    .line 1791
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1792
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    move-object v6, p1

    check-cast v6, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v10, v6, v7}, Lcom/android/server/sip/SipHelper;->sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;Z)Ljavax/sip/ClientTransaction;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1794
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v6, v8

    .line 1795
    goto/16 :goto_0

    .restart local p1
    :cond_6
    move v6, v7

    .line 1797
    goto/16 :goto_0
.end method

.method private incomingCall(Ljava/util/EventObject;)Z
    .locals 10
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1560
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1591
    .end local p1
    :cond_0
    :goto_0
    return v5

    .line 1563
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v0, :cond_2

    .line 1565
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1566
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sip/SipHelper;->sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Z)Ljavax/sip/ServerTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1570
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v5, v9

    .line 1571
    goto :goto_0

    .line 1572
    .restart local p1
    :cond_2
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$2300()Ljava/util/EventObject;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 1573
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;Z)V

    .line 1575
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v5, v9

    .line 1576
    goto :goto_0

    .line 1577
    :cond_3
    const-string v0, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 1578
    check-cast v8, Ljavax/sip/RequestEvent;

    .line 1579
    .local v8, event:Ljavax/sip/RequestEvent;
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    const-string v1, "Call-ID"

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v7

    check-cast v7, Ljavax/sip/header/CallIdHeader;

    .line 1580
    .local v7, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v7}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v6

    .line 1581
    .local v6, callId:Ljava/lang/String;
    const-string v0, "mzfile:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v8, v1}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1586
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V

    .line 1588
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v5, v9

    .line 1589
    goto/16 :goto_0
.end method

.method private incomingCallToInCall(Ljava/util/EventObject;)Z
    .locals 7
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1597
    const-string v5, "ACK"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, p1

    .line 1598
    check-cast v2, Ljavax/sip/RequestEvent;

    .line 1599
    .local v2, event:Ljavax/sip/RequestEvent;
    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1600
    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    const-string v6, "Call-ID"

    invoke-interface {v5, v6}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/CallIdHeader;

    .line 1601
    .local v1, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 1602
    .local v0, callId:Ljava/lang/String;
    const-string v5, "mzfile:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1619
    .end local v0           #callId:Ljava/lang/String;
    .end local v1           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v2           #event:Ljavax/sip/RequestEvent;
    :cond_0
    :goto_0
    return v3

    .line 1606
    .restart local v2       #event:Ljavax/sip/RequestEvent;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall()V

    move v3, v4

    .line 1607
    goto :goto_0

    .line 1608
    .end local v2           #event:Ljavax/sip/RequestEvent;
    :cond_2
    const-string v5, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, p1

    .line 1611
    check-cast v2, Ljavax/sip/RequestEvent;

    .line 1612
    .restart local v2       #event:Ljavax/sip/RequestEvent;
    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    const-string v6, "Call-ID"

    invoke-interface {v5, v6}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/CallIdHeader;

    .line 1613
    .restart local v1       #callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 1614
    .restart local v0       #callId:Ljava/lang/String;
    const-string v5, "mzfile:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 1617
    goto :goto_0
.end method

.method private isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1189
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1192
    .local v0, current:Ljavax/sip/Transaction;
    :goto_0
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 1196
    .local v1, target:Ljavax/sip/Transaction;
    :goto_1
    if-eq v0, v1, :cond_4

    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    .line 1197
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SipSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not the current transaction; current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :cond_0
    const/4 v2, 0x0

    .line 1206
    :cond_1
    :goto_2
    return v2

    .line 1189
    .end local v0           #current:Ljavax/sip/Transaction;
    .end local v1           #target:Ljavax/sip/Transaction;
    :cond_2
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    goto :goto_0

    .line 1192
    .restart local v0       #current:Ljavax/sip/Transaction;
    :cond_3
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v1

    goto :goto_1

    .line 1200
    .restart local v1       #target:Ljavax/sip/Transaction;
    :cond_4
    if-eqz v0, :cond_1

    .line 1201
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transaction terminated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private keepAliveProcess(Ljava/util/EventObject;)Z
    .locals 4
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1343
    instance-of v1, p1, Lcom/android/server/sip/SipSessionGroup$OptionsCommand;

    if-eqz v1, :cond_1

    .line 1344
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sip/SipHelper;->sendKeepAlive(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1346
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1347
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v1, p0, v0}, Lcom/android/server/sip/SipSessionGroup;->access$1000(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    .line 1348
    const/4 v0, 0x1

    .line 1352
    :cond_0
    :goto_0
    return v0

    .line 1349
    :cond_1
    instance-of v1, p1, Ljavax/sip/ResponseEvent;

    if-eqz v1, :cond_0

    .line 1350
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->parseOptionsResult(Ljava/util/EventObject;)Z

    move-result v0

    goto :goto_0
.end method

.method private message(Ljava/util/EventObject;)Z
    .locals 10
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1105
    const-string v7, "MESSAGE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v7, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v1, p1

    .line 1106
    check-cast v1, Ljavax/sip/ResponseEvent;

    .line 1107
    .local v1, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v2

    .line 1108
    .local v2, response:Ljavax/sip/message/Response;
    const-string v7, "Call-ID"

    invoke-interface {v2, v7}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CallIdHeader;

    .line 1109
    .local v0, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    .line 1110
    .local v3, smsUUID:Ljava/lang/String;
    invoke-interface {v2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v5

    .line 1111
    .local v5, statusCode:I
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1112
    const-string v7, "SipSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get Message Status Code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "SmsUUID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_0
    sparse-switch v5, :sswitch_data_0

    .line 1131
    const/16 v7, 0x12c

    if-lt v5, v7, :cond_3

    .line 1132
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SipSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send Message Fail, uuid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onMessageFailed(Ljavax/sip/message/Response;Ljava/lang/String;)V

    .line 1134
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionCompletedMap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1135
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionCompletedMap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1136
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "SipSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mSessionCompletedMap remove msg uuid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    .end local v0           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v3           #smsUUID:Ljava/lang/String;
    .end local v5           #statusCode:I
    :cond_2
    :goto_0
    return v6

    .line 1116
    .restart local v0       #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .restart local v1       #event:Ljavax/sip/ResponseEvent;
    .restart local v2       #response:Ljavax/sip/message/Response;
    .restart local v3       #smsUUID:Ljava/lang/String;
    .restart local v5       #statusCode:I
    :sswitch_0
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1117
    .local v4, state:I
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onMessageDone(Ljava/lang/String;)V

    .line 1118
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionCompletedMap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1119
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionCompletedMap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1120
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "SipSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mSessionCompletedMap remove msg uuid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1124
    .end local v4           #state:I
    :sswitch_1
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "SipSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send Message Receive Report Sucess, uuid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1128
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    goto :goto_0

    .line 1142
    .end local v0           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v3           #smsUUID:Ljava/lang/String;
    .end local v5           #statusCode:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1114
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xca -> :sswitch_0
        0x191 -> :sswitch_2
        0x197 -> :sswitch_2
    .end sparse-switch
.end method

.method private onError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1861
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1862
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 1874
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnError(ILjava/lang/String;)V

    .line 1876
    :goto_1
    return-void

    .line 1865
    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    goto :goto_1

    .line 1868
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onSendPingFailed(ILjava/lang/String;)V

    goto :goto_1

    .line 1872
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onSubscribeFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 1862
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1880
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1881
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1882
    return-void
.end method

.method private onError(Ljavax/sip/message/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1885
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1886
    .local v0, statusCode:I
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    if-nez v1, :cond_0

    const/16 v1, 0x1e6

    if-ne v0, v1, :cond_0

    .line 1887
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnBusy()V

    .line 1891
    :goto_0
    return-void

    .line 1889
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onMessageDone(Ljava/lang/String;)V
    .locals 1
    .parameter "uuid"

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onMessageDone(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 2155
    return-void
.end method

.method private onMessageFailed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"
    .parameter "uuid"

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy;->onMessageFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V

    .line 2159
    return-void
.end method

.method private onMessageFailed(Ljavax/sip/message/Response;Ljava/lang/String;)V
    .locals 3
    .parameter "response"
    .parameter "uuid"

    .prologue
    .line 2161
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 2162
    .local v0, statusCode:I
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onMessageFailed(ILjava/lang/String;Ljava/lang/String;)V

    .line 2164
    return-void
.end method

.method private onMessageTimeOut(Ljavax/sip/TimeoutEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 1306
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/TimeoutEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 1307
    .local v1, ct:Ljavax/sip/ClientTransaction;
    if-eqz v1, :cond_1

    .line 1308
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    .line 1309
    .local v2, request:Ljavax/sip/message/Request;
    if-eqz v2, :cond_1

    .line 1310
    const-string v4, "Call-ID"

    invoke-interface {v2, v4}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CallIdHeader;

    .line 1311
    .local v0, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    .line 1312
    .local v3, smsUUID:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v4, p0, v3}, Lcom/android/server/sip/SipSessionListenerProxy;->onMessageTimeout(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 1313
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1314
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onMessageTimeOut smsUUID = ------------------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_0
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionCompletedMap:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1318
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionCompletedMap:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1319
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mSessionCompletedMap remove msg uuid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    .end local v0           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v1           #ct:Ljavax/sip/ClientTransaction;
    .end local v2           #request:Ljavax/sip/message/Request;
    .end local v3           #smsUUID:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1323
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private onRegistrationDone(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1943
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1944
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1945
    return-void
.end method

.method private onRegistrationFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1958
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1959
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1961
    return-void
.end method

.method private onRegistrationFailed(Ljavax/sip/message/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1964
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1965
    .local v0, statusCode:I
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1967
    return-void
.end method

.method private onSendPingFailed(ILjava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1956
    :cond_0
    return-void
.end method

.method private onSubscribeDone(ILjava/lang/String;)V
    .locals 1
    .parameter "duration"
    .parameter "content"

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onSubscribeDone(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 2147
    return-void
.end method

.method private onSubscribeFailed(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onSubscribeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 2151
    return-void
.end method

.method private onSubscribeFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 2166
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 2167
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onSubscribeFailed(ILjava/lang/String;)V

    .line 2169
    return-void
.end method

.method private onSubscribeFailed(Ljavax/sip/message/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2171
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 2172
    .local v0, statusCode:I
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onSubscribeFailed(ILjava/lang/String;)V

    .line 2174
    return-void
.end method

.method private outgoingCall(Ljava/util/EventObject;)Z
    .locals 10
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1623
    const-string v8, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v8, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v3, p1

    .line 1624
    check-cast v3, Ljavax/sip/ResponseEvent;

    .line 1625
    .local v3, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v3}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v4

    .line 1626
    .local v4, response:Ljavax/sip/message/Response;
    const-string v8, "Call-ID"

    invoke-interface {v4, v8}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/CallIdHeader;

    .line 1627
    .local v2, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v2}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 1628
    .local v1, callId:Ljava/lang/String;
    const-string v8, "mzfile:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1702
    .end local v1           #callId:Ljava/lang/String;
    .end local v2           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v3           #event:Ljavax/sip/ResponseEvent;
    .end local v4           #response:Ljavax/sip/message/Response;
    :cond_0
    :goto_0
    return v6

    .line 1632
    .restart local v1       #callId:Ljava/lang/String;
    .restart local v2       #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .restart local v3       #event:Ljavax/sip/ResponseEvent;
    .restart local v4       #response:Ljavax/sip/message/Response;
    :cond_1
    invoke-interface {v4}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v5

    .line 1633
    .local v5, statusCode:I
    sparse-switch v5, :sswitch_data_0

    .line 1666
    const/16 v8, 0x190

    if-lt v5, v8, :cond_5

    .line 1668
    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    move v6, v7

    .line 1669
    goto :goto_0

    .line 1640
    :sswitch_0
    const/16 v6, 0xb4

    if-ne v5, v6, :cond_2

    .line 1641
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/sip/SipHelper;->getReceiverContactURI(Ljavax/sip/message/Response;)V

    .line 1643
    :cond_2
    iget v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_3

    .line 1644
    const/4 v6, 0x6

    iput v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1645
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1646
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v6, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRingingBack(Landroid/net/sip/ISipSession;)V

    :cond_3
    move v6, v7

    .line 1649
    goto :goto_0

    .line 1651
    :sswitch_1
    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v8}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v8, v3, v9, v6}, Lcom/android/server/sip/SipHelper;->sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;Z)V

    .line 1652
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/server/sip/SipSessionGroup;->access$900(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1653
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall()V

    move v6, v7

    .line 1654
    goto :goto_0

    .line 1657
    :sswitch_2
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1658
    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v8, p0, v6}, Lcom/android/server/sip/SipSessionGroup;->access$1000(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    :cond_4
    move v6, v7

    .line 1660
    goto :goto_0

    :sswitch_3
    move v6, v7

    .line 1664
    goto :goto_0

    .line 1670
    :cond_5
    const/16 v8, 0x12c

    if-ge v5, v8, :cond_0

    move v6, v7

    .line 1673
    goto :goto_0

    .line 1677
    .end local v1           #callId:Ljava/lang/String;
    .end local v2           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v3           #event:Ljavax/sip/ResponseEvent;
    .end local v4           #response:Ljavax/sip/message/Response;
    .end local v5           #statusCode:I
    :cond_6
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$2300()Ljava/util/EventObject;

    move-result-object v8

    if-ne v8, p1, :cond_7

    .line 1681
    const/4 v8, 0x7

    iput v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1682
    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v8}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-virtual {v8, v9, v6}, Lcom/android/server/sip/SipHelper;->sendCancel(Ljavax/sip/ClientTransaction;Z)V

    .line 1683
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v6, v7

    .line 1684
    goto :goto_0

    .line 1685
    :cond_7
    const-string v8, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v8, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, p1

    .line 1688
    check-cast v3, Ljavax/sip/RequestEvent;

    .line 1689
    .local v3, event:Ljavax/sip/RequestEvent;
    const/4 v0, 0x0

    .line 1690
    .local v0, bFileTransfer:Z
    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1691
    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v8

    const-string v9, "Call-ID"

    invoke-interface {v8, v9}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/CallIdHeader;

    .line 1692
    .restart local v2       #callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v2}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 1693
    .restart local v1       #callId:Ljava/lang/String;
    const-string v8, "mzfile:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1694
    const/4 v0, 0x1

    .line 1695
    goto/16 :goto_0

    .line 1698
    .end local v1           #callId:Ljava/lang/String;
    .end local v2           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    :cond_8
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v8

    invoke-virtual {v6, v3, v8, v0}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;Z)V

    move v6, v7

    .line 1700
    goto/16 :goto_0

    .line 1633
    nop

    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb6 -> :sswitch_0
        0xb7 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x191 -> :sswitch_2
        0x197 -> :sswitch_2
        0x1eb -> :sswitch_3
    .end sparse-switch
.end method

.method private outgoingCallToReady(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1707
    instance-of v7, p1, Ljavax/sip/ResponseEvent;

    if-eqz v7, :cond_4

    move-object v2, p1

    .line 1708
    check-cast v2, Ljavax/sip/ResponseEvent;

    .line 1709
    .local v2, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v2}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    .line 1710
    .local v3, response:Ljavax/sip/message/Response;
    const-string v7, "Call-ID"

    invoke-interface {v3, v7}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/CallIdHeader;

    .line 1711
    .local v1, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, callId:Ljava/lang/String;
    const-string v7, "mzfile:"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1746
    .end local v0           #callId:Ljava/lang/String;
    .end local v1           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v2           #event:Ljavax/sip/ResponseEvent;
    .end local v3           #response:Ljavax/sip/message/Response;
    :cond_0
    :goto_0
    return v5

    .line 1715
    .restart local v0       #callId:Ljava/lang/String;
    .restart local v1       #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .restart local v2       #event:Ljavax/sip/ResponseEvent;
    .restart local v3       #response:Ljavax/sip/message/Response;
    :cond_1
    invoke-interface {v3}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v4

    .line 1716
    .local v4, statusCode:I
    const-string v7, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v7, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1717
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_3

    move v5, v6

    .line 1719
    goto :goto_0

    .line 1721
    :cond_2
    const-string v7, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v7, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1722
    sparse-switch v4, :sswitch_data_0

    .line 1734
    :cond_3
    const/16 v7, 0x190

    if-lt v4, v7, :cond_0

    .line 1735
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    move v5, v6

    .line 1736
    goto :goto_0

    .line 1724
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    move v5, v6

    .line 1725
    goto :goto_0

    .line 1727
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v5, v6

    .line 1728
    goto :goto_0

    .line 1738
    .end local v0           #callId:Ljava/lang/String;
    .end local v1           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v2           #event:Ljavax/sip/ResponseEvent;
    .end local v3           #response:Ljavax/sip/message/Response;
    .end local v4           #statusCode:I
    :cond_4
    instance-of v6, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v6, :cond_0

    .line 1744
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "timed out"

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1722
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1e7 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseOptionsResult(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1356
    const-string v4, "OPTIONS"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, p1

    .line 1357
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1358
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRPortFromResponse(Ljavax/sip/message/Response;)I

    move-result v1

    .line 1359
    .local v1, rPort:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 1360
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    if-nez v4, :cond_0

    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    .line 1361
    :cond_0
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    if-eq v4, v1, :cond_2

    .line 1362
    iput-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    .line 1363
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SipSession"

    const-string v5, "rport is changed: %d <> %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_1
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    .line 1372
    :cond_2
    :goto_0
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SipSession"

    const-string v4, "parseOptionsResult Reset"

    invoke-static {v3, v4}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_3
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1376
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #rPort:I
    :goto_1
    return v2

    .line 1370
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #rPort:I
    :cond_4
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SipSession"

    const-string v4, "peer did not respond rport"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #rPort:I
    :cond_5
    move v2, v3

    .line 1376
    goto :goto_1
.end method

.method private processCommand(Ljava/util/EventObject;)V
    .locals 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 979
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 981
    const/16 v0, -0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot initiate a new transaction to execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 985
    :cond_1
    return-void
.end method

.method private processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1180
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "dialog terminated"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not the current dialog; current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", terminated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processExceptions(Ljava/util/EventObject;)Z
    .locals 3
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc8

    const/4 v1, 0x1

    .line 1145
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->parseOptionsResult(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1175
    .end local p1
    :goto_0
    return v0

    .line 1148
    .restart local p1
    :cond_0
    const-string v0, "BYE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v0, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1152
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v0, v1

    .line 1153
    goto :goto_0

    .line 1154
    .restart local p1
    :cond_1
    const-string v0, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v2, 0x1e1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move v0, v1

    .line 1157
    goto :goto_0

    .line 1158
    .restart local p1
    :cond_2
    instance-of v0, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 1159
    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1160
    instance-of v0, p1, Ljavax/sip/TimeoutEvent;

    if-eqz v0, :cond_3

    .line 1161
    check-cast p1, Ljavax/sip/TimeoutEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTimeout(Ljavax/sip/TimeoutEvent;)V

    :goto_1
    move v0, v1

    .line 1166
    goto :goto_0

    .line 1163
    .restart local p1
    :cond_3
    check-cast p1, Ljavax/sip/TransactionTerminatedEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V

    goto :goto_1

    .line 1168
    .restart local p1
    :cond_4
    const-string v0, "OPTIONS"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1169
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v0, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move v0, v1

    .line 1170
    goto :goto_0

    .line 1171
    .restart local p1
    :cond_5
    instance-of v0, p1, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v0, :cond_6

    .line 1172
    check-cast p1, Ljavax/sip/DialogTerminatedEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V

    move v0, v1

    .line 1173
    goto :goto_0

    .line 1175
    .restart local p1
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processTimeout(Ljavax/sip/TimeoutEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 1254
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SipSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processing Timeout... State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_0
    const/4 v0, 0x0

    .line 1257
    .local v0, bFileTransfer:Z
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/TimeoutEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v3

    .line 1258
    .local v3, ct:Ljavax/sip/ClientTransaction;
    if-eqz v3, :cond_1

    .line 1259
    invoke-interface {v3}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    .line 1260
    .local v4, request:Ljavax/sip/message/Request;
    if-eqz v4, :cond_1

    .line 1261
    const-string v5, "Call-ID"

    invoke-interface {v4, v5}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/CallIdHeader;

    .line 1262
    .local v2, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v2}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 1263
    .local v1, callId:Ljava/lang/String;
    const-string v5, "mzfile:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 1264
    const/4 v0, 0x1

    .line 1273
    .end local v1           #callId:Ljava/lang/String;
    .end local v2           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v3           #ct:Ljavax/sip/ClientTransaction;
    .end local v4           #request:Ljavax/sip/message/Request;
    :cond_1
    :goto_0
    iget v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 1298
    :pswitch_0
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "SipSession"

    const-string v6, "   do nothing"

    invoke-static {v5, v6}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :cond_2
    :goto_1
    return-void

    .line 1276
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1277
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v5, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_1

    .line 1283
    :pswitch_2
    const/4 v5, -0x5

    invoke-virtual {p1}, Ljavax/sip/TimeoutEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_1

    .line 1286
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1287
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    goto :goto_1

    .line 1291
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v5, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onSubscribeTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_1

    .line 1294
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onMessageTimeOut(Ljavax/sip/TimeoutEvent;)V

    goto :goto_1

    .line 1268
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1239
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 1247
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction terminated early: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_0
    const/4 v0, -0x3

    const-string v1, "transaction terminated"

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1251
    :cond_1
    :goto_0
    return-void

    .line 1244
    :sswitch_0
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SipSession"

    const-string v1, "Transaction terminated; do nothing"

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1239
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private readyForCall(Ljava/util/EventObject;)Z
    .locals 11
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1493
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isRegistered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isRegistered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    :cond_0
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v0, :cond_3

    .line 1498
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1499
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipHelper;->setContext(Landroid/content/Context;)V

    .line 1501
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    move-object v6, p1

    .line 1502
    check-cast v6, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .line 1503
    .local v6, cmd:Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 1504
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sip/SipHelper;->sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1507
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1508
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v0, p0, v5}, Lcom/android/server/sip/SipSessionGroup;->access$1000(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    .line 1509
    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    .line 1510
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCalling(Landroid/net/sip/ISipSession;)V

    move v5, v10

    .line 1555
    .end local v6           #cmd:Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    .end local p1
    :cond_2
    :goto_0
    return v5

    .line 1512
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    if-eqz v0, :cond_4

    .line 1513
    iput v10, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1514
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;->getDuration()I

    move-result v8

    .line 1515
    .local v8, duration:I
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1517
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1518
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v0, p0, v5}, Lcom/android/server/sip/SipSessionGroup;->access$1000(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    .line 1519
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    move v5, v10

    .line 1520
    goto :goto_0

    .line 1521
    .end local v8           #duration:I
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;

    if-eqz v0, :cond_5

    .line 1522
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    move-object v0, p1

    .line 1523
    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;->getDuration()I

    move-result v8

    .line 1524
    .restart local v8       #duration:I
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;->getPushNode()Ljava/lang/String;

    move-result-object v7

    .line 1525
    .local v7, content:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8, v7}, Lcom/android/server/sip/SipHelper;->sendSubscribe(Landroid/net/sip/SipProfile;Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1527
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1528
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v0, p0, v5}, Lcom/android/server/sip/SipSessionGroup;->access$1000(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    .line 1529
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onSubscribing(Landroid/net/sip/ISipSession;)V

    move v5, v10

    .line 1530
    goto :goto_0

    .line 1531
    .end local v7           #content:Ljava/lang/String;
    .end local v8           #duration:I
    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$MessageCommand;

    if-eqz v0, :cond_6

    .line 1532
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    move-object v6, p1

    .line 1533
    check-cast v6, Lcom/android/server/sip/SipSessionGroup$MessageCommand;

    .line 1535
    .local v6, cmd:Lcom/android/server/sip/SipSessionGroup$MessageCommand;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->getSmsContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->getSmsUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->getReportStatus()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sip/SipHelper;->sendSms(Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1537
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1538
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    const/4 v1, 0x0

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v0, p0, v1}, Lcom/android/server/sip/SipSessionGroup;->access$1000(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    .line 1540
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionCompletedMap:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->getSmsUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v5, v10

    .line 1545
    goto/16 :goto_0

    .line 1541
    :catch_0
    move-exception v9

    .line 1542
    .local v9, e:Ljavax/sip/SipException;
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    const/4 v1, -0x2

    const-string v2, "send sms fail"

    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->getSmsUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/sip/SipSessionListenerProxy;->onMessageFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1546
    .end local v6           #cmd:Lcom/android/server/sip/SipSessionGroup$MessageCommand;
    .end local v9           #e:Ljavax/sip/SipException;
    :cond_6
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$2400()Ljava/util/EventObject;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 1547
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1548
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1550
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1551
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v0, p0, v5}, Lcom/android/server/sip/SipSessionGroup;->access$1000(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    .line 1552
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    move v5, v10

    .line 1553
    goto/16 :goto_0
.end method

.method private registeringToReady(Ljava/util/EventObject;)Z
    .locals 6
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1388
    const-string v4, "REGISTER"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 1389
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1390
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1392
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    .line 1393
    .local v3, statusCode:I
    sparse-switch v3, :sswitch_data_0

    .line 1405
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_1

    .line 1406
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(Ljavax/sip/message/Response;)V

    move v4, v5

    .line 1411
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    .end local p1
    :goto_0
    return v4

    .line 1395
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #response:Ljavax/sip/message/Response;
    .restart local v3       #statusCode:I
    .restart local p1
    :sswitch_0
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1396
    .local v2, state:I
    if-ne v2, v5, :cond_0

    check-cast p1, Ljavax/sip/ResponseEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getExpiryTime(Ljavax/sip/message/Response;)I

    move-result v4

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationDone(I)V

    move v4, v5

    .line 1399
    goto :goto_0

    .line 1396
    .restart local p1
    :cond_0
    const/4 v4, -0x1

    goto :goto_1

    .line 1402
    .end local v2           #state:I
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move v4, v5

    .line 1403
    goto :goto_0

    .line 1411
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1393
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private removeMessageCallId(Ljavax/sip/Transaction;)V
    .locals 6
    .parameter "transaction"

    .prologue
    .line 1211
    if-eqz p1, :cond_0

    .line 1212
    :try_start_0
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    .line 1213
    .local v2, request:Ljavax/sip/message/Request;
    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MESSAGE"

    if-ne v3, v4, :cond_0

    .line 1214
    const-string v3, "Call-ID"

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/CallIdHeader;

    .line 1215
    .local v1, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, callId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionCompletedMap:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1217
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionCompletedMap:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$2600(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1218
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mSessionCompletedMap remove msg uuid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    .end local v0           #callId:Ljava/lang/String;
    .end local v1           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v2           #request:Ljavax/sip/message/Request;
    :cond_0
    :goto_0
    return-void

    .line 1222
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 783
    iput-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 784
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v0, p0, v2}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    .line 785
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 786
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 787
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 788
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 789
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    .line 790
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 792
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-interface {v0}, Ljavax/sip/Dialog;->delete()V

    .line 795
    :cond_0
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v0}, Ljavax/sip/ServerTransaction;->terminate()V
    :try_end_0
    .catch Ljavax/sip/ObjectInUseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 802
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 805
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->terminate()V
    :try_end_1
    .catch Ljavax/sip/ObjectInUseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 809
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 811
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 812
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 814
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 817
    :cond_3
    return-void

    .line 806
    :catch_0
    move-exception v0

    goto :goto_1

    .line 799
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private startSessionTimer(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 1802
    if-lez p1, :cond_0

    .line 1803
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1804
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V

    .line 1805
    const-string v0, "Interval"

    const-string v1, "mTimer.start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_0
    return-void
.end method

.method private subscribe(Ljava/util/EventObject;)Z
    .locals 11
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1067
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1068
    const-string v7, "SipSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SUBSCRIBE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/EventObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_0
    const-string v7, "SUBSCRIBE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v7, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v1, p1

    .line 1071
    check-cast v1, Ljavax/sip/ResponseEvent;

    .line 1072
    .local v1, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v2

    .line 1074
    .local v2, response:Ljavax/sip/message/Response;
    invoke-interface {v2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v6

    .line 1075
    .local v6, statusCode:I
    sparse-switch v6, :sswitch_data_0

    .line 1094
    const/16 v7, 0x12c

    if-lt v6, v7, :cond_3

    .line 1095
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onSubscribeFailed(Ljavax/sip/message/Response;)V

    move v7, v8

    .line 1100
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v6           #statusCode:I
    .end local p1
    :goto_0
    return v7

    .line 1077
    .restart local v1       #event:Ljavax/sip/ResponseEvent;
    .restart local v2       #response:Ljavax/sip/message/Response;
    .restart local v6       #statusCode:I
    .restart local p1
    :sswitch_0
    iget v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1078
    .local v5, state:I
    const/4 v0, 0x0

    .line 1079
    .local v0, content:Ljava/lang/String;
    invoke-interface {v2}, Ljavax/sip/message/Response;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v7

    if-eqz v7, :cond_1

    .line 1080
    invoke-interface {v2}, Ljavax/sip/message/Response;->getContent()Ljava/lang/Object;

    move-result-object v4

    .line 1081
    .local v4, rspObj:Ljava/lang/Object;
    check-cast v4, [B

    .end local v4           #rspObj:Ljava/lang/Object;
    move-object v3, v4

    check-cast v3, [B

    .line 1082
    .local v3, rspBytes:[B
    new-instance v0, Ljava/lang/String;

    .end local v0           #content:Ljava/lang/String;
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1084
    .end local v3           #rspBytes:[B
    .restart local v0       #content:Ljava/lang/String;
    :cond_1
    const/16 v7, 0xa

    if-ne v5, v7, :cond_2

    check-cast p1, Ljavax/sip/ResponseEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getExpiryTime(Ljavax/sip/message/Response;)I

    move-result v7

    :goto_1
    invoke-direct {p0, v7, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onSubscribeDone(ILjava/lang/String;)V

    move v7, v8

    .line 1088
    goto :goto_0

    .line 1084
    .restart local p1
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 1091
    .end local v0           #content:Ljava/lang/String;
    .end local v5           #state:I
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move v7, v8

    .line 1092
    goto :goto_0

    .line 1100
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v6           #statusCode:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 1075
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private toString(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 8
    .parameter "transaction"

    .prologue
    .line 1228
    if-nez p1, :cond_0

    const-string v3, "null"

    .line 1232
    :goto_0
    return-object v3

    .line 1229
    :cond_0
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    .line 1230
    .local v2, request:Ljavax/sip/message/Request;
    invoke-interface {p1}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 1231
    .local v1, dialog:Ljavax/sip/Dialog;
    const-string v3, "CSeq"

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CSeqHeader;

    .line 1232
    .local v0, cseq:Ljavax/sip/header/CSeqHeader;
    const-string v4, "req=%s,%s,s=%s,ds=%s,"

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-interface {p1}, Ljavax/sip/Transaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x3

    if-nez v1, :cond_1

    const-string v3, "-"

    :goto_1
    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 5
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 899
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v2

    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :goto_0
    return-void

    .line 902
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {v1, v3, v4, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 907
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Ljavax/sip/SipException;
    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 920
    :goto_0
    return-void

    .line 917
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 919
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearReRegisterRequired()V
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    .line 945
    return-void
.end method

.method duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 3

    .prologue
    .line 775
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    return-object v0
.end method

.method public endCall()V
    .locals 1

    .prologue
    .line 911
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$2300()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 912
    return-void
.end method

.method protected generateTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 990
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x41f0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getTransaction()Ljavax/sip/Transaction;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$1500(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    return v0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    return v0
.end method

.method public isReRegisterRequired()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRegistered:Z

    return v0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 2
    .parameter "peerProfile"
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 894
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 896
    return-void
.end method

.method public message(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "smsNode"
    .parameter "smsUUID"
    .parameter "report"

    .prologue
    .line 934
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MessageCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/sip/SipSessionGroup$MessageCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 935
    return-void
.end method

.method public notify(Ljava/lang/String;)V
    .locals 2
    .parameter "notifyContent"

    .prologue
    .line 937
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$NotifyCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1}, Lcom/android/server/sip/SipSessionGroup$NotifyCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 938
    return-void
.end method

.method public onPublishing(Ljava/lang/String;)V
    .locals 1
    .parameter "notifyContent"

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->OnPublishing(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 2182
    return-void
.end method

.method public onRecvReport(Ljava/lang/String;)V
    .locals 1
    .parameter "reportContent"

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->OnRecvReport(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 2188
    return-void
.end method

.method public onRecvSms(Ljava/lang/String;)V
    .locals 1
    .parameter "smsContent"

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->OnRecvSms(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 2185
    return-void
.end method

.method public onRegistrationFailed(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1948
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1949
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1950
    return-void
.end method

.method public process(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1005
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SipSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ~~~~~   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v7}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": processing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_0
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v6

    .line 1009
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v6

    move v3, v4

    .line 1061
    :goto_0
    return v3

    .line 1011
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v3, :cond_2

    .line 1013
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->process(Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v6

    move v3, v5

    goto :goto_0

    .line 1015
    :cond_2
    const/4 v1, 0x0

    .line 1016
    .local v1, dialog:Ljavax/sip/Dialog;
    instance-of v3, p1, Ljavax/sip/RequestEvent;

    if-eqz v3, :cond_6

    .line 1017
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 1021
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1025
    :cond_4
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 1059
    :pswitch_0
    const/4 v2, 0x0

    .line 1061
    .local v2, processed:Z
    :goto_2
    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processExceptions(Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    move v3, v5

    :goto_3
    monitor-exit v6

    goto :goto_0

    .line 1062
    .end local v1           #dialog:Ljavax/sip/Dialog;
    .end local v2           #processed:Z
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1018
    .restart local v1       #dialog:Ljavax/sip/Dialog;
    :cond_6
    :try_start_1
    instance-of v3, p1, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_3

    .line 1019
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    goto :goto_1

    .line 1028
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->registeringToReady(Ljava/util/EventObject;)Z

    move-result v2

    .line 1029
    .restart local v2       #processed:Z
    goto :goto_2

    .line 1031
    .end local v2           #processed:Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->keepAliveProcess(Ljava/util/EventObject;)Z

    move-result v2

    .line 1032
    .restart local v2       #processed:Z
    goto :goto_2

    .line 1034
    .end local v2           #processed:Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->readyForCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 1035
    .restart local v2       #processed:Z
    goto :goto_2

    .line 1037
    .end local v2           #processed:Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 1038
    .restart local v2       #processed:Z
    goto :goto_2

    .line 1040
    .end local v2           #processed:Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCallToInCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 1041
    .restart local v2       #processed:Z
    goto :goto_2

    .line 1044
    .end local v2           #processed:Z
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 1045
    .restart local v2       #processed:Z
    goto :goto_2

    .line 1047
    .end local v2           #processed:Z
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCallToReady(Ljava/util/EventObject;)Z

    move-result v2

    .line 1048
    .restart local v2       #processed:Z
    goto :goto_2

    .line 1050
    .end local v2           #processed:Z
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->inCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 1051
    .restart local v2       #processed:Z
    goto :goto_2

    .line 1053
    .end local v2           #processed:Z
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->subscribe(Ljava/util/EventObject;)Z

    move-result v2

    .line 1054
    .restart local v2       #processed:Z
    goto :goto_2

    .line 1056
    .end local v2           #processed:Z
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->message(Ljava/util/EventObject;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1057
    .restart local v2       #processed:Z
    goto :goto_2

    :cond_7
    move v3, v4

    .line 1061
    goto :goto_3

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public register(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 924
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 925
    return-void
.end method

.method public sendKeepAlive()Z
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 954
    const/4 v0, 0x1

    .line 955
    .local v0, bGetOptonResult:Z
    iput v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 957
    :try_start_0
    new-instance v3, Lcom/android/server/sip/SipSessionGroup$OptionsCommand;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v3, v4}, Lcom/android/server/sip/SipSessionGroup$OptionsCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;)V

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V

    .line 958
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    .line 959
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    if-eq v5, v3, :cond_2

    .line 962
    :cond_0
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    if-ne v5, v3, :cond_1

    .line 964
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 965
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    .line 966
    const/4 v0, 0x0

    .line 968
    const-string v3, "SipSession"

    const-string v4, "no response from ping"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v2           #i:I
    :cond_1
    :goto_1
    return v0

    .line 960
    .restart local v2       #i:I
    :cond_2
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 958
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 970
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 971
    .local v1, e:Ljavax/sip/SipException;
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendKeepAlive failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 972
    .end local v1           #e:Ljavax/sip/SipException;
    :catch_1
    move-exception v1

    .line 973
    .local v1, e:Ljava/lang/InterruptedException;
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendKeepAlive interrupted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mContext:Landroid/content/Context;

    .line 780
    return-void
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    instance-of v1, p1, Lcom/android/server/sip/SipSessionListenerProxy;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/server/sip/SipSessionListenerProxy;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 856
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0
    .parameter "bRegister"

    .prologue
    .line 950
    iput-boolean p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRegistered:Z

    .line 951
    return-void
.end method

.method public startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 3
    .parameter "interval"
    .parameter "peerProfile"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1980
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1981
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v0, :cond_0

    .line 1982
    new-instance v0, Ljavax/sip/SipException;

    const-string v2, "Cannot create more than one keepalive process in a SipSession"

    invoke-direct {v0, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1990
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1985
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 1986
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    .line 1988
    const-string v0, "Interval"

    const-string v2, "mKeepAliveProcess.start(interval, callback););"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->start(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    .line 1990
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1991
    return-void
.end method

.method public startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 3
    .parameter "interval"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1970
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1971
    :try_start_0
    const-string v0, "Interval"

    const-string v2, "startKeepAliveProcess(interval, mLocalProfile, callback);"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    .line 1973
    monitor-exit v1

    .line 1974
    return-void

    .line 1973
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopKeepAliveProcess()V
    .locals 2

    .prologue
    .line 1994
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1995
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->stop()V

    .line 1997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    .line 1999
    :cond_0
    monitor-exit v1

    .line 2000
    return-void

    .line 1999
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public subscribe(ILjava/lang/String;)V
    .locals 2
    .parameter "duration"
    .parameter "pushNode"

    .prologue
    .line 931
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 932
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 995
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v3}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 999
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, e:Ljava/lang/Throwable;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 928
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$2400()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 929
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 0
    .parameter "pushNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2179
    return-void
.end method

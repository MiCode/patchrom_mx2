.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepAliveProcess"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SipKeepAlive"


# instance fields
.field private mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

.field private mInterval:I

.field private mPortChanged:Z

.field private mRPort:I

.field private mRunning:Z

.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2005
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 2007
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    .line 2010
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    .line 2011
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    return-void
.end method

.method private getRPortFromResponse(Ljavax/sip/message/Response;)I
    .locals 2
    .parameter "response"

    .prologue
    .line 2143
    const-string v1, "Via"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ViaHeader;

    move-object v0, v1

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 2145
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

.method private parseOptionsResult(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2119
    const-string v4, "OPTIONS"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2500(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v0, p1

    .line 2120
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 2121
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->getRPortFromResponse(Ljavax/sip/message/Response;)I

    move-result v1

    .line 2122
    .local v1, rPort:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 2123
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    if-nez v4, :cond_0

    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    .line 2124
    :cond_0
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    if-eq v4, v1, :cond_3

    .line 2125
    iput-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    .line 2126
    const-string v4, "Interval"

    const-string v5, "mPortChanged = true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SipKeepAlive"

    const-string v5, "rport is changed: %d <> %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_1
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    .line 2139
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #rPort:I
    :cond_2
    :goto_0
    return v2

    .line 2131
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #rPort:I
    :cond_3
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SipKeepAlive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rport is the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :cond_4
    const-string v3, "Interval"

    const-string v4, "mPortChanged = false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2135
    :cond_5
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SipKeepAlive"

    const-string v4, "peer did not respond rport"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #rPort:I
    :cond_6
    move v2, v3

    .line 2139
    goto :goto_0
.end method

.method private sendKeepAlive()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 2107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0x9

    iput v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 2108
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sip/SipHelper;->sendOptions(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 2110
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 2111
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v3, 0x0

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/server/sip/SipSessionGroup;->access$1000(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    .line 2112
    const-string v0, "Interval"

    const-string v2, "KEEPALIVE_TIMEOUT5"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x5

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V
    invoke-static {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$3000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;I)V

    .line 2115
    monitor-exit v1

    .line 2116
    return-void

    .line 2115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 2057
    const-string v0, "Interval"

    const-string v1, "on error time out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->stop()V

    .line 2059
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    invoke-interface {v0, p2, p3}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V

    .line 2060
    return-void
.end method

.method process(Ljava/util/EventObject;)Z
    .locals 3
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2033
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 2034
    instance-of v1, p1, Ljavax/sip/ResponseEvent;

    if-eqz v1, :cond_0

    .line 2035
    const-string v1, "Interval"

    const-string v2, "ResponseEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->parseOptionsResult(Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2037
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    if-eqz v1, :cond_1

    .line 2038
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->resetExternalAddress()V

    .line 2039
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->stop()V

    .line 2044
    :goto_0
    const-string v0, "Interval"

    const-string v1, "mCallback.onResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    invoke-interface {v0, v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V

    .line 2046
    const/4 v0, 0x1

    .line 2050
    :cond_0
    return v0

    .line 2041
    :cond_1
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1700(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 2042
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2066
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v2

    .line 2067
    :try_start_0
    const-string v1, "KeepAlive"

    const-string v3, "run()"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2091
    :goto_0
    return-void

    .line 2078
    :cond_0
    :try_start_1
    const-string v1, "Interval"

    const-string v3, "sendKeepAlive();"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->sendKeepAlive()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2090
    :cond_1
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

    .line 2080
    :catch_0
    move-exception v0

    .line 2081
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2082
    const-string v1, "SipKeepAlive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keepalive error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v4, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1800(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2088
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method start(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 3
    .parameter "interval"
    .parameter "callback"

    .prologue
    .line 2016
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-eqz v0, :cond_0

    .line 2029
    :goto_0
    return-void

    .line 2017
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    .line 2018
    iput p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mInterval:I

    .line 2019
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    invoke-direct {v0, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 2020
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$2800(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 2021
    const-string v0, "Interval"

    const-string v1, "mWakeupTimer.set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2023
    const-string v0, "SipKeepAlive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start keepalive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->run()V

    goto :goto_0
.end method

.method stop()V
    .locals 4

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 2095
    :try_start_0
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2096
    const-string v0, "SipKeepAlive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop keepalive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",RPort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    .line 2100
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$2800(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 2101
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$2900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 2102
    monitor-exit v1

    .line 2103
    return-void

    .line 2102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

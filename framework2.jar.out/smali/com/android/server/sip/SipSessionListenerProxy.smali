.class Lcom/android/server/sip/SipSessionListenerProxy;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSessionListenerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipSession"


# instance fields
.field private mListener:Landroid/net/sip/ISipSessionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "message"

    .prologue
    .line 226
    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "SipSession"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private proxy(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SipSessionCallbackThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method


# virtual methods
.method public OnPublishing(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "notifyContent"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 345
    const-string v0, "SipSession"

    const-string v1, "publish listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_0
    return-void

    .line 348
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$21;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public OnRecvReport(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "reportContent"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$23;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public OnRecvSms(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "smsContent"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$22;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getListener()Landroid/net/sip/ISipSessionListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    return-object v0
.end method

.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$7;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$8;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$5;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$4;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .parameter "newSession"
    .parameter "sessionDescription"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$6;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$1;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$9;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMessageDone(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "uuid"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$19;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMessageFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"
    .parameter "uuid"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 331
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$20;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/sip/SipSessionListenerProxy$20;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMessageTimeout(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$24;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMessageing(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$18;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$18;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$10;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 1
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$11;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$12;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$13;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$2;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$3;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSubscribeDone(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "duration"
    .parameter "content"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$17;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSubscribeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$14;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSubscribeTimeout(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 256
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$15;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$15;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSubscribing(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$16;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$16;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    .line 36
    return-void
.end method

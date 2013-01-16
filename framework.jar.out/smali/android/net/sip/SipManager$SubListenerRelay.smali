.class Landroid/net/sip/SipManager$SubListenerRelay;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubListenerRelay"
.end annotation


# instance fields
.field private mListener:Landroid/net/sip/SipSubscribeListener;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/sip/SipSubscribeListener;Ljava/lang/String;)V
    .locals 0
    .parameter "listener"
    .parameter "uri"

    .prologue
    .line 743
    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 744
    iput-object p1, p0, Landroid/net/sip/SipManager$SubListenerRelay;->mListener:Landroid/net/sip/SipSubscribeListener;

    .line 745
    iput-object p2, p0, Landroid/net/sip/SipManager$SubListenerRelay;->mUri:Ljava/lang/String;

    .line 746
    return-void
.end method

.method private getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;
    .locals 4
    .parameter "session"

    .prologue
    .line 750
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager$SubListenerRelay;->mUri:Ljava/lang/String;

    .line 756
    :goto_0
    return-object v1

    .line 750
    :cond_0
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 755
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "SipManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUri(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onSubscribeDone(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "duration"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Landroid/net/sip/SipManager$SubListenerRelay;->mListener:Landroid/net/sip/SipSubscribeListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SubListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/net/sip/SipSubscribeListener;->onSubscribeDone(Ljava/lang/String;ILjava/lang/String;)V

    .line 764
    return-void
.end method

.method public onSubscribeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 770
    iget-object v0, p0, Landroid/net/sip/SipManager$SubListenerRelay;->mListener:Landroid/net/sip/SipSubscribeListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SubListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/net/sip/SipSubscribeListener;->onSubscribeFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 771
    return-void
.end method

.method public onSubscribeTimeout(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Landroid/net/sip/SipManager$SubListenerRelay;->mListener:Landroid/net/sip/SipSubscribeListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SubListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/sip/SipSubscribeListener;->onSubscribeTimeout(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public onSubscribing(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 783
    iget-object v0, p0, Landroid/net/sip/SipManager$SubListenerRelay;->mListener:Landroid/net/sip/SipSubscribeListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SubListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/sip/SipSubscribeListener;->onSubscribing(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.class Landroid/net/sip/SipManager$SipSessionListenerRelay;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SipSessionListenerRelay"
.end annotation


# instance fields
.field private mListener:Landroid/net/sip/SipSessionListener;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/sip/SipSessionListener;Ljava/lang/String;)V
    .locals 0
    .parameter "listener"
    .parameter "uri"

    .prologue
    .line 872
    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 873
    iput-object p1, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    .line 874
    iput-object p2, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mUri:Ljava/lang/String;

    .line 875
    return-void
.end method

.method private getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;
    .locals 4
    .parameter "session"

    .prologue
    .line 879
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mUri:Ljava/lang/String;

    .line 885
    :goto_0
    return-object v1

    .line 879
    :cond_0
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 884
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

    .line 885
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OnPublishing(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "notifyContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/sip/SipSessionListener;->onPublishing(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public OnRecvReport(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "reportContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-interface {v0, p2}, Landroid/net/sip/SipSessionListener;->OnRecvReport(Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method public OnRecvSms(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "smsContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 965
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-interface {v0, p2}, Landroid/net/sip/SipSessionListener;->OnRecvSms(Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method public onMessageDone(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 952
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/sip/SipSessionListener;->onMessageDone(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method public onMessageFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/net/sip/SipSessionListener;->onMessageFailed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 960
    return-void
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
    .line 977
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-interface {v0, p2}, Landroid/net/sip/SipSessionListener;->onMessageTimeout(Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public onMessageing(Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 947
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 891
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/sip/SipSessionListener;->onRegistering(Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 2
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 898
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/sip/SipSessionListener;->onRegistrationDone(Ljava/lang/String;I)V

    .line 899
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 904
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/net/sip/SipSessionListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 905
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 4
    .parameter "session"

    .prologue
    .line 909
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    const-string/jumbo v3, "registration timed out"

    invoke-interface {v0, v1, v2, v3}, Landroid/net/sip/SipSessionListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 911
    return-void
.end method

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
    .line 916
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/net/sip/SipSessionListener;->onSubscribeDone(Ljava/lang/String;ILjava/lang/String;)V

    .line 917
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
    .line 923
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/net/sip/SipSessionListener;->onSubscribeFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 924
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
    .line 930
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/sip/SipSessionListener;->onSubscribeTimeout(Ljava/lang/String;)V

    .line 931
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
    .line 936
    iget-object v0, p0, Landroid/net/sip/SipManager$SipSessionListenerRelay;->mListener:Landroid/net/sip/SipSessionListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$SipSessionListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/sip/SipSessionListener;->onSubscribing(Ljava/lang/String;)V

    .line 937
    return-void
.end method

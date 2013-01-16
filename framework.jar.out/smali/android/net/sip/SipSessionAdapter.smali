.class public Landroid/net/sip/SipSessionAdapter;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSessionAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPublishing(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "notifyContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    return-void
.end method

.method public OnRecvReport(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "reportContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public OnRecvSms(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "smsContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 45
    return-void
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 53
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 42
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 39
    return-void
.end method

.method public onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 49
    return-void
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 28
    return-void
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 56
    return-void
.end method

.method public onMessageDone(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public onMessageFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .line 101
    return-void
.end method

.method public onMessageTimeout(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
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
    .line 88
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 59
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 0
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 62
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 66
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 69
    return-void
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 32
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 35
    return-void
.end method

.method public onSubscribeDone(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "duration"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public onSubscribeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public onSubscribeTimeout(Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    return-void
.end method

.method public onSubscribing(Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    return-void
.end method

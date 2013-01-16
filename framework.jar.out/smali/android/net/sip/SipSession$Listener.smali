.class public Landroid/net/sip/SipSession$Listener;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 177
    return-void
.end method

.method public onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 211
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 169
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 161
    return-void
.end method

.method public onCallTransferring(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "newSession"
    .parameter "sessionDescription"

    .prologue
    .line 188
    return-void
.end method

.method public onCalling(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 132
    return-void
.end method

.method public onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 200
    return-void
.end method

.method public onMessageDone(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "uuid"

    .prologue
    .line 289
    return-void
.end method

.method public onMessageFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 294
    return-void
.end method

.method public onMessageTimeout(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 296
    return-void
.end method

.method public onMessageing(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 285
    return-void
.end method

.method public onPublishing(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "notifyContent"

    .prologue
    .line 302
    return-void
.end method

.method public onRecvReport(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "reportContent"

    .prologue
    .line 308
    return-void
.end method

.method public onRecvSms(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "smsContent"

    .prologue
    .line 305
    return-void
.end method

.method public onRegistering(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 219
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/SipSession;I)V
    .locals 0
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 228
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 239
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 247
    return-void
.end method

.method public onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 143
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 151
    return-void
.end method

.method public onSubscribeDone(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "duration"
    .parameter "content"

    .prologue
    .line 266
    return-void
.end method

.method public onSubscribeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 277
    return-void
.end method

.method public onSubscribeTimeout(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 299
    return-void
.end method

.method public onSubscribing(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 257
    return-void
.end method

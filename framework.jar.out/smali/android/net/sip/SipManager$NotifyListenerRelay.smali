.class Landroid/net/sip/SipManager$NotifyListenerRelay;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyListenerRelay"
.end annotation


# instance fields
.field private mListener:Landroid/net/sip/SipNotifyListener;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/sip/SipNotifyListener;Ljava/lang/String;)V
    .locals 0
    .parameter "listener"
    .parameter "uri"

    .prologue
    .line 840
    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 841
    iput-object p1, p0, Landroid/net/sip/SipManager$NotifyListenerRelay;->mListener:Landroid/net/sip/SipNotifyListener;

    .line 842
    iput-object p2, p0, Landroid/net/sip/SipManager$NotifyListenerRelay;->mUri:Ljava/lang/String;

    .line 843
    return-void
.end method

.method private getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;
    .locals 4
    .parameter "session"

    .prologue
    .line 847
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager$NotifyListenerRelay;->mUri:Ljava/lang/String;

    .line 853
    :goto_0
    return-object v1

    .line 847
    :cond_0
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 852
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

    .line 853
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
    .line 861
    iget-object v0, p0, Landroid/net/sip/SipManager$NotifyListenerRelay;->mListener:Landroid/net/sip/SipNotifyListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$NotifyListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/sip/SipNotifyListener;->onPublishing(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method

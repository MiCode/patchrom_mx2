.class Landroid/net/sip/SipSession$1;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/sip/SipSession;->createListener()Landroid/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/sip/SipSession;


# direct methods
.method constructor <init>(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
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
    .line 716
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onPublishing(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 719
    :cond_0
    return-void
.end method

.method public OnRecvReport(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "reportContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onRecvReport(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 743
    :cond_0
    return-void
.end method

.method public OnRecvSms(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "smsContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onRecvSms(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 727
    :cond_0
    return-void
.end method

.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 595
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCallBusy(Landroid/net/sip/SipSession;)V

    .line 598
    :cond_0
    return-void
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 612
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    .line 616
    :cond_0
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 589
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCallEnded(Landroid/net/sip/SipSession;)V

    .line 592
    :cond_0
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 582
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 586
    :cond_0
    return-void
.end method

.method public onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 3
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 602
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    new-instance v1, Landroid/net/sip/SipSession;

    iget-object v2, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v2}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onCallTransferring(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 608
    :cond_0
    return-void
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 561
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCalling(Landroid/net/sip/SipSession;)V

    .line 564
    :cond_0
    return-void
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 619
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    .line 622
    :cond_0
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
    .line 680
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onMessageDone(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 683
    :cond_0
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
    .line 689
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onSubscribeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    .line 692
    :cond_0
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
    .line 734
    return-void
.end method

.method public onMessageing(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onMessageing(Landroid/net/sip/SipSession;)V

    .line 674
    :cond_0
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 625
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRegistering(Landroid/net/sip/SipSession;)V

    .line 628
    :cond_0
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 2
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 631
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onRegistrationDone(Landroid/net/sip/SipSession;I)V

    .line 634
    :cond_0
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 638
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    .line 642
    :cond_0
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 645
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRegistrationTimeout(Landroid/net/sip/SipSession;)V

    .line 648
    :cond_0
    return-void
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 568
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 575
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRingingBack(Landroid/net/sip/SipSession;)V

    .line 578
    :cond_0
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
    .line 654
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onSubscribeDone(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    .line 657
    :cond_0
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
    .line 663
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onSubscribeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    .line 666
    :cond_0
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
    .line 698
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onSubscribeTimeout(Landroid/net/sip/SipSession;)V

    .line 701
    :cond_0
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
    .line 707
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onSubscribing(Landroid/net/sip/SipSession;)V

    .line 710
    :cond_0
    return-void
.end method

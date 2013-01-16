.class Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;
.super Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionCallReceiverImpl"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 611
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mContext:Landroid/content/Context;

    .line 612
    return-void
.end method

.method private isWifiConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 618
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 620
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 622
    .local v0, conMan:Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 623
    .local v1, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_0

    .line 624
    const/4 v2, 0x0

    .line 632
    .end local v0           #conMan:Landroid/net/ConnectivityManager;
    .end local v1           #wifiInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 626
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public process(Ljava/util/EventObject;)Z
    .locals 12
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 636
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SipSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ~~~~~   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v11}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": processing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_0
    const-string v9, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v9, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v2, p1

    .line 640
    check-cast v2, Ljavax/sip/RequestEvent;

    .line 641
    .local v2, event:Ljavax/sip/RequestEvent;
    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    .line 643
    .local v4, request:Ljavax/sip/message/Request;
    const/4 v1, 0x0

    .line 644
    .local v1, SipCallFlag:I
    const/4 v0, 0x0

    .line 645
    .local v0, EnableSipCall:Z
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_1

    .line 646
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "internet_call_switch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 648
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "SipSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SipCallFlag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_1
    if-ne v1, v7, :cond_2

    .line 651
    const/4 v0, 0x1

    .line 653
    :cond_2
    if-nez v0, :cond_4

    .line 654
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v9

    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v10

    invoke-virtual {v9, v2, v10, v8}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;Z)V

    .line 656
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "SipSession"

    const-string v9, "Send InviteBusy to refuse incoming call.... "

    invoke-static {v8, v9}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .end local v0           #EnableSipCall:Z
    .end local v1           #SipCallFlag:I
    .end local v2           #event:Ljavax/sip/RequestEvent;
    .end local v4           #request:Ljavax/sip/message/Request;
    .end local p1
    :cond_3
    :goto_0
    return v7

    .line 659
    .restart local v0       #EnableSipCall:Z
    .restart local v1       #SipCallFlag:I
    .restart local v2       #event:Ljavax/sip/RequestEvent;
    .restart local v4       #request:Ljavax/sip/message/Request;
    .restart local p1
    :cond_4
    const/4 v6, 0x1

    .line 660
    .local v6, wifiOnlyFlag:I
    const/4 v5, 0x1

    .line 661
    .local v5, wifiOnly:Z
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_5

    .line 662
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "internet_wifi_only"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 664
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "SipSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wifiOnlySipCall = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_5
    if-nez v6, :cond_6

    .line 669
    const/4 v5, 0x0

    .line 671
    :cond_6
    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->isWifiConnected()Z

    move-result v9

    if-nez v9, :cond_7

    .line 672
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v9

    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v10

    invoke-virtual {v9, v2, v10, v8}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;Z)V

    .line 674
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "SipSession"

    const-string v9, "wifiOnly to refuse incoming call.... "

    invoke-static {v8, v9}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_7
    new-instance v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v10, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v3, v9, v10}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    .line 680
    .local v3, newSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    const/4 v9, 0x3

    iput v9, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 681
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->generateTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10, v8}, Lcom/android/server/sip/SipHelper;->sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;Z)Ljavax/sip/ServerTransaction;

    move-result-object v9

    iput-object v9, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 683
    iget-object v9, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v9}, Ljavax/sip/ServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v9

    iput-object v9, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 684
    iput-object v2, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 685
    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v9

    #calls: Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/message/Request;)Landroid/net/sip/SipProfile;
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljavax/sip/message/Request;)Landroid/net/sip/SipProfile;

    move-result-object v9

    iput-object v9, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 686
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v10

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/sip/SipSessionGroup;->access$900(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 688
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V
    invoke-static {v9, v3, v8}, Lcom/android/server/sip/SipSessionGroup;->access$1000(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Z)V

    .line 689
    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v9, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v10, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v8, v3, v9, v10}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 692
    .end local v0           #EnableSipCall:Z
    .end local v1           #SipCallFlag:I
    .end local v2           #event:Ljavax/sip/RequestEvent;
    .end local v3           #newSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v4           #request:Ljavax/sip/message/Request;
    .end local v5           #wifiOnly:Z
    .end local v6           #wifiOnlyFlag:I
    :cond_8
    const-string v9, "OPTIONS"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v9, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 693
    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v8}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v8

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v9, 0xc8

    invoke-virtual {v8, p1, v9}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    goto/16 :goto_0

    .restart local p1
    :cond_9
    move v7, v8

    .line 696
    goto/16 :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mContext:Landroid/content/Context;

    .line 616
    return-void
.end method

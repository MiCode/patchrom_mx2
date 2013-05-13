.class Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;
.super Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionNotifyImpl"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mRecvReport:Z

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->mRecvReport:Z

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->mContext:Landroid/content/Context;

    .line 532
    return-void
.end method


# virtual methods
.method public process(Ljava/util/EventObject;)Z
    .locals 14
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xc8

    const/4 v10, 0x1

    .line 538
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SipSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ~~~~~   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v12}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Notify processing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #calls: Lcom/android/server/sip/SipSessionGroup;->log(Ljava/util/EventObject;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->access$300(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    const-string v9, "NOTIFY"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v9, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 542
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v11

    move-object v9, p1

    check-cast v9, Ljavax/sip/RequestEvent;

    invoke-virtual {v11, v9, v13}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move-object v1, p1

    .line 543
    check-cast v1, Ljavax/sip/RequestEvent;

    .line 544
    .local v1, event:Ljavax/sip/RequestEvent;
    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    .line 545
    .local v5, response:Ljavax/sip/message/Request;
    const/4 v0, 0x0

    .line 546
    .local v0, content:Ljava/lang/String;
    invoke-interface {v5}, Ljavax/sip/message/Request;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v9

    if-eqz v9, :cond_1

    .line 547
    invoke-interface {v5}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v7

    .line 548
    .local v7, rspObj:Ljava/lang/Object;
    check-cast v7, [B

    .end local v7           #rspObj:Ljava/lang/Object;
    move-object v6, v7

    check-cast v6, [B

    .line 549
    .local v6, rspBytes:[B
    new-instance v0, Ljava/lang/String;

    .end local v0           #content:Ljava/lang/String;
    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 550
    .restart local v0       #content:Ljava/lang/String;
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "SipSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Notify = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v6           #rspBytes:[B
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->onPublishing(Ljava/lang/String;)V

    move v9, v10

    .line 608
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #event:Ljavax/sip/RequestEvent;
    .end local v5           #response:Ljavax/sip/message/Request;
    .end local p1
    :goto_0
    return v9

    .line 554
    .restart local p1
    :cond_2
    const-string v9, "MESSAGE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v9, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v1, p1

    .line 556
    check-cast v1, Ljavax/sip/RequestEvent;

    .line 557
    .restart local v1       #event:Ljavax/sip/RequestEvent;
    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    .line 558
    .restart local v5       #response:Ljavax/sip/message/Request;
    const/4 v0, 0x0

    .line 561
    .restart local v0       #content:Ljava/lang/String;
    const/4 v3, 0x0

    .line 562
    .local v3, isReportMessage:Z
    const-string v9, "In-Reply-To"

    invoke-interface {v5, v9}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/InReplyToHeader;

    .line 563
    .local v2, inReplyToHeader:Ljavax/sip/header/InReplyToHeader;
    if-eqz v2, :cond_3

    .line 564
    const/4 v3, 0x1

    .line 567
    :cond_3
    const/4 v8, 0x0

    .line 568
    .local v8, sendReport:Z
    const-string v9, "Report-Flag"

    invoke-interface {v5, v9}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    .line 569
    .local v4, reportHeader:Ljavax/sip/header/Header;
    if-eqz v4, :cond_4

    .line 570
    const/4 v8, 0x1

    .line 572
    :cond_4
    invoke-interface {v5}, Ljavax/sip/message/Request;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v9

    if-eqz v9, :cond_5

    .line 573
    invoke-interface {v5}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v7

    .line 574
    .restart local v7       #rspObj:Ljava/lang/Object;
    check-cast v7, [B

    .end local v7           #rspObj:Ljava/lang/Object;
    move-object v6, v7

    check-cast v6, [B

    .line 575
    .restart local v6       #rspBytes:[B
    new-instance v0, Ljava/lang/String;

    .end local v0           #content:Ljava/lang/String;
    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 577
    .restart local v0       #content:Ljava/lang/String;
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "SipSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Message = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .end local v6           #rspBytes:[B
    :cond_5
    #calls: Lcom/android/server/sip/SipSessionGroup;->isSipLogEnable()Z
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$600()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 580
    const-string v9, "SipSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " isReport Message = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Need Report = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_6
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/sip/SipHelper;->checkIsFeatureEnable(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    move v9, v10

    .line 583
    goto/16 :goto_0

    .line 585
    :cond_7
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v9

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v9, p1, v13}, Lcom/android/server/sip/SipHelper;->sendMessageResponse(Ljavax/sip/RequestEvent;I)V

    .line 586
    if-eqz v3, :cond_8

    .line 587
    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->onRecvReport(Ljava/lang/String;)V

    :goto_1
    move v9, v10

    .line 606
    goto/16 :goto_0

    .line 598
    :cond_8
    if-eqz v8, :cond_9

    .line 600
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v11}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->generateTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12, v0}, Lcom/android/server/sip/SipHelper;->sendReport(Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    .line 604
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->onRecvSms(Ljava/lang/String;)V

    goto :goto_1

    .line 608
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #event:Ljavax/sip/RequestEvent;
    .end local v2           #inReplyToHeader:Ljavax/sip/header/InReplyToHeader;
    .end local v3           #isReportMessage:Z
    .end local v4           #reportHeader:Ljavax/sip/header/Header;
    .end local v5           #response:Ljavax/sip/message/Request;
    .end local v8           #sendReport:Z
    .restart local p1
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionNotifyImpl;->mContext:Landroid/content/Context;

    .line 536
    return-void
.end method

.class Lcom/android/server/sip/SipSessionGroup$MessageCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageCommand"
.end annotation


# instance fields
.field private mReport:Z

.field private mSmsContent:Ljava/lang/String;

.field private mSmsUUID:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "smsContent"
    .parameter "smsUUID"
    .parameter "report"

    .prologue
    .line 2429
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 2430
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2431
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->mSmsContent:Ljava/lang/String;

    .line 2432
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->mSmsUUID:Ljava/lang/String;

    .line 2433
    iput-boolean p4, p0, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->mReport:Z

    .line 2435
    return-void
.end method


# virtual methods
.method public getReportStatus()Z
    .locals 1

    .prologue
    .line 2444
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->mReport:Z

    return v0
.end method

.method public getSmsContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->mSmsContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->mSmsUUID:Ljava/lang/String;

    return-object v0
.end method

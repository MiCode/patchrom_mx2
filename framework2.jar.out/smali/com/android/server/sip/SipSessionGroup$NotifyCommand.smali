.class Lcom/android/server/sip/SipSessionGroup$NotifyCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyCommand"
.end annotation


# instance fields
.field private mNotifyContent:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "notifyContent"

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$NotifyCommand;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 2420
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2421
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$NotifyCommand;->mNotifyContent:Ljava/lang/String;

    .line 2422
    return-void
.end method


# virtual methods
.method public getNotifyContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$NotifyCommand;->mNotifyContent:Ljava/lang/String;

    return-object v0
.end method

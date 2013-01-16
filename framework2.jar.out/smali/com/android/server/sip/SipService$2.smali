.class Lcom/android/server/sip/SipService$2;
.super Landroid/telephony/PhoneStateListener;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 0
    .parameter

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/android/server/sip/SipService$2;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/server/sip/SipService$2;->this$0:Lcom/android/server/sip/SipService;

    #setter for: Lcom/android/server/sip/SipService;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/server/sip/SipService;->access$2602(Lcom/android/server/sip/SipService;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 2053
    return-void
.end method

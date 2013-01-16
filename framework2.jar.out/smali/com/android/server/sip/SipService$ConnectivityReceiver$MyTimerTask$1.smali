.class Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask$1;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask$1;->this$2:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask$1;->this$2:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    #calls: Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->realRun()V
    invoke-static {v0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->access$2200(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)V

    .line 1688
    return-void
.end method

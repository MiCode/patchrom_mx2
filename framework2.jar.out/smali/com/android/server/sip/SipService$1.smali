.class Lcom/android/server/sip/SipService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 161
    iput-object p1, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sip/SipService$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/sip/SipService$1$1;-><init>(Lcom/android/server/sip/SipService$1;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void
.end method

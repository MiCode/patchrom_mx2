.class Lcom/android/server/sip/SipService$1$1;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sip/SipService$1;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/sip/SipService$1$1;->this$1:Lcom/android/server/sip/SipService$1;

    iput-object p2, p0, Lcom/android/server/sip/SipService$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/sip/SipService$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$1$1;->this$1:Lcom/android/server/sip/SipService$1;

    iget-object v1, v1, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    iget-object v2, p0, Lcom/android/server/sip/SipService$1$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/sip/SipService$1$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/server/sip/SipService;->ReceiveWifiStateIntent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/sip/SipService;->access$100(Lcom/android/server/sip/SipService;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

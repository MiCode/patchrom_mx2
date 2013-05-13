.class Lcom/android/server/sip/SipHelper$16;
.super Ljava/lang/Object;
.source "SipHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipHelper;->sendBye(Ljavax/sip/Dialog;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipHelper;

.field final synthetic val$clientTransaction:Ljavax/sip/ClientTransaction;

.field final synthetic val$dialog:Ljavax/sip/Dialog;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/Dialog;Ljavax/sip/ClientTransaction;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/android/server/sip/SipHelper$16;->this$0:Lcom/android/server/sip/SipHelper;

    iput-object p2, p0, Lcom/android/server/sip/SipHelper$16;->val$dialog:Ljavax/sip/Dialog;

    iput-object p3, p0, Lcom/android/server/sip/SipHelper$16;->val$clientTransaction:Ljavax/sip/ClientTransaction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipHelper$16;->val$dialog:Ljavax/sip/Dialog;

    iget-object v2, p0, Lcom/android/server/sip/SipHelper$16;->val$clientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v1, v2}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :goto_0
    return-void

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

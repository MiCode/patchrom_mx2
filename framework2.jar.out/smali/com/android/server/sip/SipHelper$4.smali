.class Lcom/android/server/sip/SipHelper$4;
.super Ljava/lang/Object;
.source "SipHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipHelper;->sendSubscribe(Landroid/net/sip/SipProfile;Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ClientTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipHelper;

.field final synthetic val$clientTransaction:Ljavax/sip/ClientTransaction;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/server/sip/SipHelper$4;->this$0:Lcom/android/server/sip/SipHelper;

    iput-object p2, p0, Lcom/android/server/sip/SipHelper$4;->val$clientTransaction:Ljavax/sip/ClientTransaction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipHelper$4;->val$clientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

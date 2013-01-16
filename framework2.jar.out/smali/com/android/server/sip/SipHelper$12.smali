.class Lcom/android/server/sip/SipHelper$12;
.super Ljava/lang/Object;
.source "SipHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipHelper;->sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Z)Ljavax/sip/ServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipHelper;

.field final synthetic val$inviteTransaction:Ljavax/sip/ServerTransaction;

.field final synthetic val$response:Ljavax/sip/message/Response;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ServerTransaction;Ljavax/sip/message/Response;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/android/server/sip/SipHelper$12;->this$0:Lcom/android/server/sip/SipHelper;

    iput-object p2, p0, Lcom/android/server/sip/SipHelper$12;->val$inviteTransaction:Ljavax/sip/ServerTransaction;

    iput-object p3, p0, Lcom/android/server/sip/SipHelper$12;->val$response:Ljavax/sip/message/Response;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1096
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipHelper$12;->val$inviteTransaction:Ljavax/sip/ServerTransaction;

    iget-object v2, p0, Lcom/android/server/sip/SipHelper$12;->val$response:Ljavax/sip/message/Response;

    invoke-interface {v1, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

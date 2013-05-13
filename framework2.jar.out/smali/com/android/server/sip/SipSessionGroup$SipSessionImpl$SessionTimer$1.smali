.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    iput p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->val$timeout:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    iget v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->val$timeout:I

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->sleep(I)V
    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->access$1100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V

    .line 744
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #getter for: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->access$1200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    const-string v0, "Interval"

    const-string v1, "run timeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->timeout()V
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->access$1300(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)V

    .line 748
    :cond_0
    return-void
.end method

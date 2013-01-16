.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic val$command:Ljava/util/EventObject;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 863
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V
    invoke-static {v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1600(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v1

    .line 865
    .local v1, e:Ljava/lang/Throwable;
    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    instance-of v3, v3, Lcom/android/server/sip/SipSessionGroup$MessageCommand;

    if-eqz v3, :cond_0

    .line 867
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1700(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 868
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$MessageCommand;

    .line 869
    .local v0, cmd:Lcom/android/server/sip/SipSessionGroup$MessageCommand;
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v3, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1800(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 870
    .local v2, exception:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I
    invoke-static {v4, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$MessageCommand;->getSmsUUID()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onMessageFailed(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$2000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 871
    .end local v0           #cmd:Lcom/android/server/sip/SipSessionGroup$MessageCommand;
    .end local v2           #exception:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    instance-of v3, v3, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    if-eqz v3, :cond_1

    .line 872
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1700(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 873
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v3, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1800(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 874
    .restart local v2       #exception:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I
    invoke-static {v4, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 875
    .end local v2           #exception:Ljava/lang/Throwable;
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    instance-of v3, v3, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;

    if-eqz v3, :cond_2

    .line 876
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1700(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 877
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v3, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1800(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 878
    .restart local v2       #exception:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I
    invoke-static {v4, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onSubscribeFailed(ILjava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$2100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 879
    .end local v2           #exception:Ljava/lang/Throwable;
    :cond_2
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    instance-of v3, v3, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v3, :cond_3

    .line 880
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1700(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 881
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v3, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1800(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 882
    .restart local v2       #exception:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I
    invoke-static {v4, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnError(ILjava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$2200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 884
    .end local v2           #exception:Ljava/lang/Throwable;
    :cond_3
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    invoke-static {v3, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

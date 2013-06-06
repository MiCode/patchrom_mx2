.class public Lcom/android/actionassist/AssistReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AssistReceiver.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    const-string v0, "AssistReceiver"

    iput-object v0, p0, Lcom/android/actionassist/AssistReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 14
    const-string v1, "AssistReceiver"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.action.SHOW_ACTION_ASSIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-static {}, Lcom/android/actionassist/ActionAssist;->showActionAssist()V

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    const-string v1, "com.android.action.HIDE_ACTION_ASSIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {}, Lcom/android/actionassist/ActionAssist;->hideActionAssist()V

    goto :goto_0
.end method

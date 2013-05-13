.class Lcom/android/server/SambaClientService$1;
.super Landroid/content/BroadcastReceiver;
.source "SambaClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SambaClientService;


# direct methods
.method constructor <init>(Lcom/android/server/SambaClientService;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/SambaClientService$1;->this$0:Lcom/android/server/SambaClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 129
    if-nez p2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_MEIZU_DEVICE_NAME_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/server/SambaClientService$1;->this$0:Lcom/android/server/SambaClientService;

    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/SambaClientService;->setNetbiosName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/SambaClientService;->access$100(Lcom/android/server/SambaClientService;Ljava/lang/String;)V

    goto :goto_0
.end method

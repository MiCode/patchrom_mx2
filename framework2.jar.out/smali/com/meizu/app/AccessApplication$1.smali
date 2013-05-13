.class Lcom/meizu/app/AccessApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/app/AccessApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$1;->this$0:Lcom/meizu/app/AccessApplication;

    #calls: Lcom/meizu/app/AccessApplication;->update()V
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$000(Lcom/meizu/app/AccessApplication;)V

    .line 52
    :cond_0
    return-void
.end method

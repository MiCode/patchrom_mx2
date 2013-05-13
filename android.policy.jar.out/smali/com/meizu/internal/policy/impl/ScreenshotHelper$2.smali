.class Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/ScreenshotHelper;-><init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.meizu.LAUNCHER_WITH_BROUGHT_TO_BACK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const-string v2, "package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, extra:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    .end local v1           #extra:Ljava/lang/String;
    :cond_0
    return-void
.end method

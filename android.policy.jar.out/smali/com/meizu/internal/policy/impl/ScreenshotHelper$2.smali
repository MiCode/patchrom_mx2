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
    .line 291
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.meizu.LAUNCHER_WITH_BROUGHT_TO_BACK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const-string v2, "package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, extra:Ljava/lang/String;
    invoke-static {}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->requestScreenshotAndNoUpdate(I)V

    .line 303
    .end local v1           #extra:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 299
    .restart local v1       #extra:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->requestScreenshotAndNoUpdate(I)V

    goto :goto_0
.end method

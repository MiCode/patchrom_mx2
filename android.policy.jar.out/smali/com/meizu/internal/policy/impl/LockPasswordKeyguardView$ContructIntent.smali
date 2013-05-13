.class abstract Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;
.super Ljava/lang/Thread;
.source "LockPasswordKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ContructIntent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;


# direct methods
.method private constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1428
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    return-void
.end method


# virtual methods
.method abstract onReturnEmailIntent(Landroid/content/Intent;)V
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1434
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherEmailWhenNoIntent()Landroid/content/Intent;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$3200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Intent;

    move-result-object v0

    .line 1435
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent$1;

    invoke-direct {v2, p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent$1;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 1440
    return-void
.end method

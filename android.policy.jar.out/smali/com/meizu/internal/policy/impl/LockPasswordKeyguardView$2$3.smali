.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;
.super Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;
.source "LockPasswordKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;

.field final synthetic val$waitTimeFinal:I


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;->this$1:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;

    iput p2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;->val$waitTimeFinal:I

    iget-object v0, p1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;)V

    return-void
.end method


# virtual methods
.method onReturnEmailIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 423
    if-nez p1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;->this$1:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->onActivityStarted(Z)V
    invoke-static {v0, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)V

    .line 428
    :goto_0
    const-string v0, "LockPasswordKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "real unlock email as the pending intent is null wait for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;->val$waitTimeFinal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;->this$1:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2$3;->val$waitTimeFinal:I

    int-to-long v1, v1

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherActivity(Landroid/content/Intent;ZJ)V
    invoke-static {v0, p1, v3, v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;ZJ)V

    goto :goto_0
.end method

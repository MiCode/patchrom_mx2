.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;
.super Ljava/lang/Object;
.source "LockPasswordKeyguardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 193
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    move-result-object v1

    .line 197
    .local v1, mode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    const/4 v0, 0x0

    .line 198
    .local v0, dismissAfterCreation:Z
    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v2

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-ne v2, v3, :cond_2

    .line 200
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 201
    const/4 v0, 0x1

    .line 205
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    const/4 v3, 0x1

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V
    invoke-static {v2, v1, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    .line 206
    if-eqz v0, :cond_1

    .line 207
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mKeyguardScreenCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 209
    :cond_1
    return-void

    .line 202
    :cond_2
    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    goto :goto_0
.end method

.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;
.super Landroid/os/Handler;
.source "LockPasswordKeyguardView.java"


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

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    move-result-object v1

    .line 200
    .local v1, mode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    const/4 v0, 0x0

    .line 201
    .local v0, dismissAfterCreation:Z
    sget-object v4, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-ne v4, v5, :cond_2

    .line 203
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 204
    const/4 v0, 0x1

    .line 208
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_3

    :goto_2
    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V
    invoke-static {v4, v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    .line 209
    if-eqz v0, :cond_0

    .line 210
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mKeyguardScreenCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v3}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 205
    :cond_2
    sget-object v4, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    goto :goto_1

    :cond_3
    move v2, v3

    .line 208
    goto :goto_2

    .line 194
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

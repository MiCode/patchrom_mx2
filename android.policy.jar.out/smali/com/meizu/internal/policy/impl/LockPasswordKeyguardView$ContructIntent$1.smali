.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent$1;
.super Ljava/lang/Object;
.source "LockPasswordKeyguardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent$1;->this$1:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;

    iput-object p2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent$1;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent$1;->this$1:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;->onReturnEmailIntent(Landroid/content/Intent;)V

    .line 1438
    return-void
.end method

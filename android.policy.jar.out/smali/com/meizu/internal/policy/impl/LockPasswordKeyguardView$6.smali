.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;
.super Ljava/lang/Object;
.source "LockPasswordKeyguardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->startActivityIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iput-object p2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1144
    return-void
.end method

.class Lcom/meizu/internal/policy/impl/LockViewBaseSe$1;
.super Ljava/lang/Object;
.source "LockViewBaseSe.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/ILockWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$1;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goToUnlockScreen()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$1;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 222
    return-void
.end method

.method public onTouchScreen()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$1;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 217
    return-void
.end method

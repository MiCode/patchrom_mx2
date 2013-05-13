.class Lcom/meizu/internal/policy/impl/LockScreenMz$3;
.super Ljava/lang/Object;
.source "LockScreenMz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/LockScreenMz;->onHideMe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockScreenMz;)V
    .locals 0
    .parameter

    .prologue
    .line 877
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v0, v1, :cond_1

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    #calls: Lcom/meizu/internal/policy/impl/LockScreenMz;->cancleDismissKeyguard()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->access$000(Lcom/meizu/internal/policy/impl/LockScreenMz;)V

    .line 883
    :cond_1
    return-void
.end method

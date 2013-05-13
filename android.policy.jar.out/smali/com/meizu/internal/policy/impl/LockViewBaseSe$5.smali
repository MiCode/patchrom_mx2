.class Lcom/meizu/internal/policy/impl/LockViewBaseSe$5;
.super Landroid/os/Handler;
.source "LockViewBaseSe.java"


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
    .line 674
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$5;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 678
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 679
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$5;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 680
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$5;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$5;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    #getter for: Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->access$000(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPowerManager:Landroid/os/PowerManager;

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$5;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 684
    :cond_1
    return-void
.end method

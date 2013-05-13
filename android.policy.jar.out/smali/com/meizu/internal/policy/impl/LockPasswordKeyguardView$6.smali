.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;
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
    .line 1263
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1265
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    monitor-enter v1

    .line 1266
    :try_start_0
    const-string v0, "LockPasswordKeyguardView"

    const-string v2, "--------------mTimeOutRunnable---------------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    const/4 v2, 0x1

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->onActivityStarted(Z)V
    invoke-static {v0, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)V

    .line 1268
    monitor-exit v1

    .line 1269
    return-void

    .line 1268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

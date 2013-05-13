.class Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;
.super Ljava/lang/Object;
.source "LockViewBaseSe.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 632
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 635
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mClickedHome:Z

    .line 636
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onClickHome()V

    .line 639
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    new-instance v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4$1;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4$1;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 647
    return-void
.end method

.class Lcom/meizu/internal/policy/impl/LockViewBaseSe$4$1;
.super Ljava/lang/Object;
.source "LockViewBaseSe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4$1;->this$1:Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4$1;->this$1:Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mClickedHome:Z

    .line 643
    return-void
.end method

.class Lcom/meizu/internal/policy/impl/LockViewBaseSe$3;
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
    .line 230
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$3;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$3;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 234
    return-void
.end method

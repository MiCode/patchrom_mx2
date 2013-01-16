.class Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;
.super Landroid/content/BroadcastReceiver;
.source "LockViewBaseSe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    new-instance v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver$1;

    invoke-direct {v2, p0, v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver$1;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

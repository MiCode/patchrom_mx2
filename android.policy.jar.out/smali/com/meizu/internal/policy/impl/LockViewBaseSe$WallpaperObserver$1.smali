.class Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver$1;
.super Ljava/lang/Object;
.source "LockViewBaseSe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver$1;->this$1:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    iput-object p2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver$1;->val$action:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver$1;->this$1:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver$1;->this$1:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;->this$0:Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawableOfLockWallpaperToLockScreen()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 207
    :cond_0
    return-void
.end method

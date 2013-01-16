.class Lcom/meizu/internal/policy/impl/LockScreenMz$1;
.super Ljava/lang/Object;
.source "LockScreenMz.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockScreenMz;
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
    .line 30
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$1;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicVisibleChanged(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$1;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$1;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$1;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetDateShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 37
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$1;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$1;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetDateShow:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/LockScreenMz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    :cond_0
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/meizu/internal/policy/impl/LockScreenSe$1;
.super Ljava/lang/Object;
.source "LockScreenSe.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockScreenSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockScreenSe;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockScreenSe;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockScreenSe$1;->this$0:Lcom/meizu/internal/policy/impl/LockScreenSe;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicVisibleChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenSe$1;->this$0:Lcom/meizu/internal/policy/impl/LockScreenSe;

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 47
    if-eqz p1, :cond_0

    .line 51
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

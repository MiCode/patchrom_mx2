.class Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1;->this$0:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1;->this$0:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mLive:Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->access$000(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1;->this$0:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->access$102(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1;->this$0:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->access$300(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1$1;-><init>(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

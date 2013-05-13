.class Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;->this$0:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;->this$0:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    #calls: Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateFormat()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->access$300(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)V

    .line 139
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;->this$0:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 140
    return-void
.end method

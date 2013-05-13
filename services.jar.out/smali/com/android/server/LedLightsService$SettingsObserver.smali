.class Lcom/android/server/LedLightsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LedLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LedLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LedLightsService;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/LedLightsService$SettingsObserver;->this$0:Lcom/android/server/LedLightsService;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 107
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/server/LedLightsService$SettingsObserver;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$000(Lcom/android/server/LedLightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "button_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LedLightsService$SettingsObserver;->this$0:Lcom/android/server/LedLightsService;

    iget-object v2, p0, Lcom/android/server/LedLightsService$SettingsObserver;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$000(Lcom/android/server/LedLightsService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "button_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I
    invoke-static {v1, v2}, Lcom/android/server/LedLightsService;->access$102(Lcom/android/server/LedLightsService;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/server/LedLightsService$SettingsObserver;->this$0:Lcom/android/server/LedLightsService;

    iget-object v2, p0, Lcom/android/server/LedLightsService$SettingsObserver;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$100(Lcom/android/server/LedLightsService;)I

    move-result v2

    #setter for: Lcom/android/server/LedLightsService;->mCurrentBrightness:I
    invoke-static {v1, v2}, Lcom/android/server/LedLightsService;->access$202(Lcom/android/server/LedLightsService;I)I

    .line 126
    iget-object v1, p0, Lcom/android/server/LedLightsService$SettingsObserver;->this$0:Lcom/android/server/LedLightsService;

    iget-object v2, p0, Lcom/android/server/LedLightsService$SettingsObserver;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mCurrentBrightness:I
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$200(Lcom/android/server/LedLightsService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/LedLightsService;->setBrightness(I)V

    .line 127
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

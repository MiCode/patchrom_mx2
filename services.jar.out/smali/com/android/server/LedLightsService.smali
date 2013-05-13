.class public Lcom/android/server/LedLightsService;
.super Landroid/app/ILedLightsServiceManager$Stub;
.source "LedLightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LedLightsService$LedLight;,
        Lcom/android/server/LedLightsService$LightSetting;,
        Lcom/android/server/LedLightsService$LedButton;,
        Lcom/android/server/LedLightsService$SettingsObserver;
    }
.end annotation


# static fields
.field private static BACK_DISABLE_ID:[I = null

.field private static BACK_ENABLE_270_ID:[I = null

.field private static BACK_ENABLE_90_ID:[I = null

.field private static BACK_ENABLE_ID:[I = null

.field private static final LED_BACK_BUTTON_ID:I = 0x0

.field private static final LED_HOME_BUTTON_ID:I = 0xa

.field private static final LED_LIGHTS_COUNT:I = 0xd

.field private static final LED_LIGHTS_DEFAULT_CURRENT:I = 0x1

.field public static final LED_LIGHTS_MODE_BREATHE:I = 0x1

.field public static final LED_LIGHTS_MODE_LANDSCAPE:I = 0x7

.field public static final LED_LIGHTS_MODE_NONE:I = -0x1

.field public static final LED_LIGHTS_MODE_NORMAL:I = 0x0

.field private static final LED_LIGHTS_MODE_PORTRAIT:I = 0x8

.field private static final LED_MENU_BUTTON_ID:I = 0x5

.field private static MENU_DISABLE_ID:[I = null

.field private static MENU_ENABLE_90_ID:[I = null

.field private static MENU_ENABLE_ID:[I = null

.field private static final TAG:Ljava/lang/String; = "LedLightsService"

.field private static final ids:[Ljava/lang/String;

.field private static mKm:Landroid/app/KeyguardManager;


# instance fields
.field private mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

.field mCancelRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBrightness:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayOrientation:I

.field private mDragRunnable:Ljava/lang/Runnable;

.field private mHardwareMode:I

.field private mHomeButtonLight:Lcom/android/server/LedLightsService$LedButton;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAutoSuspend:I

.field private mIsBackEnable:Z

.field private mIsBackTempEnable:Z

.field private mIsDraging:Z

.field private mIsKeyguard:Z

.field private mIsKeyguardMenuEnable:Z

.field private mIsMenuEnable:Z

.field private mIsMenuTempEnable:Z

.field private mIsScreenOff:Z

.field private mIsTemporarySetting:Z

.field private mLedLightsServiceHandler:Landroid/os/Handler;

.field private mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

.field private mNativePointer:I

.field private mObserver:Lcom/android/server/LedLightsService$SettingsObserver;

.field mRotationRunnable:Ljava/lang/Runnable;

.field private mSettingMaxBrightness:I

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 31
    new-array v0, v4, [I

    aput v3, v0, v3

    sput-object v0, Lcom/android/server/LedLightsService;->BACK_DISABLE_ID:[I

    .line 32
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/LedLightsService;->BACK_ENABLE_ID:[I

    .line 33
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/LedLightsService;->BACK_ENABLE_90_ID:[I

    .line 34
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/LedLightsService;->BACK_ENABLE_270_ID:[I

    .line 36
    new-array v0, v4, [I

    aput v5, v0, v3

    sput-object v0, Lcom/android/server/LedLightsService;->MENU_DISABLE_ID:[I

    .line 37
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/LedLightsService;->MENU_ENABLE_ID:[I

    .line 38
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/LedLightsService;->MENU_ENABLE_90_ID:[I

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "light_sensor"

    aput-object v1, v0, v3

    const-string v1, "rotation"

    aput-object v1, v0, v4

    const-string v1, "ongoing"

    aput-object v1, v0, v5

    const-string v1, "notification"

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "touch_feedback"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "drag_feedback"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "normal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LedLightsService;->ids:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/LedLightsService;->mKm:Landroid/app/KeyguardManager;

    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/ILedLightsServiceManager$Stub;-><init>()V

    .line 53
    new-instance v2, Lcom/android/server/LedLightsService$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/server/LedLightsService$SettingsObserver;-><init>(Lcom/android/server/LedLightsService;)V

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mObserver:Lcom/android/server/LedLightsService$SettingsObserver;

    .line 56
    iput-boolean v5, p0, Lcom/android/server/LedLightsService;->mSystemReady:Z

    .line 57
    iput v5, p0, Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I

    .line 58
    iput-boolean v5, p0, Lcom/android/server/LedLightsService;->mIsKeyguard:Z

    .line 59
    iput-boolean v5, p0, Lcom/android/server/LedLightsService;->mIsScreenOff:Z

    .line 60
    iput-boolean v5, p0, Lcom/android/server/LedLightsService;->mIsBackEnable:Z

    .line 61
    iput-boolean v6, p0, Lcom/android/server/LedLightsService;->mIsMenuEnable:Z

    .line 62
    iput-boolean v5, p0, Lcom/android/server/LedLightsService;->mIsBackTempEnable:Z

    .line 63
    iput-boolean v5, p0, Lcom/android/server/LedLightsService;->mIsMenuTempEnable:Z

    .line 64
    iput v5, p0, Lcom/android/server/LedLightsService;->mDisplayOrientation:I

    .line 65
    iput v6, p0, Lcom/android/server/LedLightsService;->mIsAutoSuspend:I

    .line 70
    new-instance v2, Lcom/android/server/LedLightsService$LedButton;

    const/4 v3, 0x3

    const/16 v4, 0xa

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/LedLightsService$LedButton;-><init>(Lcom/android/server/LedLightsService;II)V

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mHomeButtonLight:Lcom/android/server/LedLightsService$LedButton;

    .line 71
    new-instance v2, Lcom/android/server/LedLightsService$LedButton;

    invoke-direct {v2, p0, v7, v5}, Lcom/android/server/LedLightsService$LedButton;-><init>(Lcom/android/server/LedLightsService;II)V

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    .line 72
    new-instance v2, Lcom/android/server/LedLightsService$LedButton;

    invoke-direct {v2, p0, v7, v7}, Lcom/android/server/LedLightsService$LedButton;-><init>(Lcom/android/server/LedLightsService;II)V

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    .line 73
    iput-boolean v5, p0, Lcom/android/server/LedLightsService;->mIsTemporarySetting:Z

    .line 74
    iput-boolean v5, p0, Lcom/android/server/LedLightsService;->mIsDraging:Z

    .line 75
    iput-boolean v6, p0, Lcom/android/server/LedLightsService;->mIsKeyguardMenuEnable:Z

    .line 222
    new-instance v2, Lcom/android/server/LedLightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/LedLightsService$1;-><init>(Lcom/android/server/LedLightsService;)V

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mRotationRunnable:Ljava/lang/Runnable;

    .line 251
    new-instance v2, Lcom/android/server/LedLightsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/LedLightsService$2;-><init>(Lcom/android/server/LedLightsService;)V

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mCancelRunnable:Ljava/lang/Runnable;

    .line 307
    new-instance v2, Lcom/android/server/LedLightsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/LedLightsService$3;-><init>(Lcom/android/server/LedLightsService;)V

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mDragRunnable:Ljava/lang/Runnable;

    .line 802
    new-instance v2, Lcom/android/server/LedLightsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/LedLightsService$4;-><init>(Lcom/android/server/LedLightsService;)V

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 882
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mLedLightsServiceHandler:Landroid/os/Handler;

    .line 77
    invoke-static {}, Lcom/android/server/LedLightsService;->init_native()I

    move-result v2

    iput v2, p0, Lcom/android/server/LedLightsService;->mNativePointer:I

    .line 78
    const-string v2, "LedLightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNativePointer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/LedLightsService;->mNativePointer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lcom/android/server/LedLightsService;->mContext:Landroid/content/Context;

    .line 80
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LedLightsService;->mDisplay:Landroid/view/Display;

    .line 84
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "button_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    iget v2, p0, Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I

    iput v2, p0, Lcom/android/server/LedLightsService;->mCurrentBrightness:I

    .line 92
    iget-object v2, p0, Lcom/android/server/LedLightsService;->mObserver:Lcom/android/server/LedLightsService$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/LedLightsService$SettingsObserver;->observe()V

    .line 93
    invoke-virtual {p0, v5, v5}, Lcom/android/server/LedLightsService;->setBackEnable(ZZ)V

    .line 94
    invoke-virtual {p0, v6, v5}, Lcom/android/server/LedLightsService;->setMenuEnable(ZZ)V

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v2, "android.intent.action.KEYGUARD_LOCK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v2, "android.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/server/LedLightsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LedLightsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void

    .line 86
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/LedLightsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LedLightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsKeyguardMenuEnable:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/LedLightsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsDraging:Z

    return v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/server/LedLightsService;->ids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/LedLightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/server/LedLightsService;->mSystemReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/LedLightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/server/LedLightsService;->mCurrentBrightness:I

    return v0
.end method

.method static synthetic access$2000()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/server/LedLightsService;->mKm:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    sput-object p0, Lcom/android/server/LedLightsService;->mKm:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/LedLightsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/server/LedLightsService;->mCurrentBrightness:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsTemporarySetting:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/LedLightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/server/LedLightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$2600(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/android/server/LedLightsService;->setBrightness_native(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/LedLightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/server/LedLightsService;->mHardwareMode:I

    return v0
.end method

.method static synthetic access$2800(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/server/LedLightsService;->setLight_native(III)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsKeyguard:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/LedLightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/server/LedLightsService;->mIsKeyguard:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsMenuTempEnable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsBackTempEnable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsMenuEnable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsBackEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsScreenOff:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/LedLightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/server/LedLightsService;->mIsScreenOff:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/LedLightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/LedLightsService;->isLedLightLocked()Z

    move-result v0

    return v0
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private isLedLightLocked()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->isLedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->isLedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native setBrightness_native(II)V
.end method

.method private static native setLightSlope_native(II)V
.end method

.method private static native setLight_native(III)V
.end method


# virtual methods
.method public applyCurrentMode()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->applyMode()V

    .line 394
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->applyMode()V

    .line 395
    return-void
.end method

.method public cancelLastSetting()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mLedLightsServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LedLightsService;->mCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/android/server/LedLightsService;->mCurrentBrightness:I

    return v0
.end method

.method public getCurrentLedLights()[I
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTemporarySettingEnable()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsTemporarySetting:Z

    return v0
.end method

.method public setBackEnable(ZZ)V
    .locals 5
    .parameter "enable"
    .parameter "cancelable"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, ids:[I
    iget-object v1, p0, Lcom/android/server/LedLightsService;->mLedLightsServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/LedLightsService;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    if-eqz p1, :cond_2

    .line 153
    iget v1, p0, Lcom/android/server/LedLightsService;->mDisplayOrientation:I

    if-ne v1, v4, :cond_0

    .line 154
    sget-object v0, Lcom/android/server/LedLightsService;->BACK_ENABLE_90_ID:[I

    .line 164
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/LedLightsService;->setTemporarySettingEnable(Z)V

    .line 165
    if-eqz p2, :cond_4

    .line 166
    iget-boolean v1, p0, Lcom/android/server/LedLightsService;->mSystemReady:Z

    if-nez v1, :cond_3

    .line 177
    :goto_1
    return-void

    .line 155
    :cond_0
    iget v1, p0, Lcom/android/server/LedLightsService;->mDisplayOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 156
    sget-object v0, Lcom/android/server/LedLightsService;->BACK_ENABLE_270_ID:[I

    goto :goto_0

    .line 158
    :cond_1
    sget-object v0, Lcom/android/server/LedLightsService;->BACK_ENABLE_ID:[I

    goto :goto_0

    .line 161
    :cond_2
    sget-object v0, Lcom/android/server/LedLightsService;->BACK_DISABLE_ID:[I

    goto :goto_0

    .line 169
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/LedLightsService;->mIsBackTempEnable:Z

    .line 170
    iget-object v1, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v1}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 171
    iget-object v1, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v1, v0, v3, v3, v4}, Lcom/android/server/LedLightsService$LedButton;->setLedLights([IIII)V

    goto :goto_1

    .line 173
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/LedLightsService;->mIsBackEnable:Z

    .line 174
    const-string v1, "normal"

    invoke-virtual {p0, v3, v1, v3, v0}, Lcom/android/server/LedLightsService;->updateLedLights(ILjava/lang/String;I[I)V

    goto :goto_1
.end method

.method public setBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 373
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 374
    const/16 p1, 0xff

    .line 375
    :cond_0
    if-gez p1, :cond_1

    .line 376
    const/4 p1, 0x0

    .line 377
    :cond_1
    iput p1, p0, Lcom/android/server/LedLightsService;->mCurrentBrightness:I

    .line 378
    iget v0, p0, Lcom/android/server/LedLightsService;->mNativePointer:I

    invoke-static {v0, p1}, Lcom/android/server/LedLightsService;->setBrightness_native(II)V

    .line 379
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 215
    iget v0, p0, Lcom/android/server/LedLightsService;->mDisplayOrientation:I

    if-eq v0, p1, :cond_0

    .line 216
    iput p1, p0, Lcom/android/server/LedLightsService;->mDisplayOrientation:I

    .line 217
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mLedLightsServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LedLightsService;->mRotationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mLedLightsServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LedLightsService;->mRotationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_0
    return-void
.end method

.method public setHardWareFlashMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 398
    iput p1, p0, Lcom/android/server/LedLightsService;->mHardwareMode:I

    .line 399
    iget v0, p0, Lcom/android/server/LedLightsService;->mNativePointer:I

    invoke-static {v0, p1}, Lcom/android/server/LedLightsService;->setLightSlope_native(II)V

    .line 400
    return-void
.end method

.method public setKeyGuardLight(Z)V
    .locals 5
    .parameter "isMenuEnable"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/android/server/LedLightsService;->mIsKeyguardMenuEnable:Z

    .line 272
    sget-object v0, Lcom/android/server/LedLightsService;->BACK_ENABLE_ID:[I

    .line 274
    .local v0, backlights:[I
    if-eqz p1, :cond_1

    .line 275
    sget-object v1, Lcom/android/server/LedLightsService;->MENU_ENABLE_ID:[I

    .line 280
    .local v1, menulights:[I
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/LedLightsService;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/LedLightsService;->mIsScreenOff:Z

    if-eqz v2, :cond_2

    .line 287
    :cond_0
    :goto_1
    return-void

    .line 277
    .end local v1           #menulights:[I
    :cond_1
    sget-object v1, Lcom/android/server/LedLightsService;->MENU_DISABLE_ID:[I

    .restart local v1       #menulights:[I
    goto :goto_0

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v2}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 283
    iget-object v2, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v2}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 285
    iget-object v2, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v2, v0, v3, v3, v4}, Lcom/android/server/LedLightsService$LedButton;->setLedLights([IIII)V

    .line 286
    iget-object v2, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v2, v1, v3, v3, v4}, Lcom/android/server/LedLightsService$LedButton;->setLedLights([IIII)V

    goto :goto_1
.end method

.method public setLedLightLocked(IIII)V
    .locals 1
    .parameter "id"
    .parameter "current"
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 381
    iget v0, p0, Lcom/android/server/LedLightsService;->mNativePointer:I

    invoke-static {v0, p1, p2}, Lcom/android/server/LedLightsService;->setLight_native(III)V

    .line 382
    return-void
.end method

.method public setMenuEnable(ZZ)V
    .locals 5
    .parameter "enable"
    .parameter "cancelable"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, id:[I
    iget-object v1, p0, Lcom/android/server/LedLightsService;->mLedLightsServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/LedLightsService;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget v1, p0, Lcom/android/server/LedLightsService;->mDisplayOrientation:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/server/LedLightsService;->mDisplayOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 184
    :cond_0
    if-eqz p1, :cond_1

    .line 186
    sget-object v0, Lcom/android/server/LedLightsService;->MENU_ENABLE_90_ID:[I

    .line 200
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/LedLightsService;->setTemporarySettingEnable(Z)V

    .line 201
    if-eqz p2, :cond_5

    .line 202
    iget-boolean v1, p0, Lcom/android/server/LedLightsService;->mSystemReady:Z

    if-nez v1, :cond_4

    .line 212
    :goto_1
    return-void

    .line 189
    :cond_1
    sget-object v0, Lcom/android/server/LedLightsService;->MENU_DISABLE_ID:[I

    goto :goto_0

    .line 192
    :cond_2
    if-eqz p1, :cond_3

    .line 194
    sget-object v0, Lcom/android/server/LedLightsService;->MENU_ENABLE_ID:[I

    goto :goto_0

    .line 197
    :cond_3
    sget-object v0, Lcom/android/server/LedLightsService;->MENU_DISABLE_ID:[I

    goto :goto_0

    .line 204
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/LedLightsService;->mIsMenuTempEnable:Z

    .line 205
    iget-object v1, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v1}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 206
    iget-object v1, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v1, v0, v3, v3, v4}, Lcom/android/server/LedLightsService$LedButton;->setLedLights([IIII)V

    goto :goto_1

    .line 208
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/LedLightsService;->mIsMenuEnable:Z

    .line 209
    const/4 v1, 0x5

    const-string v2, "normal"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/LedLightsService;->updateLedLights(ILjava/lang/String;I[I)V

    goto :goto_1
.end method

.method public setTemporarySettingEnable(Z)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/android/server/LedLightsService;->mIsTemporarySetting:Z

    .line 241
    return-void
.end method

.method public startDrag()V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsDraging:Z

    .line 291
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mLedLightsServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LedLightsService;->mDragRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method

.method public startTouchFeedback(I)V
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 300
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    #calls: Lcom/android/server/LedLightsService$LedButton;->toucheFeedBack()V
    invoke-static {v0}, Lcom/android/server/LedLightsService$LedButton;->access$1300(Lcom/android/server/LedLightsService$LedButton;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    #calls: Lcom/android/server/LedLightsService$LedButton;->toucheFeedBack()V
    invoke-static {v0}, Lcom/android/server/LedLightsService$LedButton;->access$1300(Lcom/android/server/LedLightsService$LedButton;)V

    goto :goto_0
.end method

.method public stopDrag()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LedLightsService;->mIsDraging:Z

    .line 296
    iget v0, p0, Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/server/LedLightsService;->setBrightness(I)V

    .line 297
    return-void
.end method

.method public turnOffLight(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 355
    monitor-enter p0

    .line 356
    sparse-switch p1, :sswitch_data_0

    .line 367
    :try_start_0
    monitor-exit p0

    .line 370
    :goto_0
    return-void

    .line 358
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mHomeButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOff()V

    .line 369
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 361
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOff()V

    goto :goto_1

    .line 364
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public turnOnLight(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 337
    monitor-enter p0

    .line 338
    sparse-switch p1, :sswitch_data_0

    .line 349
    :try_start_0
    monitor-exit p0

    .line 352
    :goto_0
    return-void

    .line 340
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mHomeButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOn()V

    .line 351
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 343
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOn()V

    goto :goto_1

    .line 346
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public updateLedLights(ILjava/lang/String;I[I)V
    .locals 2
    .parameter "buttonType"
    .parameter "functionId"
    .parameter "mode"
    .parameter "lights"

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    sparse-switch p1, :sswitch_data_0

    .line 143
    :try_start_0
    monitor-exit p0

    .line 146
    :goto_0
    return-void

    .line 134
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mHomeButtonLight:Lcom/android/server/LedLightsService$LedButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p4, p3, v1}, Lcom/android/server/LedLightsService$LedButton;->updateButtonLight(Ljava/lang/String;[IIZ)V

    .line 145
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 137
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p4, p3, v1}, Lcom/android/server/LedLightsService$LedButton;->updateButtonLight(Ljava/lang/String;[IIZ)V

    goto :goto_1

    .line 140
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p4, p3, v1}, Lcom/android/server/LedLightsService$LedButton;->updateButtonLight(Ljava/lang/String;[IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_0
    .end sparse-switch
.end method

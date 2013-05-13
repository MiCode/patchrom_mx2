.class public Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.super Lcom/android/internal/policy/impl/KeyguardViewBase;
.source "LockPasswordKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardStatusbarUnlockPasswordCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;,
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$ContructIntent;,
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;,
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;,
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;,
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;,
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;,
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;,
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    }
.end annotation


# static fields
.field public static final ACCOUNT_DISABLE_FLAG:Ljava/lang/String; = "flagDisable"

.field public static final ACCOUNT_ENABLE:Ljava/lang/String; = "flagDisable is null OR flagDisable = 0"

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_PROJECTION_MESSAGE:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field static final DEBUG_CONFIGURATION:Z = true

.field private static final KEUGARD_DONE_TIMEOUT:I = 0x1388

.field private static final KEUGARD_DONE_TIMEOUT_FOR_EMAIL_LONG:I = 0x320

.field private static final KEUGARD_DONE_TIMEOUT_FOR_EMAIL_SHORT:I = 0x0

.field protected static final MSG_QUERY_MISSED_CALL:I = 0x64

.field protected static final MSG_QUERY_NEW_EMAIL:I = 0x66

.field protected static final MSG_QUERY_UNREAD_MMS:I = 0x65

.field private static final MSG_RESET:I = 0x3e9

.field public static final NOTIFIED_MESSAGE_COUNT:Ljava/lang/String; = "notifiedMessageCount"

.field public static final NOTIFIED_MESSAGE_ID:Ljava/lang/String; = "notifiedMessageId"

.field private static final QUERY_CALL_TOKEN:I = 0xa

.field private static final QUERY_EMAIL_TOKEN:I = 0xd

.field private static final QUERY_MMS_TOKEN:I = 0xc

.field private static final QUERY_SMS_TOKEN:I = 0xb

.field public static final RECORD_ID:Ljava/lang/String; = "_id"

.field private static final TAG:Ljava/lang/String; = "LockPasswordKeyguardView"

.field private static final TAG_QUERY:Ljava/lang/String; = "LockQuery"

.field private static emailPackageName:Ljava/lang/String;

.field static final sCallLogUri:Landroid/net/Uri;

.field private static sIsFirstAppearanceAfterBoot:Z

.field static final sMessageEmailUri:Landroid/net/Uri;

.field static final sMmsInboxUri:Landroid/net/Uri;

.field static final sNewEmailUri:Landroid/net/Uri;

.field static final sSmsInboxUri:Landroid/net/Uri;

.field static final sSmsLogUri:Landroid/net/Uri;


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field protected mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

.field protected mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

.field private mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mIsVerifyUnlockOnly:Z

.field mKeyguardScreenCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/view/View;

.field private mMissedCallCount:I

.field private mMissedCallObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;

.field private mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

.field private mMusicCallback:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

.field private mNewEmailCount:I

.field private mNewEmailObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;

.field private mPluggedIn:Z

.field private mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

.field private mRequiresSim:Z

.field mResolver:Landroid/content/ContentResolver;

.field private mScreenOn:Z

.field protected mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

.field private mSmsCount:I

.field mTimeOutRunnable:Ljava/lang/Runnable;

.field private mUndertableStartingManager:Landroid/app/IUndertableStartingManager;

.field private mUnlockScreen:Landroid/view/View;

.field private mUnlockScreenMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

.field private mUnreadMsgObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;

.field private mUnreadSmsCount:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWaitKeyguardDone:Z

.field private final mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

.field private mWindowFocused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    sput-boolean v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    .line 165
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sCallLogUri:Landroid/net/Uri;

    .line 166
    const-string v0, "content://mms-sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sSmsLogUri:Landroid/net/Uri;

    .line 167
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sSmsInboxUri:Landroid/net/Uri;

    .line 168
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sMmsInboxUri:Landroid/net/Uri;

    .line 171
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sNewEmailUri:Landroid/net/Uri;

    .line 1158
    const-string v0, "com.android.email"

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->emailPackageName:Ljava/lang/String;

    .line 1366
    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sMessageEmailUri:Landroid/net/Uri;

    .line 1367
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "notifiedMessageId"

    aput-object v1, v0, v2

    const-string v1, "notifiedMessageCount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 1371
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->CONTENT_PROJECTION_MESSAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/ScreenshotHelper;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V
    .locals 3
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"
    .parameter "controllerMonitor"
    .parameter "screenshotHelper"
    .parameter "dragCallback"

    .prologue
    const/4 v2, 0x0

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    .line 75
    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWindowFocused:Z

    .line 118
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 124
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreenMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 130
    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 155
    iput v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    .line 191
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    .line 230
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mKeyguardScreenCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    .line 650
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 1154
    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z

    .line 1263
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mTimeOutRunnable:Ljava/lang/Runnable;

    .line 1444
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$7;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$7;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMusicCallback:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    .line 479
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 480
    const-string v0, "keyguard.no_require_sim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mRequiresSim:Z

    .line 481
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 482
    iput-object p4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 483
    iput-object p5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    .line 484
    iput-object p6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    .line 485
    iput-object p7, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    .line 486
    iput-object p8, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    .line 488
    sput-boolean v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    .line 489
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mPluggedIn:Z

    .line 490
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenOn:Z

    .line 496
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->setFocusableInTouchMode(Z)V

    .line 497
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->setDescendantFocusability(I)V

    .line 499
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getInitialMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    .line 502
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 504
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;

    .line 505
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadMsgObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;

    .line 506
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;

    .line 508
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mResolver:Landroid/content/ContentResolver;

    .line 509
    iput v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    .line 510
    iput v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    .line 511
    iput v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailCount:I

    .line 512
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    .line 514
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerStatusbarChangedCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardStatusbarUnlockPasswordCallback;)V

    .line 515
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMusicCallback:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->registerMusicInfoCallback(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;)V

    .line 517
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;

    if-nez v0, :cond_0

    .line 518
    const-string v0, "NotificationStarting"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUndertableStartingManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUndertableStartingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;

    .line 521
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isPassword()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherActivity(Landroid/content/Intent;ZJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->emailPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/app/IUndertableStartingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->onActivityStarted(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launchFastActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateMissedCall(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    return v0
.end method

.method static synthetic access$2502(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    return p1
.end method

.method static synthetic access$2512(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    return v0
.end method

.method static synthetic access$2600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateUnreadSms(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateNewEmail(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherEmailWhenNoIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSimPin()Z

    move-result v0

    return v0
.end method

.method private enableKeyguardPassword()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 954
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "meuzu_keyguard_lock"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInitialMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    .locals 2

    .prologue
    .line 882
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 883
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 886
    :cond_0
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 891
    :goto_0
    return-object v1

    .line 888
    :cond_1
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    .line 889
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    goto :goto_0

    .line 891
    :cond_2
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    goto :goto_0
.end method

.method private getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    .locals 6

    .prologue
    .line 900
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 902
    .local v2, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_1

    .line 903
    :cond_0
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 927
    .local v0, currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    :goto_0
    return-object v0

    .line 904
    .end local v0           #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    :cond_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 905
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    goto :goto_0

    .line 907
    .end local v0           #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    :cond_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 908
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    .line 924
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unlock mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 914
    :sswitch_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->enableKeyguardPassword()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 915
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    goto :goto_0

    .line 917
    .end local v0           #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    :cond_3
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 919
    .restart local v0       #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    goto :goto_0

    .line 921
    .end local v0           #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    :sswitch_1
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 922
    .restart local v0       #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    goto :goto_0

    .line 908
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private isPassword()Z
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isSecurityTempPass()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 5

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v1

    .line 727
    .local v1, unlockMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .line 728
    .local v0, secure:Z
    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->$SwitchMap$com$meizu$internal$policy$impl$LockPasswordKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 743
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 734
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isPassword()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->enableKeyguardPassword()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSimPin()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 745
    :goto_0
    :pswitch_1
    return v0

    .line 734
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 737
    :pswitch_2
    const/4 v0, 0x1

    .line 738
    goto :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isSimPin()Z
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchFastActivity(Landroid/content/Intent;Z)V
    .locals 5
    .parameter "intent"
    .parameter "isSecurity"

    .prologue
    .line 1311
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1312
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputForced(ILandroid/os/ResultReceiver;)Z

    .line 1314
    const v2, 0x30028000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1319
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 1320
    if-nez p2, :cond_0

    .line 1321
    invoke-virtual {p1}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v2

    and-int/lit16 v2, v2, -0x81

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setMeizuFlags(I)Landroid/content/Intent;

    .line 1325
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 1327
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1336
    :goto_2
    return-void

    .line 1323
    :cond_0
    const/16 v2, 0x80

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LockPasswordKeyguardView"

    const-string v3, "can\'t dismiss keyguard on launch"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1333
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1334
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "LockPasswordKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity not found for intent + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private launcherActivity(Landroid/content/Intent;ZJ)V
    .locals 5
    .parameter "intent"
    .parameter "dismissKeyguard"
    .parameter "delayMillis"

    .prologue
    .line 1339
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1340
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputForced(ILandroid/os/ResultReceiver;)Z

    .line 1341
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1346
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 1347
    if-eqz p2, :cond_0

    .line 1349
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1359
    :goto_1
    return-void

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LockPasswordKeyguardView"

    const-string v3, "can\'t dismiss keyguard on launch"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1356
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1357
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "LockPasswordKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity not found for intent + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private launcherEmailWhenNoIntent()Landroid/content/Intent;
    .locals 22

    .prologue
    .line 1377
    const/4 v13, 0x0

    .line 1378
    .local v13, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sNewEmailUri:Landroid/net/Uri;

    sget-object v4, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "notifiedMessageCount> 0 AND (flagDisable is null OR flagDisable = 0)"

    const/4 v6, 0x0

    const-string v7, "notifiedMessageId DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1382
    .local v11, cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1383
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1384
    .local v8, accountId:J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1385
    .local v16, messageId:J
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .line 1386
    .local v19, newCount:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sMessageEmailUri:Landroid/net/Uri;

    sget-object v4, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->CONTENT_PROJECTION_MESSAGE:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1388
    .local v18, msgCursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1389
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1391
    .local v14, mailboxId:J
    new-instance v10, Landroid/net/Uri$Builder;

    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    .line 1392
    .local v10, b:Landroid/net/Uri$Builder;
    const-string v2, "content"

    invoke-virtual {v10, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1393
    const-string v2, "ui.email.android.com"

    invoke-virtual {v10, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1394
    const-string v2, "/view/mailbox"

    invoke-virtual {v10, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1396
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_1

    .line 1397
    const-string v2, "ACCOUNT_ID"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1400
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_2

    .line 1401
    const-string v2, "MAILBOX_ID"

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1404
    :cond_2
    const-wide/16 v2, 0x1

    cmp-long v2, v19, v2

    if-nez v2, :cond_3

    .line 1405
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-eqz v2, :cond_3

    .line 1406
    const-string v2, "MESSAGE_ID"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1410
    :cond_3
    new-instance v13, Landroid/content/Intent;

    .end local v13           #i:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1414
    .restart local v13       #i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    long-to-int v3, v8

    const/high16 v4, 0x800

    invoke-static {v2, v3, v13, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 1417
    .local v21, pending:Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    .end local v8           #accountId:J
    .end local v10           #b:Landroid/net/Uri$Builder;
    .end local v14           #mailboxId:J
    .end local v16           #messageId:J
    .end local v18           #msgCursor:Landroid/database/Cursor;
    .end local v19           #newCount:J
    .end local v21           #pending:Landroid/app/PendingIntent;
    :cond_4
    :goto_0
    return-object v13

    .line 1418
    .restart local v8       #accountId:J
    .restart local v10       #b:Landroid/net/Uri$Builder;
    .restart local v14       #mailboxId:J
    .restart local v16       #messageId:J
    .restart local v18       #msgCursor:Landroid/database/Cursor;
    .restart local v19       #newCount:J
    .restart local v21       #pending:Landroid/app/PendingIntent;
    :catch_0
    move-exception v12

    .line 1419
    .local v12, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v12}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method private onActivityStarted(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 1257
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z

    if-nez v0, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1259
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 1260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z

    goto :goto_0
.end method

.method private recreateLockScreen()V
    .locals 4

    .prologue
    .line 591
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 593
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 594
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeView(Landroid/view/View;)V

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    .line 598
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->addView(Landroid/view/View;)V

    .line 601
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateUnreadSms(I)V

    .line 602
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateMissedCall(I)V

    .line 603
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateNewEamil(I)V

    .line 604
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->refreshBatteryInfo(ZZI)V

    .line 609
    :cond_1
    return-void
.end method

.method private recreateUnlockScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;)V
    .locals 4
    .parameter "unlockMode"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 614
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 615
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeView(Landroid/view/View;)V

    .line 618
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->createUnlockScreenFor(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 619
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->addView(Landroid/view/View;)V

    .line 622
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateUnreadSms(I)V

    .line 623
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateMissedCall(I)V

    .line 624
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateNewEamil(I)V

    .line 625
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->refreshBatteryInfo(ZZI)V

    .line 629
    :cond_1
    return-void
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mRequiresSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMissedCall(I)V
    .locals 2
    .parameter "missedCallCount"

    .prologue
    .line 1077
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    .line 1082
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v1, v1, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v1, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    .line 1084
    .local v0, lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateMissedCall(I)V

    .line 1086
    .end local v0           #lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    :cond_0
    return-void
.end method

.method private updateNewEmail(I)V
    .locals 2
    .parameter "newEmailCount"

    .prologue
    .line 1101
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailCount:I

    .line 1106
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v1, v1, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v1, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    .line 1108
    .local v0, lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateNewEamil(I)V

    .line 1110
    .end local v0           #lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    :cond_0
    return-void
.end method

.method private updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V
    .locals 10
    .parameter "mode"
    .parameter "force"

    .prologue
    const/4 v9, 0x0

    .line 750
    const-string v6, "LockPasswordKeyguardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**** UPDATE SCREEN: mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " last mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", force = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 753
    .local v2, oldMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 756
    sget-object v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v6, :cond_1

    .line 757
    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-nez v6, :cond_1

    .line 758
    :cond_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->recreateLockScreen()V

    .line 763
    :cond_1
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v4

    .line 764
    .local v4, unlockMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    sget-object v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v6, :cond_3

    sget-object v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-eq v4, v6, :cond_3

    .line 765
    if-nez p2, :cond_2

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreenMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-eq v4, v6, :cond_9

    .line 766
    :cond_2
    invoke-direct {p0, v4}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->recreateUnlockScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;)V

    .line 775
    :cond_3
    :goto_0
    sget-object v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v6, :cond_a

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 776
    .local v1, goneScreen:Landroid/view/View;
    :goto_1
    sget-object v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v6, :cond_b

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    .line 778
    .local v5, visibleScreen:Landroid/view/View;
    :goto_2
    sget-object v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v6, :cond_c

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v0, checkPackage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "com.android.email"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v3, startActivity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.email"

    const-string v8, "com.android.email.activity.MessageListFragment"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->initCheckAndStartActivityList(Ljava/util/List;Ljava/util/List;)V

    .line 785
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v6, :cond_4

    .line 786
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v6, v9}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->relayoutForPasswordKeyguard(Z)V

    .line 788
    :cond_4
    sget-object v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne v2, v6, :cond_5

    .line 789
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->queryExtraState()V

    .line 810
    .end local v0           #checkPackage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #startActivity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-object v6, v5

    check-cast v6, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v6

    invoke-interface {v7, v6}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setNeedsInput(Z)V

    .line 813
    const-string v6, "LockPasswordKeyguardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v6, "LockPasswordKeyguardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Visible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-boolean v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenOn:Z

    if-eqz v6, :cond_7

    .line 818
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    move-object v6, v1

    .line 819
    check-cast v6, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 821
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v5

    .line 822
    check-cast v6, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 826
    :cond_7
    if-eqz v1, :cond_8

    .line 827
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 829
    :cond_8
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 830
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->requestLayout()V

    .line 832
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move-result v6

    if-nez v6, :cond_e

    .line 833
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 767
    .end local v1           #goneScreen:Landroid/view/View;
    .end local v5           #visibleScreen:Landroid/view/View;
    :cond_9
    sget-object v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-ne v4, v6, :cond_3

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v6, v6, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    if-eqz v6, :cond_3

    .line 769
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v6, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v6}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateViewForMode()V

    goto/16 :goto_0

    .line 775
    :cond_a
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    goto/16 :goto_1

    .line 776
    .restart local v1       #goneScreen:Landroid/view/View;
    :cond_b
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    goto/16 :goto_2

    .line 800
    .restart local v5       #visibleScreen:Landroid/view/View;
    :cond_c
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v6, :cond_d

    .line 801
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->relayoutForPasswordKeyguard(Z)V

    .line 803
    :cond_d
    sget-object v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne v2, v6, :cond_5

    .line 804
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->unRegisterContentObserver()V

    goto/16 :goto_3

    .line 836
    :cond_e
    return-void
.end method

.method private updateUnreadSms(I)V
    .locals 2
    .parameter "unreadSmsCount"

    .prologue
    .line 1089
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    .line 1094
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v1, v1, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v1, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    .line 1096
    .local v0, lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateUnreadSms(I)V

    .line 1098
    .end local v0           #lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 702
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 704
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 705
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeView(Landroid/view/View;)V

    .line 706
    iput-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 710
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 711
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeView(Landroid/view/View;)V

    .line 712
    iput-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 715
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMusicCallback:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 717
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->cleanForceShowMusic()V

    .line 719
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z

    .line 722
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->unRegisterContentObserver()V

    .line 723
    return-void
.end method

.method createLockScreen()Landroid/view/View;
    .locals 7

    .prologue
    .line 839
    new-instance v0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mKeyguardScreenCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-direct/range {v0 .. v6}, Lcom/meizu/internal/policy/impl/LockScreenMz;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    .line 844
    .local v0, lockView:Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 845
    return-object v0
.end method

.method createUnlockScreenFor(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 8
    .parameter "unlockMode"

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 852
    .local v0, unlockView:Landroid/view/View;
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-ne p1, v1, :cond_0

    .line 853
    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    .end local v0           #unlockView:Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mKeyguardScreenCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-direct/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    .line 872
    .restart local v0       #unlockView:Landroid/view/View;
    :goto_0
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreenMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 873
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 874
    return-object v0

    .line 860
    :cond_0
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-ne p1, v1, :cond_1

    .line 861
    new-instance v0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    .end local v0           #unlockView:Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mKeyguardScreenCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-direct/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    .restart local v0       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 869
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown unlock mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 531
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 532
    return-void
.end method

.method public getTopActivit()Landroid/content/ComponentName;
    .locals 6

    .prologue
    .line 1246
    const/4 v2, 0x0

    .line 1247
    .local v2, ret:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1248
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1249
    .local v3, runTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1250
    .local v1, info:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    .line 1251
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1253
    :cond_0
    return-object v2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/16 v5, 0x3e9

    .line 640
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 641
    .local v0, resources:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 642
    const-string v1, "LockPasswordKeyguardView"

    const-string v2, "**** re-creating lock screen since config changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 648
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onDetachedFromWindow()V

    .line 637
    return-void
.end method

.method public onHideMe(Z)V
    .locals 1
    .parameter "isKeyguarDown"

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onHideMe(Z)V

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onHideMe(Z)V

    .line 1296
    :cond_1
    return-void
.end method

.method public onPasswordStateChangedByStatusbar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1275
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v0

    .line 1276
    .local v0, mode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isPassword()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->enableKeyguardPassword()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSimPin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1279
    :cond_1
    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    invoke-direct {p0, v2, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    .line 1284
    :goto_0
    return-void

    .line 1281
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 1282
    .local v1, oldMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    invoke-direct {p0, v2, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenOn:Z

    .line 555
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 560
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->onScreenOff()V

    .line 564
    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenOn:Z

    .line 570
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->show()V

    .line 571
    return-void
.end method

.method public onShowMe()V
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onShowMe()V

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onShowMe()V

    .line 1308
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 587
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWindowFocused:Z

    .line 588
    return-void
.end method

.method public queryExtraState()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1525
    const-string v0, "LockQuery"

    const-string v1, "queryExtraState and registerContentObserver---------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sCallLogUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;

    invoke-virtual {v0, v1, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1528
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sSmsLogUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadMsgObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;

    invoke-virtual {v0, v1, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1530
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sNewEmailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;

    invoke-virtual {v0, v1, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1533
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    const/16 v1, 0xa

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sCallLogUri:Landroid/net/Uri;

    const-string v5, "(type=3 AND (is_read=0 OR is_read IS NULL) AND duration>=5) OR (type=6 AND (is_read=0 OR is_read IS NULL))"

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    const/16 v1, 0xb

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sSmsInboxUri:Landroid/net/Uri;

    const-string v5, " read = ? "

    new-array v6, v8, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v6, v9

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    const/16 v1, 0xc

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sMmsInboxUri:Landroid/net/Uri;

    const-string v5, " read = ? "

    new-array v6, v8, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v6, v9

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    const/16 v1, 0xd

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sNewEmailUri:Landroid/net/Uri;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "sum(notifiedMessageCount)"

    aput-object v5, v4, v9

    const-string v5, "flagDisable is null OR flagDisable = 0"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 536
    const/4 v0, 0x1

    .line 537
    .local v0, realReset:Z
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->isCheckingPassword()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 540
    :cond_0
    :goto_0
    const-string v1, "PasswordAndSimUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LockPasswordKeyguard reset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    if-eqz v0, :cond_1

    .line 542
    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 545
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 547
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 538
    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 582
    :cond_1
    return-void
.end method

.method public startActivityIfNeed()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 1114
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1115
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1117
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1118
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 1120
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1121
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1123
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    if-lez v5, :cond_2

    .line 1124
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v3, phoneIntent:Landroid/content/Intent;
    const-string v5, "com.android.contacts"

    const-string v6, "com.android.contacts.ContactsLaunchActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    const/high16 v5, 0x1003

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1127
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 1128
    move-object v1, v3

    .line 1129
    .local v1, intent:Landroid/content/Intent;
    new-instance v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$4;

    invoke-direct {v5, p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$4;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1136
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #phoneIntent:Landroid/content/Intent;
    :cond_2
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    if-lez v5, :cond_0

    .line 1137
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v4, smsIntent:Landroid/content/Intent;
    const-string v5, "com.android.mms"

    const-string v6, "com.android.mms.ui.ConversationList"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    const/high16 v5, 0x1401

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1142
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 1143
    move-object v1, v4

    .line 1144
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$5;

    invoke-direct {v5, p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$5;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 1548
    const-string v0, "LockQuery"

    const-string v1, "unRegisterContentObserver---------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1550
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadMsgObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1551
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1552
    return-void
.end method

.method public verifyUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 686
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 698
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreenMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSimPin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 695
    :cond_1
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 696
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 933
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 936
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    .line 937
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_0
.end method

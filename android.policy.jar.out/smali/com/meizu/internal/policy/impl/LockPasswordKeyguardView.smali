.class public Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.super Lcom/android/internal/policy/impl/KeyguardViewBase;
.source "LockPasswordKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardStatusbarUnlockPasswordCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$9;,
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
.field private static final DEBUG:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field private static final KEUGARD_DONE_TIMEOUT:I = 0x12c

.field protected static final MSG_QUERY_MISSED_CALL:I = 0x64

.field protected static final MSG_QUERY_NEW_EMAIL:I = 0x66

.field protected static final MSG_QUERY_UNREAD_MMS:I = 0x65

.field private static final MSG_RESET:I = 0x3e9

.field private static final QUERY_CALL_TOKEN:I = 0xa

.field private static final QUERY_EMAIL_TOKEN:I = 0xd

.field private static final QUERY_MMS_TOKEN:I = 0xc

.field private static final QUERY_SMS_TOKEN:I = 0xb

.field private static final TAG:Ljava/lang/String; = "LockPasswordKeyguardView"

.field static final sCallLogUri:Landroid/net/Uri;

.field private static sIsFirstAppearanceAfterBoot:Z

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

.field private mRecreateRunnable:Ljava/lang/Runnable;

.field private mRequiresSim:Z

.field mResolver:Landroid/content/ContentResolver;

.field mRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field protected mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

.field private mSmsCount:I

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
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    .line 166
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sCallLogUri:Landroid/net/Uri;

    .line 167
    const-string v0, "content://mms-sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sSmsLogUri:Landroid/net/Uri;

    .line 170
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sSmsInboxUri:Landroid/net/Uri;

    .line 171
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sMmsInboxUri:Landroid/net/Uri;

    .line 172
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sNewEmailUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/ScreenshotHelper;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V
    .locals 22
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"
    .parameter "controllerMonitor"
    .parameter "screenshotHelper"
    .parameter "dragCallback"

    .prologue
    .line 463
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    .line 77
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWindowFocused:Z

    .line 119
    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 125
    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreenMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    .line 191
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$1;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    .line 213
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$2;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    .line 252
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$3;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mKeyguardScreenCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    .line 656
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$4;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 1150
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z

    .line 1256
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$7;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mRunnable:Ljava/lang/Runnable;

    .line 1345
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMusicCallback:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 466
    const-string v2, "keyguard.no_require_sim"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mRequiresSim:Z

    .line 467
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 468
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 469
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    .line 470
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    .line 471
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    .line 472
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    .line 474
    const/4 v2, 0x0

    sput-boolean v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mPluggedIn:Z

    .line 476
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenOn:Z

    .line 482
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->setFocusableInTouchMode(Z)V

    .line 483
    const/high16 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->setDescendantFocusability(I)V

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getInitialMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 490
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;

    .line 491
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadMsgObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;

    .line 492
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sCallLogUri:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sSmsLogUri:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadMsgObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sNewEmailUri:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mResolver:Landroid/content/ContentResolver;

    .line 501
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    .line 502
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    .line 503
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailCount:I

    .line 504
    new-instance v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    const/16 v3, 0xa

    const/4 v4, 0x0

    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sCallLogUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "(type=3 AND (is_read=0 OR is_read IS NULL) AND duration>=5) OR (type=6 AND (is_read=0 OR is_read IS NULL))"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v7, "(type = 1 AND read = 0)"

    .line 512
    .local v7, NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    const/16 v3, 0xb

    const/4 v4, 0x0

    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sSmsInboxUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v13, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    .line 521
    .local v13, NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    const/16 v9, 0xc

    const/4 v10, 0x0

    sget-object v11, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sMmsInboxUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    const/16 v15, 0xd

    const/16 v16, 0x0

    sget-object v17, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sNewEmailUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const-string v3, "sum(notifiedMessageCount)"

    aput-object v3, v18, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v14 .. v21}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerStatusbarChangedCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardStatusbarUnlockPasswordCallback;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMusicCallback:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->registerMusicInfoCallback(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;

    if-nez v2, :cond_0

    .line 532
    const-string v2, "NotificationStarting"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUndertableStartingManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUndertableStartingManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;

    .line 535
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isPassword()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launcherActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/app/IUndertableStartingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUndertableStartingManager:Landroid/app/IUndertableStartingManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->launchFastActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateMissedCall(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    return v0
.end method

.method static synthetic access$1902(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    return p1
.end method

.method static synthetic access$1912(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateUnreadSms(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateNewEmail(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->onActivityStarted(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSimPin()Z

    move-result v0

    return v0
.end method

.method private enableKeyguardPassword()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 950
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
    .line 881
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 882
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

    .line 885
    :cond_0
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 890
    :goto_0
    return-object v1

    .line 887
    :cond_1
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    .line 888
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    goto :goto_0

    .line 890
    :cond_2
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    goto :goto_0
.end method

.method private getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    .locals 6

    .prologue
    .line 899
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 901
    .local v2, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_1

    .line 902
    :cond_0
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 923
    .local v0, currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    :goto_0
    return-object v0

    .line 903
    .end local v0           #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    :cond_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 904
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    goto :goto_0

    .line 906
    .end local v0           #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    :cond_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 907
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    .line 920
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

    .line 913
    :sswitch_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->enableKeyguardPassword()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 914
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    goto :goto_0

    .line 916
    .end local v0           #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    :cond_3
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 918
    .restart local v0       #currentMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    goto :goto_0

    .line 907
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private isPassword()Z
    .locals 1

    .prologue
    .line 946
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
    .line 731
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v1

    .line 732
    .local v1, unlockMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .line 733
    .local v0, secure:Z
    sget-object v2, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$9;->$SwitchMap$com$meizu$internal$policy$impl$LockPasswordKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 748
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

    .line 739
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

    .line 750
    :goto_0
    :pswitch_1
    return v0

    .line 739
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 742
    :pswitch_2
    const/4 v0, 0x1

    .line 743
    goto :goto_0

    .line 733
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
    .line 941
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
    const/4 v4, 0x1

    .line 1302
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1303
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputForced(ILandroid/os/ResultReceiver;)Z

    .line 1305
    const v2, 0x30028000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1310
    const-string v2, "LockView"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1311
    const-string v2, "isSecurity"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1312
    const-string v2, "fastStarting"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1314
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1323
    :goto_1
    return-void

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LockPasswordKeyguardView"

    const-string v3, "can\'t dismiss keyguard on launch"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1320
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1321
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

.method private launcherActivity(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1326
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1327
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputForced(ILandroid/os/ResultReceiver;)Z

    .line 1328
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1333
    const-string v2, "LockView"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1335
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1344
    :goto_1
    return-void

    .line 1336
    :catch_0
    move-exception v0

    .line 1337
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LockPasswordKeyguardView"

    const-string v3, "can\'t dismiss keyguard on launch"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1341
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1342
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

.method private onActivityStarted(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 1250
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z

    if-nez v0, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1252
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 1253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z

    goto :goto_0
.end method

.method private recreateLockScreen()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 608
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 609
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeView(Landroid/view/View;)V

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    .line 613
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->addView(Landroid/view/View;)V

    .line 616
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateUnreadSms(I)V

    .line 617
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateMissedCall(I)V

    .line 618
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateNewEamil(I)V

    .line 619
    return-void
.end method

.method private recreateUnlockScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;)V
    .locals 2
    .parameter "unlockMode"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 624
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 625
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeView(Landroid/view/View;)V

    .line 628
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->createUnlockScreenFor(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 629
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->addView(Landroid/view/View;)V

    .line 632
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateUnreadSms(I)V

    .line 633
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateMissedCall(I)V

    .line 634
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateNewEamil(I)V

    .line 635
    return-void
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .locals 2

    .prologue
    .line 246
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
    .line 1073
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    .line 1078
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v1, v1, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v1, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    .line 1080
    .local v0, lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateMissedCall(I)V

    .line 1082
    .end local v0           #lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    :cond_0
    return-void
.end method

.method private updateNewEmail(I)V
    .locals 2
    .parameter "newEmailCount"

    .prologue
    .line 1097
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailCount:I

    .line 1102
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v1, v1, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v1, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    .line 1104
    .local v0, lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateNewEamil(I)V

    .line 1106
    .end local v0           #lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    :cond_0
    return-void
.end method

.method private updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V
    .locals 9
    .parameter "mode"
    .parameter "force"

    .prologue
    const/4 v8, 0x0

    .line 758
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    .line 761
    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v5, :cond_1

    .line 762
    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-nez v5, :cond_1

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->recreateLockScreen()V

    .line 768
    :cond_1
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v3

    .line 769
    .local v3, unlockMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v5, :cond_3

    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->Unknown:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-eq v3, v5, :cond_3

    .line 770
    if-nez p2, :cond_2

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreenMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-eq v3, v5, :cond_8

    .line 771
    :cond_2
    invoke-direct {p0, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->recreateUnlockScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;)V

    .line 780
    :cond_3
    :goto_0
    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v5, :cond_9

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 781
    .local v1, goneScreen:Landroid/view/View;
    :goto_1
    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v5, :cond_a

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    .line 783
    .local v4, visibleScreen:Landroid/view/View;
    :goto_2
    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    if-ne p1, v5, :cond_b

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v0, checkPackage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "com.android.email"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v2, startActivity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.email"

    const-string v7, "com.android.email.activity.MessageListFragment"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->initCheckAndStartActivityList(Ljava/util/List;Ljava/util/List;)V

    .line 790
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v5, :cond_4

    .line 791
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v5, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->relayoutForPasswordKeyguard(Z)V

    .line 809
    .end local v0           #checkPackage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #startActivity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-object v5, v4

    check-cast v5, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v5

    invoke-interface {v6, v5}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setNeedsInput(Z)V

    .line 816
    iget-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenOn:Z

    if-eqz v5, :cond_6

    .line 817
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    move-object v5, v1

    .line 818
    check-cast v5, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 820
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v4

    .line 821
    check-cast v5, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 825
    :cond_6
    if-eqz v1, :cond_7

    .line 826
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 828
    :cond_7
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 829
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->requestLayout()V

    .line 831
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v5

    if-nez v5, :cond_c

    .line 832
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 772
    .end local v1           #goneScreen:Landroid/view/View;
    .end local v4           #visibleScreen:Landroid/view/View;
    :cond_8
    sget-object v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-ne v3, v5, :cond_3

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v5, v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    if-eqz v5, :cond_3

    .line 774
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v5, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v5}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateViewForMode()V

    goto/16 :goto_0

    .line 780
    :cond_9
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    goto/16 :goto_1

    .line 781
    .restart local v1       #goneScreen:Landroid/view/View;
    :cond_a
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    goto/16 :goto_2

    .line 802
    .restart local v4       #visibleScreen:Landroid/view/View;
    :cond_b
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v5, :cond_4

    .line 803
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->relayoutForPasswordKeyguard(Z)V

    goto/16 :goto_3

    .line 835
    :cond_c
    return-void
.end method

.method private updateUnreadSms(I)V
    .locals 2
    .parameter "unreadSmsCount"

    .prologue
    .line 1085
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    .line 1090
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v1, v1, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v1, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    .line 1092
    .local v0, lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateUnreadSms(I)V

    .line 1094
    .end local v0           #lockScreen:Lcom/meizu/internal/policy/impl/LockScreenMz;
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 708
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 710
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 711
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeView(Landroid/view/View;)V

    .line 712
    iput-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 716
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 717
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->removeView(Landroid/view/View;)V

    .line 718
    iput-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 721
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$MissedCallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 723
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadMsgObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnreadMsgObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 724
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mNewEmailObserver:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$NewEmailObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 725
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMusicCallback:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 726
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->cleanForceShowMusic()V

    .line 728
    return-void
.end method

.method createLockScreen()Landroid/view/View;
    .locals 7

    .prologue
    .line 838
    new-instance v0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mKeyguardScreenCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-direct/range {v0 .. v6}, Lcom/meizu/internal/policy/impl/LockScreenMz;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    .line 843
    .local v0, lockView:Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 844
    return-object v0
.end method

.method createUnlockScreenFor(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 8
    .parameter "unlockMode"

    .prologue
    .line 848
    const/4 v0, 0x0

    .line 851
    .local v0, unlockView:Landroid/view/View;
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->PasswordOrSimPin:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-ne p1, v1, :cond_0

    .line 852
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

    .line 871
    .restart local v0       #unlockView:Landroid/view/View;
    :goto_0
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreenMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    .line 872
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 873
    return-object v0

    .line 859
    :cond_0
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-ne p1, v1, :cond_1

    .line 860
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

    .line 868
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
    .line 545
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 546
    return-void
.end method

.method public getTopActivit()Landroid/content/ComponentName;
    .locals 6

    .prologue
    .line 1239
    const/4 v2, 0x0

    .line 1240
    .local v2, ret:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1241
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1242
    .local v3, runTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1243
    .local v1, info:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    .line 1244
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1246
    :cond_0
    return-object v2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/16 v5, 0x3e9

    .line 646
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 647
    .local v0, resources:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 652
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 654
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 641
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onDetachedFromWindow()V

    .line 643
    return-void
.end method

.method public onHideMe(Z)V
    .locals 1
    .parameter "isKeyguarDown"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onHideMe(Z)V

    .line 1283
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

    .line 1285
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onHideMe(Z)V

    .line 1287
    :cond_1
    return-void
.end method

.method public onPasswordStateChangedByStatusbar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1267
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getUnlockMode()Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    move-result-object v0

    .line 1268
    .local v0, mode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->enableKeyguardPassword()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSimPin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1271
    :cond_1
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    invoke-direct {p0, v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    .line 1275
    :goto_0
    return-void

    .line 1273
    :cond_2
    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->LockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    invoke-direct {p0, v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenOn:Z

    .line 569
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 574
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->onScreenOff()V

    .line 579
    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mScreenOn:Z

    .line 585
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->show()V

    .line 586
    return-void
.end method

.method public onShowMe()V
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onShowMe()V

    .line 1295
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

    .line 1297
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onShowMe()V

    .line 1299
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWindowFocused:Z

    .line 603
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 550
    const/4 v0, 0x1

    .line 551
    .local v0, realReset:Z
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->isCheckingPassword()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 554
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

    .line 555
    if-eqz v0, :cond_1

    .line 556
    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 559
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 552
    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 597
    :cond_1
    return-void
.end method

.method public startActivityIfNeed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1110
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1111
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1113
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1114
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 1116
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1117
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1119
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mMissedCallCount:I

    if-lez v5, :cond_2

    .line 1120
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v3, phoneIntent:Landroid/content/Intent;
    const-string v5, "com.android.contacts"

    const-string v6, "com.android.contacts.ContactsLaunchActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const/high16 v5, 0x1003

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1123
    const-string v5, "LockView"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1124
    move-object v1, v3

    .line 1125
    .local v1, intent:Landroid/content/Intent;
    new-instance v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$5;

    invoke-direct {v5, p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$5;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1132
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #phoneIntent:Landroid/content/Intent;
    :cond_2
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnreadSmsCount:I

    if-lez v5, :cond_0

    .line 1133
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v4, smsIntent:Landroid/content/Intent;
    const-string v5, "com.android.mms"

    const-string v6, "com.android.mms.ui.ConversationList"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    const/high16 v5, 0x1401

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1138
    const-string v5, "LockView"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1139
    move-object v1, v4

    .line 1140
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v5, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;

    invoke-direct {v5, p0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$6;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public verifyUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 692
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 704
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreenMode:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;->FindPhone:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 701
    :cond_1
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 702
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 929
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

    .line 932
    sget-object v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;->UnlockScreen:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateScreen(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$Mode;Z)V

    .line 933
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_0
.end method

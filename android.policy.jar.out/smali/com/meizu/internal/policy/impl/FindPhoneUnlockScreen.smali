.class public Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;
.super Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.source "FindPhoneUnlockScreen.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_CONFIGURATION:Z = false

.field public static final DEFAULT_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.account"

.field public static final FLYME_NAME:Ljava/lang/String; = "com.meizu.account.FlymeName"

.field public static final INTERNAL_CHECK_FLYME_NAME:I = 0x7530

.field public static final INTERNAL_CHECK_FLYME_NAME_AFTER_OPEN_NETWORK:I = 0x3a98

.field public static final MSG_FINISH_CHECKING_NAME:I = 0x3e9

.field public static final MSG_START_CHECKING_NAME:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "FindPhone"


# instance fields
.field public count:I

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mEmergencyButton:Landroid/widget/ImageView;

.field private mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

.field private mFindPhonePasswordError:I

.field private mFlymeName:Ljava/lang/String;

.field private mFlymeText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputBox:Landroid/view/View;

.field private mInputEdit:Landroid/widget/EditText;

.field private mInputString:Ljava/lang/String;

.field private mInputTips:Landroid/widget/TextView;

.field private mIsChecking:Z

.field private mIsEmergencyCallView:Z

.field mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResuming:Z

.field private mRootView:Landroid/view/View;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mforceMobileDataEnabled:Z

.field private mforceWifiDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "controllerMonitor"
    .parameter "dragCallback"

    .prologue
    .line 130
    const v6, 0x1090065

    const v7, 0x1090065

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/meizu/internal/policy/impl/LockControllerMonitor;IILcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->count:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceMobileDataEnabled:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceWifiDisabled:Z

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputString:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mIsChecking:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mResuming:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 113
    new-instance v0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$1;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    .line 625
    new-instance v0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$11;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$11;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->setFocusable(Z)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 136
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 137
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mAccountManager:Landroid/accounts/AccountManager;

    .line 138
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;

    .line 139
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 141
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setLockMusicWidgetCallback(Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;)V

    .line 143
    const v0, 0x10202fb

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mRootView:Landroid/view/View;

    .line 144
    const v0, 0x10202c9

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputBox:Landroid/view/View;

    .line 145
    const v0, 0x10202c7

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputTips:Landroid/widget/TextView;

    .line 146
    const v0, 0x1020302

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeText:Landroid/widget/TextView;

    .line 148
    const v0, 0x102021f

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    .line 149
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 151
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 152
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 153
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 156
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 158
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$2;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$3;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$3;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 179
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$4;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$4;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V

    .line 190
    const v0, 0x10202fe

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyButton:Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$5;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$5;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->updateUserName()V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mResuming:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->showEmergencyCallView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->openGPRSAndEnableNetwork()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->clearInput()V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->isUseProxy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getFlymeName()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->updateUserName()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->showKeypadView()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceMobileDataEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceMobileDataEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceWifiDisabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceWifiDisabled:Z

    return p1
.end method

.method private checkFindPhoneLock(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x104056f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 425
    new-instance v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;

    invoke-direct {v1, p0, p1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$8;->start()V

    .line 516
    return-void
.end method

.method private clearInput()V
    .locals 2

    .prologue
    .line 393
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputString:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method

.method private getFlymeName()I
    .locals 12

    .prologue
    .line 666
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 667
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v9, "com.meizu.account"

    invoke-virtual {v2, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 668
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 669
    .local v3, flymeName:Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v9, v1

    if-eqz v9, :cond_0

    .line 670
    const/4 v9, 0x0

    aget-object v9, v1, v9

    iget-object v3, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 672
    :cond_0
    const-string v9, "FindPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFlymeName() no using a network. { name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v7, 0x0

    .line 674
    .local v7, ret:I
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getSN()Ljava/lang/String;

    move-result-object v8

    .line 675
    .local v8, sn:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 676
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v9, 0x32

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 677
    .local v0, accountBuffer:Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->isUseProxy()Z

    move-result v4

    .line 678
    .local v4, isUseProxy:Z
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v6

    .line 679
    .local v6, proxy:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    .line 680
    .local v5, port:I
    if-eqz v4, :cond_3

    .line 681
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v8, v0, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getUserNameFromProxy(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)I

    move-result v7

    .line 685
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 686
    const-string v9, "FindPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFlymeName() using a network { name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", and ret = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " }"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0           #accountBuffer:Ljava/lang/StringBuffer;
    .end local v4           #isUseProxy:Z
    .end local v5           #port:I
    .end local v6           #proxy:Ljava/lang/String;
    :cond_2
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;

    .line 690
    return v7

    .line 683
    .restart local v0       #accountBuffer:Ljava/lang/StringBuffer;
    .restart local v4       #isUseProxy:Z
    .restart local v5       #port:I
    .restart local v6       #proxy:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v8, v0}, Lcom/android/internal/widget/LockPatternUtils;->getUserName(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v7

    goto :goto_0
.end method

.method private getSN()Ljava/lang/String;
    .locals 4

    .prologue
    .line 410
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 412
    .local v1, iPhoneEx:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 413
    .local v2, seqNoString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 415
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->queryProductSeqNo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 420
    :cond_0
    :goto_0
    return-object v2

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .parameter "msg"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x1030323

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 400
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 401
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 402
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private isUseProxy()Z
    .locals 9

    .prologue
    .line 641
    const/4 v4, 0x0

    .line 642
    .local v4, isUseProxy:Z
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, proxy:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    .line 644
    .local v5, port:I
    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 646
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 647
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 648
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, extraInfo:Ljava/lang/String;
    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 650
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, apnName:Ljava/lang/String;
    const-string v7, "3GWAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "UNIWAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 654
    const/4 v4, 0x1

    .line 662
    .end local v0           #apnName:Ljava/lang/String;
    .end local v2           #extraInfo:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 656
    .restart local v0       #apnName:Ljava/lang/String;
    .restart local v2       #extraInfo:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 659
    .end local v0           #apnName:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private loadEmergencyCallView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 369
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 372
    :cond_0
    new-instance v1, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    .line 373
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->addView(Landroid/view/View;)V

    .line 374
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 375
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 376
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 377
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    new-instance v2, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$7;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$7;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setOnReturnButtonClickListener(Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;)V

    .line 388
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mKeyguardWidgetListener:Lcom/meizu/internal/policy/impl/ILockWidget;

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setIKeyguardWidget(Lcom/meizu/internal/policy/impl/ILockWidget;)V

    goto :goto_0
.end method

.method private openGPRSAndEnableNetwork()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 697
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 698
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 699
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 700
    .local v3, type:I
    if-ne v3, v6, :cond_1

    const-string v2, "wifi"

    .line 701
    .local v2, tips:Ljava/lang/String;
    :goto_0
    const-string v4, "FindPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network is available, type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .end local v2           #tips:Ljava/lang/String;
    .end local v3           #type:I
    :cond_0
    :goto_1
    return-void

    .line 700
    .restart local v3       #type:I
    :cond_1
    const-string v2, "mobile"

    goto :goto_0

    .line 703
    .end local v3           #type:I
    :cond_2
    const-string v4, "FindPhone"

    const-string v5, "network is unavailable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_0

    .line 705
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 706
    .local v0, dataEnabled:Z
    if-nez v0, :cond_0

    .line 707
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mforceMobileDataEnabled:Z

    .line 708
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 709
    const-string v4, "FindPhone"

    const-string v5, " ---- open mobile data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showEmergencyCallView()V
    .locals 2

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->loadEmergencyCallView()V

    .line 363
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->clearInput()V

    .line 366
    return-void
.end method

.method private showKeypadView()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    return-void
.end method

.method private updateUserName()V
    .locals 1

    .prologue
    .line 598
    new-instance v0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->start()V

    .line 623
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "FindPhone"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->cleanUp()V

    .line 241
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->cleanUp()V

    .line 244
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onAttachedToWindow()V

    .line 259
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 262
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 276
    :cond_0
    return-void
.end method

.method public onDoubleClickHome()V
    .locals 0

    .prologue
    .line 726
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 286
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, password:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->checkFindPhoneLock(Ljava/lang/String;)V

    .line 293
    :cond_1
    const/4 v1, 0x1

    .line 295
    .end local v0           #password:Ljava/lang/String;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 207
    new-instance v0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$6;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$6;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 215
    return-void
.end method

.method public onHideMe(Z)V
    .locals 0
    .parameter "isKeyguarDown"

    .prologue
    .line 582
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onHideMe(Z)V

    .line 583
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mResuming:Z

    .line 224
    const-string v0, "FindPhone"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onResume()V

    .line 227
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 229
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mIsEmergencyCallView:Z

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->requestFocus()Z

    .line 232
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mResuming:Z

    goto :goto_0
.end method

.method public onShowMe()V
    .locals 3

    .prologue
    .line 587
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onShowMe()V

    .line 588
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 589
    new-instance v0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$9;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$9;-><init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 595
    return-void
.end method

.method public showToast()V
    .locals 5

    .prologue
    .line 332
    const-string v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showToast, mFindPhonePasswordError = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v0, ""

    .line 336
    .local v0, text:Ljava/lang/String;
    iget v2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 337
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v3, 0x104056e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 351
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setType(I)V

    .line 352
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 354
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_1
    return-void

    .line 338
    :cond_2
    iget v2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 339
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v3, 0x1040573

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_3
    iget v2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 341
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v3, 0x1040572

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_4
    iget v2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    if-nez v2, :cond_5

    .line 343
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v3, 0x1040571

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_5
    iget v2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 345
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v3, 0x1040574

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_6
    iget v2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 347
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v3, 0x1040575

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateInputTips()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 300
    const-string v4, "FindPhone"

    const-string v5, "updateInputTips"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v5, 0x104056c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, flymeName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 306
    .local v1, length:I
    const/16 v4, 0x19

    if-le v1, v4, :cond_1

    .line 307
    const/16 v4, 0x8

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, name1:Ljava/lang/String;
    add-int/lit8 v4, v1, -0xc

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, name2:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .end local v2           #name1:Ljava/lang/String;
    .end local v3           #name2:Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    if-ne v4, v7, :cond_4

    .line 312
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v6, 0x104056d

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->clearInput()V

    .line 328
    return-void

    .line 303
    .end local v0           #flymeName:Ljava/lang/String;
    .end local v1           #length:I
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;

    goto :goto_0

    .line 313
    .restart local v0       #flymeName:Ljava/lang/String;
    .restart local v1       #length:I
    :cond_4
    iget v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 314
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v6, 0x104056e

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 315
    :cond_5
    iget v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 316
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v6, 0x1040573

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 317
    :cond_6
    iget v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 318
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v6, 0x1040572

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 319
    :cond_7
    iget v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    if-nez v4, :cond_8

    .line 320
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v6, 0x1040571

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 321
    :cond_8
    iget v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    .line 322
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v6, 0x1040574

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 323
    :cond_9
    iget v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFindPhonePasswordError:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 324
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v6, 0x1040575

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

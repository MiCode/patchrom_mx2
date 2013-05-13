.class public Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;
.super Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.source "PasswordAndSimUnlockScreen.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;,
        Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;,
        Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;,
        Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;,
        Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;,
        Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    }
.end annotation


# static fields
.field private static final CLICK_RANGE:I = 0xa

.field private static final DEBUG:Z = true

.field private static final DEBUG_CONFIGURATION:Z = true

.field private static final KEY_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_RIGHT:Ljava/lang/String; = "right"

.field private static final MSG_START_CAMER_FINISHED:I = 0x3ea

.field private static final MSG_START_CAMER_TIMEOUT:I = 0x3e9

.field private static final RESET_KEYPAD_AS_POINT_INTERNAL:I = 0x1770

.field public static final TAG:Ljava/lang/String; = "PasswordAndSimUnlockScreen"


# instance fields
.field private mAcm:Landroid/content/pm/AccessControlManager;

.field protected mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

.field private mCheckPuk:Ljava/lang/String;

.field private mConfirmPinError:Z

.field mDownX:I

.field mDownY:I

.field private mEmergencyButton:Landroid/widget/TextView;

.field private mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

.field mHandler:Landroid/os/Handler;

.field private mInputBox:Landroid/view/View;

.field private mInputDelete:Landroid/widget/ImageView;

.field private mInputNum:Ljava/lang/String;

.field private mInputText:Lcom/meizu/widget/LockPasswordView;

.field private mInputTips:Landroid/widget/TextView;

.field private mIsEmergencyCallView:Z

.field private mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

.field private mKeypadView:Lcom/meizu/widget/LockDigitView;

.field private mLeftTimes:I

.field mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPin:Ljava/lang/String;

.field private mPasswordError:Z

.field mRestKeypadAsPoint:Ljava/lang/Runnable;

.field private mRootView:Landroid/view/View;

.field private mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mTipsStringOfSim:Ljava/lang/String;

.field private mTouchDeltaX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "controllerMonitor"
    .parameter "dragCallback"

    .prologue
    .line 135
    const v6, 0x109006c

    const v7, 0x109006c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/meizu/internal/policy/impl/LockControllerMonitor;IILcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mPasswordError:Z

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 107
    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$1;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    .line 1014
    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$9;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$9;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    .line 1206
    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$10;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$10;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 138
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v1, "access_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AccessControlManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 140
    const v0, 0x10202fb

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRootView:Landroid/view/View;

    .line 141
    const v0, 0x10202c9

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputBox:Landroid/view/View;

    .line 143
    const v0, 0x1020329

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    .line 144
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$1;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 145
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 146
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080546

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 148
    const v0, 0x1020221

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    .line 149
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$2;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x10202c7

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputTips:Landroid/widget/TextView;

    .line 169
    const v0, 0x102021f

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockPasswordView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    .line 170
    const v0, 0x10202fe

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 172
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$3;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$3;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {p5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v9

    .line 189
    .local v9, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v0, :cond_1

    .line 190
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 195
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateViewForMode()V

    .line 196
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setLockMusicWidgetCallback(Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;)V

    .line 197
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$4;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$4;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-direct {v0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    .line 208
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->setCallback(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;)V

    .line 210
    const-string v0, "PasswordAndSimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PasswordAndSim  mKeypadState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v0, "PasswordAndSimUnlockScreen"

    const-string v1, "***** PasswordAndSimUnlockScreen construct *****"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 191
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v0, :cond_0

    .line 192
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1084(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockPasswordView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getPasswordLimit()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mCheckPuk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPuk()V

    return-void
.end method

.method static synthetic access$2402(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->showEmergencyCallView()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->showKeypadView()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/content/pm/AccessControlManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;

    return-object v0
.end method

.method private checkLeftTimes()V
    .locals 6

    .prologue
    .line 446
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 448
    .local v1, iPhoneEx:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 449
    const-string v3, "\u83b7\u53d6\u7535\u8bdd\u670d\u52a1\u5931\u8d25\uff01"

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const/4 v2, 0x0

    .line 454
    .local v2, leftTimes:[I
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->queryLockCount()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 459
    :goto_1
    if-eqz v2, :cond_0

    .line 461
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v4, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v3, v4, :cond_2

    .line 462
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    .line 467
    :goto_2
    const-string v3, "PasswordAndSimUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLeftTimes: mLeftTimes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 464
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x3

    aget v3, v2, v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    goto :goto_2
.end method

.method private checkPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 682
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    .line 712
    :goto_0
    return-void

    .line 687
    :cond_1
    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$6;->start()V

    goto :goto_0
.end method

.method private checkPin(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 736
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 737
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 738
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    .line 768
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x104036b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 743
    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;

    invoke-direct {v1, p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->start()V

    goto :goto_0
.end method

.method private checkPuk()V
    .locals 4

    .prologue
    .line 773
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 774
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 775
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    .line 808
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x104036b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 782
    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$8;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mCheckPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$8;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$8;->start()V

    goto :goto_0
.end method

.method private clearInput()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 672
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 673
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v5}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 675
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v0, v1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080546

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 679
    :cond_0
    return-void
.end method

.method private converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 5
    .parameter "cell"

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v2

    .line 652
    .local v2, r:I
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v0

    .line 653
    .local v0, c:I
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, 0x1

    .line 654
    .local v1, num:I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 655
    const-string v3, "left"

    .line 663
    .local v3, ret:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 656
    .end local v3           #ret:Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 657
    const-string v3, "0"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 658
    .end local v3           #ret:Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 659
    const-string v3, "right"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 661
    .end local v3           #ret:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPasswordLimit()I
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "meizu_password_length"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .parameter "msg"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x1030323

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 884
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 885
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 886
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private loadEmergencyCallView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 420
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 423
    :cond_0
    new-instance v1, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    .line 424
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->addView(Landroid/view/View;)V

    .line 425
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 426
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 427
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 428
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 429
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    new-instance v2, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setOnReturnButtonClickListener(Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;)V

    .line 439
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mKeyguardWidgetListener:Lcom/meizu/internal/policy/impl/ILockWidget;

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setIKeyguardWidget(Lcom/meizu/internal/policy/impl/ILockWidget;)V

    goto :goto_0
.end method

.method private setKeypadAsNum()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1054
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v5}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 1055
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputBox:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, v5}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 1059
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080546

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10801d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    move-object v4, v3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private setKeypadAsPoint()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1026
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, v6}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 1027
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 1029
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0, v5}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 1031
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 1032
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setPauseButtonImage()V

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v6}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputBox:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1042
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080546

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 1051
    :cond_2
    :goto_0
    return-void

    .line 1045
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10801d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 1048
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private showEmergencyCallView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 403
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->loadEmergencyCallView()V

    .line 404
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputBox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v2}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 410
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 411
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 416
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    .line 417
    return-void
.end method

.method private showKeypadView()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V

    .line 400
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    goto :goto_0

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 240
    const-string v0, "PasswordAndSimUnlockScreen"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->cleanUp()V

    .line 243
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->cleanUp()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public onAnimEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1109
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    if-nez v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_3

    .line 1113
    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 1114
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 1117
    :cond_1
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 1129
    :cond_2
    :goto_1
    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 1130
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 1131
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v4}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->enableUserActivity(Z)V

    goto :goto_0

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_2

    .line 1119
    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 1120
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_4

    .line 1121
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragUnlock()V

    .line 1122
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->enableKeyguardDownWithAnim(Z)V

    .line 1124
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-interface {v0, v1, v2}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V

    .line 1126
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 265
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onAttachedToWindow()V

    .line 267
    const-string v0, "PasswordAndSimUnlockScreen"

    const-string v1, "***** PATTERN ATTACHED TO WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v0, "PasswordAndSimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onClickHome()V
    .locals 3

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1227
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 1228
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 1233
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1234
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetMusicInfoShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 281
    const-string v0, "PasswordAndSimUnlockScreen"

    const-string v1, "***** PATTERN CONFIGURATION CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v0, "PasswordAndSimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 288
    :cond_0
    return-void
.end method

.method public onDoubleClickHome()V
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onDoubleClickHome()V

    .line 1183
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V

    goto :goto_0
.end method

.method public onHideMe(Z)V
    .locals 4
    .parameter "isKeyguarDown"

    .prologue
    .line 1161
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onHideMe(Z)V

    .line 1162
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1166
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1168
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 899
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v5}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 900
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 920
    :cond_0
    :goto_0
    return v3

    .line 902
    :cond_1
    iget-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v6, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v5, v6, :cond_3

    .line 903
    :cond_2
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 905
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 906
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 907
    .local v1, x:I
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 908
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 909
    .local v0, bottom:I
    const/4 v5, -0x1

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 910
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->VALID_TOUCH_RANGE_CAMERA:I

    if-lt v1, v5, :cond_4

    iget v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    iget v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->VALID_TOUCH_RANGE_CAMERA:I

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_5

    .line 911
    :cond_4
    const/4 v5, 0x2

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 912
    sget-object v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 913
    neg-int v5, v1

    iput v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTouchDeltaX:I

    .line 914
    iput v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 915
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v4}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->enableUserActivity(Z)V

    .line 916
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 917
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v5, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 918
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 920
    :cond_5
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v5, :cond_6

    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_6
    move v3, v4

    goto :goto_0
.end method

.method public onMetaChanged()V
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    :goto_0
    return-void

    .line 1074
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMetaChanged()V

    goto :goto_0
.end method

.method public onMusicClientClear()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMusicClientClear()V

    goto :goto_0
.end method

.method public onNameStateChanged()V
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    :goto_0
    return-void

    .line 1097
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onNameStateChanged()V

    goto :goto_0
.end method

.method public onNotifyNewPosition(II)V
    .locals 2
    .parameter "startPos"
    .parameter "distance"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v0, v1, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_0

    .line 1152
    :cond_2
    add-int v0, p1, p2

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 1153
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-interface {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveH(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPause()V

    .line 254
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 255
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    .line 256
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V

    .line 261
    :cond_1
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 2
    .parameter "phoneState"

    .prologue
    .line 1188
    if-eqz p1, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    const v1, 0x1040352

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1193
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    const v1, 0x1040577

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onPlaybackComplete()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1081
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPlaybackComplete()V

    goto :goto_0
.end method

.method public onPlaystateChanged()V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPlaystateChanged()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v0, "PasswordAndSimUnlockScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onResume()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mPasswordError:Z

    .line 227
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkLeftTimes()V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    .line 230
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mIsEmergencyCallView:Z

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->requestFocus()Z

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->requestFocus()Z

    goto :goto_0
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    const/16 v1, 0x3e9

    .line 1196
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1199
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 1200
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 1204
    :cond_0
    return-void
.end method

.method public onShowMe()V
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->enableKeyguardDownWithAnim(Z)V

    .line 1173
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onShowMe()V

    .line 1174
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 929
    const/4 v2, 0x0

    .line 1011
    :goto_0
    return v2

    .line 931
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 932
    .local v8, action:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 933
    .local v14, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 934
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v3, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v2, v3, :cond_4

    .line 935
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 936
    .local v18, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 937
    .local v17, x:I
    if-nez v8, :cond_2

    .line 938
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mDownX:I

    .line 939
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mDownY:I

    .line 949
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 940
    :cond_2
    const/4 v2, 0x1

    if-eq v8, v2, :cond_3

    const/4 v2, 0x3

    if-ne v8, v2, :cond_1

    .line 942
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mDownX:I

    sub-int v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mDownY:I

    sub-int v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1770

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 950
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v3, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v2, v3, :cond_18

    .line 951
    if-eqz v8, :cond_5

    const/4 v2, 0x5

    if-ne v8, v2, :cond_9

    .line 953
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_6

    .line 955
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 959
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 961
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 962
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTouchDeltaX:I

    .line 1009
    :cond_8
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 963
    :cond_9
    const/4 v2, 0x2

    if-ne v8, v2, :cond_b

    .line 964
    const/4 v2, -0x1

    if-ne v14, v2, :cond_a

    .line 965
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 967
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 968
    .restart local v18       #y:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 969
    .restart local v17       #x:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTouchDeltaX:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v2, :cond_8

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-interface {v2, v3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveH(I)V

    goto :goto_2

    .line 973
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_b
    const/4 v2, 0x1

    if-eq v8, v2, :cond_c

    const/4 v2, 0x6

    if-eq v8, v2, :cond_c

    const/4 v2, 0x3

    if-ne v8, v2, :cond_8

    .line 976
    :cond_c
    const/4 v2, -0x1

    if-eq v14, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-eq v14, v2, :cond_e

    .line 977
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 979
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 980
    .local v18, y:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 981
    .local v17, x:F
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 982
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTouchDeltaX:I

    int-to-float v2, v2

    add-float v2, v2, v17

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 985
    .local v16, velocityY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 986
    .local v15, velocityX:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY:F

    .line 987
    .local v12, escapeVelocity:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY_UNLOCK:F

    .line 988
    .local v13, escapeVelocityUnlock:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_X_FAR_ENOUGH:I

    if-le v2, v3, :cond_14

    const/4 v9, 0x1

    .line 989
    .local v9, dragFarEnough:Z
    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-lez v2, :cond_15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v13

    if-lez v2, :cond_15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    const/4 v11, 0x1

    .line 991
    .local v11, dragFastEnoughUp:Z
    :goto_4
    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-gez v2, :cond_16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v12

    if-lez v2, :cond_16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16

    const/4 v10, 0x1

    .line 993
    .local v10, dragFastEnoughDown:Z
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-lez v2, :cond_f

    if-nez v11, :cond_12

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v2, :cond_10

    if-nez v10, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-lez v2, :cond_11

    if-nez v10, :cond_11

    if-nez v9, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v2, :cond_17

    if-nez v11, :cond_17

    if-eqz v9, :cond_17

    .line 997
    :cond_12
    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 998
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v4, v2, v3

    .line 999
    .local v4, animSpace:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v2, :cond_13

    .line 1000
    neg-int v4, v4

    .line 1002
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    const/16 v5, 0xfa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto/16 :goto_2

    .line 988
    .end local v4           #animSpace:I
    .end local v9           #dragFarEnough:Z
    .end local v10           #dragFastEnoughDown:Z
    .end local v11           #dragFastEnoughUp:Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 989
    .restart local v9       #dragFarEnough:Z
    :cond_15
    const/4 v11, 0x0

    goto :goto_4

    .line 991
    .restart local v11       #dragFastEnoughUp:Z
    :cond_16
    const/4 v10, 0x0

    goto :goto_5

    .line 1004
    .restart local v10       #dragFastEnoughDown:Z
    :cond_17
    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 1005
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    neg-int v4, v2

    .line 1006
    .restart local v4       #animSpace:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    const/16 v5, 0xfa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto/16 :goto_2

    .line 1011
    .end local v4           #animSpace:I
    .end local v9           #dragFarEnough:Z
    .end local v10           #dragFastEnoughDown:Z
    .end local v11           #dragFastEnoughUp:Z
    .end local v12           #escapeVelocity:F
    .end local v13           #escapeVelocityUnlock:F
    .end local v15           #velocityX:F
    .end local v16           #velocityY:F
    .end local v17           #x:F
    .end local v18           #y:F
    :cond_18
    invoke-super/range {p0 .. p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public updateInputTips()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 347
    const-string v0, "PasswordAndSimUnlockScreen"

    const-string v1, "updateInputTips"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v0, v1, :cond_2

    .line 350
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mPasswordError:Z

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x1040569

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    .line 381
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x1040568

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v0, v1, :cond_5

    .line 357
    iget v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 358
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040564

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    .line 377
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040562

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v0, v1, :cond_7

    .line 363
    iget v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_6

    .line 364
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040565

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1

    .line 367
    :cond_6
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040563

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1

    .line 368
    :cond_7
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->newPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v0, v1, :cond_9

    .line 369
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z

    if-eqz v0, :cond_8

    .line 370
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x104056b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040566

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1

    .line 374
    :cond_9
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->confirmNewPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v0, v1, :cond_3

    .line 375
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040567

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateViewForMode()V
    .locals 14

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 291
    iget-boolean v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    if-eqz v4, :cond_0

    .line 342
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->showKeypadView()V

    .line 298
    :cond_1
    const-string v4, "PasswordAndSimUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PasswordAndSim mIsChecking: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 302
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080546

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 303
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v5}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 304
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 305
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    .line 306
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V

    .line 307
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v13

    .line 308
    .local v13, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v13, v0, :cond_5

    .line 309
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 313
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v13, v0, :cond_6

    .line 314
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkLeftTimes()V

    .line 319
    :goto_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 335
    .end local v13           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockPasswordView;->getCurNum()I

    move-result v0

    if-lez v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    goto/16 :goto_0

    .line 310
    .restart local v13       #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v13, v0, :cond_2

    .line 311
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    goto :goto_1

    .line 316
    :cond_6
    iput v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    goto :goto_2

    .line 321
    .end local v13           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isPassword()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_9

    move v11, v0

    :goto_4
    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v3

    invoke-virtual/range {v6 .. v11}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 323
    sget-object v2, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    .line 324
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v2, v0}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 325
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getPasswordLimit()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 326
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V

    .line 327
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "guard_mode"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_8

    .line 329
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const-string v9, "\u8bbf"

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v2

    if-nez v2, :cond_a

    move v11, v0

    :goto_5
    move v7, v1

    move v8, v5

    move-object v10, v3

    invoke-virtual/range {v6 .. v11}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 333
    :cond_8
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_3

    :cond_9
    move v11, v5

    .line 322
    goto :goto_4

    :cond_a
    move v11, v5

    .line 329
    goto :goto_5
.end method

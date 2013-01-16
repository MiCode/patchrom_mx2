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

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final KEY_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_RIGHT:Ljava/lang/String; = "right"

.field private static final MARGIN_RIGHT_DELETE_FOR_PASSWORD:F = 114.5f

.field private static final MARGIN_RIGHT_DELETE_FOR_SIM:F = 96.5f

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
    .line 141
    const v6, 0x1090068

    const v7, 0x1090068

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/meizu/internal/policy/impl/LockControllerMonitor;IILcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mPasswordError:Z

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 113
    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$1;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    .line 983
    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$9;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$9;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    .line 1161
    new-instance v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$10;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$10;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 143
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 144
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v1, "access_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AccessControlManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 146
    const v0, 0x10202ff

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRootView:Landroid/view/View;

    .line 147
    const v0, 0x10202cc

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputBox:Landroid/view/View;

    .line 149
    const v0, 0x102032d

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    .line 150
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$1;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 151
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 152
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108052a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 154
    const v0, 0x1020221

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$2;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x10202ca

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputTips:Landroid/widget/TextView;

    .line 175
    const v0, 0x102021f

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockPasswordView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    .line 176
    const v0, 0x1020302

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 178
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$3;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$3;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {p5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v9

    .line 193
    .local v9, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v0, :cond_1

    .line 194
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateViewForMode()V

    .line 200
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setLockMusicWidgetCallback(Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;)V

    .line 201
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$4;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$4;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-direct {v0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    .line 212
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->setCallback(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;)V

    .line 214
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

    .line 215
    return-void

    .line 195
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v0, :cond_0

    .line 196
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1084(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
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
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getPasswordLimit()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;)Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mCheckPuk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/widget/LockDigitView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPuk()V

    return-void
.end method

.method static synthetic access$2302(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->showEmergencyCallView()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->showKeypadView()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Landroid/content/pm/AccessControlManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mAcm:Landroid/content/pm/AccessControlManager;

    return-object v0
.end method

.method private checkLeftTimes()V
    .locals 6

    .prologue
    .line 432
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 434
    .local v1, iPhoneEx:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 435
    const-string v3, "\u83b7\u53d6\u7535\u8bdd\u670d\u52a1\u5931\u8d25\uff01"

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    const/4 v2, 0x0

    .line 440
    .local v2, leftTimes:[I
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->queryLockCount()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 445
    :goto_1
    if-eqz v2, :cond_0

    .line 447
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v4, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v3, v4, :cond_2

    .line 448
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    .line 453
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

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 450
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
    .line 653
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 656
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
    .line 705
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 706
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 707
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    .line 737
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x104036a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 712
    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;

    invoke-direct {v1, p0, p1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$7;->start()V

    goto :goto_0
.end method

.method private checkPuk()V
    .locals 4

    .prologue
    .line 742
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 743
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 744
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    .line 777
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x104036a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 751
    new-instance v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$8;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mCheckPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mNewPin:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$8;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$8;->start()V

    goto :goto_0
.end method

.method private clearInput()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 647
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 649
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    return-void
.end method

.method private converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 5
    .parameter "cell"

    .prologue
    .line 625
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v2

    .line 626
    .local v2, r:I
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v0

    .line 627
    .local v0, c:I
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, 0x1

    .line 628
    .local v1, num:I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 629
    const-string v3, "left"

    .line 637
    .local v3, ret:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 630
    .end local v3           #ret:Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 631
    const-string v3, "0"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 632
    .end local v3           #ret:Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 633
    const-string v3, "right"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 635
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
    .line 641
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
    .line 851
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x1030317

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 853
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 854
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 855
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private loadEmergencyCallView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 406
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v1, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    .line 410
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->addView(Landroid/view/View;)V

    .line 411
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 412
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 413
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 414
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 415
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    new-instance v2, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setOnReturnButtonClickListener(Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;)V

    .line 425
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mKeyguardWidgetListener:Lcom/meizu/internal/policy/impl/ILockWidget;

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setIKeyguardWidget(Lcom/meizu/internal/policy/impl/ILockWidget;)V

    goto :goto_0
.end method

.method private setKeypadAsNum()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1015
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v6}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 1016
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputBox:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 1018
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, v6}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 1020
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x108052a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private setKeypadAsPoint()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 995
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, v4}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 996
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 997
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->isShowMusicName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v4}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0, v5}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputBox:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1008
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x108052a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 1012
    :cond_2
    :goto_0
    return-void

    .line 1009
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private showEmergencyCallView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 392
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->loadEmergencyCallView()V

    .line 393
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputBox:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 397
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0, v2}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 399
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 400
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetDateShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 402
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    .line 403
    return-void
.end method

.method private showKeypadView()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_0
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

    .line 1066
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    if-nez v0, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_3

    .line 1070
    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 1071
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 1074
    :cond_1
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 1085
    :cond_2
    :goto_1
    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 1086
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 1087
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v4}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->enableUserActivity(Z)V

    goto :goto_0

    .line 1075
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_2

    .line 1076
    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 1077
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_4

    .line 1078
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragUnlock()V

    .line 1080
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-interface {v0, v1, v2}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V

    .line 1082
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onAttachedToWindow()V

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

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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
    .line 1133
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onDoubleClickHome()V

    .line 1138
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V

    goto :goto_0
.end method

.method public onHideMe(Z)V
    .locals 4
    .parameter "isKeyguarDown"

    .prologue
    .line 1117
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onHideMe(Z)V

    .line 1118
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1122
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1124
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 868
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v5}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 869
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 889
    :cond_0
    :goto_0
    return v3

    .line 871
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

    .line 872
    :cond_2
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 874
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 875
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 876
    .local v1, x:I
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 877
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 878
    .local v0, bottom:I
    const/4 v5, -0x1

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 879
    const/16 v5, 0x23

    if-lt v1, v5, :cond_4

    iget v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    add-int/lit8 v5, v5, -0x23

    if-le v1, v5, :cond_5

    .line 880
    :cond_4
    const/4 v5, 0x2

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 881
    sget-object v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 882
    neg-int v5, v1

    iput v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTouchDeltaX:I

    .line 883
    iput v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 884
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v4}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->enableUserActivity(Z)V

    .line 885
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 886
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v5, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 887
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 889
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
    .line 1029
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1031
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMetaChanged()V

    goto :goto_0
.end method

.method public onMusicClientClear()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    :goto_0
    return-void

    .line 1061
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMusicClientClear()V

    goto :goto_0
.end method

.method public onNameStateChanged()V
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1054
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onNameStateChanged()V

    goto :goto_0
.end method

.method public onNotifyNewPosition(II)V
    .locals 2
    .parameter "startPos"
    .parameter "distance"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v0, v1, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_0

    .line 1108
    :cond_2
    add-int v0, p1, p2

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 1109
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_0

    .line 1110
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
    .line 1143
    if-eqz p1, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    const v1, 0x1040351

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1148
    :goto_0
    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyButton:Landroid/widget/TextView;

    const v1, 0x1040572

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onPlaybackComplete()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    :goto_0
    return-void

    .line 1038
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPlaybackComplete()V

    goto :goto_0
.end method

.method public onPlaystateChanged()V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPlaystateChanged()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v0, "PasswordAndSimUnlockScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onResume()V

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

    .line 1151
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1154
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 1155
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 1159
    :cond_0
    return-void
.end method

.method public onShowMe()V
    .locals 0

    .prologue
    .line 1128
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onShowMe()V

    .line 1129
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 898
    const/4 v2, 0x0

    .line 980
    :goto_0
    return v2

    .line 900
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 901
    .local v8, action:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 902
    .local v14, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 903
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v2, :cond_4

    .line 904
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 905
    .local v18, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 906
    .local v17, x:I
    if-nez v8, :cond_2

    .line 907
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mDownX:I

    .line 908
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mDownY:I

    .line 918
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 909
    :cond_2
    const/4 v2, 0x1

    if-eq v8, v2, :cond_3

    const/4 v2, 0x3

    if-ne v8, v2, :cond_1

    .line 911
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

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1770

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 919
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

    .line 920
    if-eqz v8, :cond_5

    const/4 v2, 0x5

    if-ne v8, v2, :cond_9

    .line 922
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_6

    .line 924
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 928
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 930
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 931
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTouchDeltaX:I

    .line 978
    :cond_8
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 932
    :cond_9
    const/4 v2, 0x2

    if-ne v8, v2, :cond_b

    .line 933
    const/4 v2, -0x1

    if-ne v14, v2, :cond_a

    .line 934
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 936
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 937
    .restart local v18       #y:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 938
    .restart local v17       #x:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTouchDeltaX:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v2, :cond_8

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-interface {v2, v3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveH(I)V

    goto :goto_2

    .line 942
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_b
    const/4 v2, 0x1

    if-eq v8, v2, :cond_c

    const/4 v2, 0x6

    if-eq v8, v2, :cond_c

    const/4 v2, 0x3

    if-ne v8, v2, :cond_8

    .line 945
    :cond_c
    const/4 v2, -0x1

    if-eq v14, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-eq v14, v2, :cond_e

    .line 946
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 948
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 949
    .local v18, y:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 950
    .local v17, x:F
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 951
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTouchDeltaX:I

    int-to-float v2, v2

    add-float v2, v2, v17

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 954
    .local v16, velocityY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 955
    .local v15, velocityX:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float v12, v2, v3

    .line 956
    .local v12, escapeVelocity:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY_UNLOCK:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float v13, v2, v3

    .line 957
    .local v13, escapeVelocityUnlock:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4348

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14

    const/4 v9, 0x1

    .line 958
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

    .line 960
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

    .line 962
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

    .line 966
    :cond_12
    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 967
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v4, v2, v3

    .line 968
    .local v4, animSpace:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v2, :cond_13

    .line 969
    neg-int v4, v4

    .line 971
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

    .line 957
    .end local v4           #animSpace:I
    .end local v9           #dragFarEnough:Z
    .end local v10           #dragFastEnoughDown:Z
    .end local v11           #dragFastEnoughUp:Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 958
    .restart local v9       #dragFarEnough:Z
    :cond_15
    const/4 v11, 0x0

    goto :goto_4

    .line 960
    .restart local v11       #dragFastEnoughUp:Z
    :cond_16
    const/4 v10, 0x0

    goto :goto_5

    .line 973
    .restart local v10       #dragFastEnoughDown:Z
    :cond_17
    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 974
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    neg-int v4, v2

    .line 975
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

    .line 980
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

    .line 342
    const-string v0, "PasswordAndSimUnlockScreen"

    const-string v1, "updateInputTips"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v0, v1, :cond_2

    .line 345
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mPasswordError:Z

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x1040564

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->clearInput()V

    .line 376
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v2, 0x1040563

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v0, v1, :cond_5

    .line 352
    iget v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 353
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x104055f

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

    .line 372
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x104055d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1

    .line 357
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v0, v1, :cond_7

    .line 358
    iget v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_6

    .line 359
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040560

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

    .line 362
    :cond_6
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x104055e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1

    .line 363
    :cond_7
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->newPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v0, v1, :cond_9

    .line 364
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mConfirmPinError:Z

    if-eqz v0, :cond_8

    .line 365
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040566

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1

    .line 367
    :cond_8
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040561

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1

    .line 369
    :cond_9
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->confirmNewPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    if-ne v0, v1, :cond_3

    .line 370
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const v1, 0x1040562

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateViewForMode()V
    .locals 12

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 291
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    if-eqz v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string v0, "PasswordAndSimUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PasswordAndSim mIsChecking: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 296
    .local v10, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isSimPin()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 297
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108052a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v5}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v8

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 298
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v6}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 299
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 300
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->sim:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    .line 301
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsNum()V

    .line 302
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v11

    .line 303
    .local v11, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v0, :cond_5

    .line 304
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPin:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    .line 308
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v11, v0, :cond_6

    .line 309
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkLeftTimes()V

    .line 314
    :goto_3
    const/high16 v0, 0x42c1

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 330
    .end local v11           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockPasswordView;->getCurNum()I

    move-result v0

    if-lez v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->updateInputTips()V

    goto/16 :goto_0

    :cond_4
    move v5, v6

    .line 297
    goto :goto_1

    .line 305
    .restart local v11       #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v0, :cond_1

    .line 306
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mSimState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$SimState;

    goto :goto_2

    .line 311
    :cond_6
    iput v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLeftTimes:I

    goto :goto_3

    .line 316
    .end local v11           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v4

    if-nez v4, :cond_9

    move v5, v8

    :goto_5
    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 318
    sget-object v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;->password:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadState:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$KeypadState;

    .line 319
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v8}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 320
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->getPasswordLimit()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 321
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->setKeypadAsPoint()V

    .line 322
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "guard_mode"

    invoke-static {v0, v2, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_8

    .line 324
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const-string v7, "\u8bbf"

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v0

    if-nez v0, :cond_a

    move v9, v8

    :goto_6
    move v5, v1

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 328
    :cond_8
    const/high16 v0, 0x42e5

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    :cond_9
    move v5, v6

    .line 317
    goto :goto_5

    :cond_a
    move v9, v6

    .line 324
    goto :goto_6
.end method

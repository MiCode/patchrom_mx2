.class public Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;
.super Ljava/lang/Object;
.source "LockPasswordKeyguardViewProperties.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewProperties;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

.field private mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/ScreenshotHelper;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;Landroid/content/Context;)V
    .locals 0
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "controllerMonitor"
    .parameter "screenshotHelper"
    .parameter "dragCallback"
    .parameter "context"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 46
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    .line 47
    iput-object p4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    .line 48
    iput-object p5, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    .line 49
    iput-object p6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private enableKeyguardPassword()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mContext:Landroid/content/Context;

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

.method private isFindphoneLocked()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v0

    return v0
.end method

.method private isLockPassword()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->enableKeyguardPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimPinSecure()Z
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 77
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 9
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "controller"

    .prologue
    .line 56
    new-instance v0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v8, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/ScreenshotHelper;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    return-object v0
.end method

.method public disableExternalExit()Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isFindphoneLocked()Z

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

.method public enableStatusbarExpand()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isFindphoneLocked()Z

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

.method public isOnlyLockPasswordSecure()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->enableKeyguardPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isFindphoneLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isLockPassword()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardViewProperties;->isFindphoneLocked()Z

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

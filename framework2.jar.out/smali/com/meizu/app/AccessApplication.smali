.class public Lcom/meizu/app/AccessApplication;
.super Landroid/app/Activity;
.source "AccessApplication.java"

# interfaces
.implements Lcom/meizu/widget/SystemLockView$OnPanelListener;


# static fields
.field private static final MAX_TASKS:I = 0xa


# instance fields
.field private acm:Landroid/content/pm/AccessControlManager;

.field private mComponentName:Landroid/content/ComponentName;

.field private mInfo:Landroid/content/pm/ActivityInfo;

.field private mIntent:Landroid/content/Intent;

.field private mLabel:Ljava/lang/String;

.field private mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

.field private mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPackageName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 39
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 44
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 47
    new-instance v0, Lcom/meizu/app/AccessApplication$1;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$1;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/app/AccessApplication;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/app/AccessApplication;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/app/AccessApplication;)Landroid/content/pm/AccessControlManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/app/AccessApplication;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    return-object v0
.end method

.method private checkAccessControl(Ljava/lang/String;)Z
    .locals 4
    .parameter "mPackageName"

    .prologue
    const/4 v0, 0x0

    .line 246
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/AccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private update()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/meizu/app/AccessApplication;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    .line 116
    .local v0, access:Z
    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, localObject2:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 211
    const/4 v1, 0x1

    .line 214
    .end local v0           #localObject2:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->removeSecondTopRecentTask(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/AccessControlManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 199
    return-void
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 144
    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .locals 0
    .parameter "possword"

    .prologue
    .line 139
    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 177
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    new-instance v1, Lcom/meizu/app/AccessApplication$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/app/AccessApplication$2;-><init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, v5}, Lcom/meizu/app/AccessApplication;->requestWindowFeature(I)Z

    .line 58
    const v2, 0x109001a

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 61
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAccessPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->mAccessPkg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAccessPackageLabel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    .line 70
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->mDisplaytitleString:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_4

    .line 75
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->mStartComponentName:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    if-nez v2, :cond_5

    .line 79
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 82
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 83
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-boolean v5, v2, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    .line 86
    :cond_6
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    const v2, 0x10202ac

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SystemLockView;

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    .line 88
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const v3, 0x10800ba

    invoke-virtual {v2, v5, v3}, Lcom/meizu/widget/SystemLockView;->setKeyRightButtonVisibility(ZI)V

    .line 90
    sget-object v2, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 91
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const v3, 0x10800b8

    invoke-virtual {v2, v5, v3}, Lcom/meizu/widget/SystemLockView;->setKeyLeftButtonVisibility(ZI)V

    .line 94
    :cond_7
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, v6}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 95
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, p0}, Lcom/meizu/widget/SystemLockView;->setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V

    .line 96
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104059b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meizu_password_length"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, max:I
    if-nez v1, :cond_8

    .line 102
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_8
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, v1}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 107
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, v6}, Lcom/meizu/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 109
    const-string v2, "access_control"

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/AccessControlManager;

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    .line 110
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 111
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputForced(ILandroid/os/ResultReceiver;)Z

    goto :goto_0
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 192
    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 266
    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    new-instance v1, Lcom/meizu/app/AccessApplication$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/app/AccessApplication$3;-><init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 182
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 123
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->update()V

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/app/AccessApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SystemLockView;->setSystemUiVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SystemLockView;->setFitsSystemWindows(Z)V

    .line 134
    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 187
    return-void
.end method

.method public removeSecondTopRecentTask(Ljava/lang/String;)V
    .locals 12
    .parameter "pkg"

    .prologue
    const/4 v9, 0x1

    .line 218
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 219
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v10, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v10

    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_3

    move v8, v9

    .line 220
    .local v8, remove:Z
    :goto_0
    const/16 v10, 0xa

    invoke-virtual {v0, v10, v9}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 223
    .local v7, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 224
    .local v4, numTasks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 225
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 227
    .local v6, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v3, Landroid/content/Intent;

    iget-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 228
    .local v3, intent:Landroid/content/Intent;
    iget-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    .line 229
    iget-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    if-ne v2, v9, :cond_2

    if-eqz v8, :cond_2

    .line 235
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    iget v11, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->moveTaskToBack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #numTasks:I
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v7           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v8           #remove:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 236
    .restart local v2       #i:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #numTasks:I
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v7       #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v8       #remove:Z
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 243
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_4
    return-void
.end method

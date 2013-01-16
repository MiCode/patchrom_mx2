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

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 35
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 40
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 43
    new-instance v0, Lcom/meizu/app/AccessApplication$1;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$1;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/app/AccessApplication;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/app/AccessApplication;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/app/AccessApplication;)Landroid/content/pm/AccessControlManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/app/AccessApplication;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    return-object v0
.end method

.method private checkAccessControl(Ljava/lang/String;)Z
    .locals 4
    .parameter "mPackageName"

    .prologue
    const/4 v0, 0x0

    .line 232
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/AccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
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

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private update()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/meizu/app/AccessApplication;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    .line 111
    .local v0, access:Z
    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 199
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, localObject2:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 203
    const/4 v1, 0x1

    .line 206
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
    .line 188
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->removeSecondTopRecentTask(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/AccessControlManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 191
    return-void
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 139
    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .locals 0
    .parameter "possword"

    .prologue
    .line 134
    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 169
    :goto_0
    return-void

    .line 147
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

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v5}, Lcom/meizu/app/AccessApplication;->requestWindowFeature(I)Z

    .line 54
    const v2, 0x109001a

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 56
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.mPackageName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->mAccessPkg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.mPackageName.label"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->mDisplaytitleString:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_4

    .line 72
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->mStartComponentName:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 75
    :cond_4
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    if-nez v2, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 80
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-boolean v5, v2, Landroid/view/WindowManager$LayoutParams;->isInterceptHomeKey:Z

    .line 83
    :cond_6
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 84
    const v2, 0x10202af

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SystemLockView;

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    .line 85
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const v3, 0x10800ba

    invoke-virtual {v2, v5, v3}, Lcom/meizu/widget/SystemLockView;->setKeyRightButtonVisibility(ZI)V

    .line 87
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const v3, 0x10800b8

    invoke-virtual {v2, v5, v3}, Lcom/meizu/widget/SystemLockView;->setKeyLeftButtonVisibility(ZI)V

    .line 89
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, v6}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 90
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, p0}, Lcom/meizu/widget/SystemLockView;->setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V

    .line 91
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040592

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meizu_password_length"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, max:I
    if-nez v1, :cond_7

    .line 97
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_7
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, v1}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 102
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, v6}, Lcom/meizu/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 104
    const-string v2, "access_control"

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/AccessControlManager;

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    .line 105
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 106
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputForced(ILandroid/os/ResultReceiver;)Z

    goto :goto_0
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 184
    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 252
    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    new-instance v1, Lcom/meizu/app/AccessApplication$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/app/AccessApplication$3;-><init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 174
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->update()V

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/app/AccessApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SystemLockView;->setSystemUiVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SystemLockView;->setFitsSystemWindows(Z)V

    .line 129
    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 179
    return-void
.end method

.method public removeSecondTopRecentTask(Ljava/lang/String;)V
    .locals 9
    .parameter "pkg"

    .prologue
    .line 210
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 211
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v7, 0xa

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6

    .line 214
    .local v6, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 215
    .local v3, numTasks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 216
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 218
    .local v5, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 219
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    .line 220
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 222
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    iget v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 229
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_1
    return-void

    .line 215
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v5       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_1
.end method

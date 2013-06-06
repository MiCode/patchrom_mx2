.class public Lcom/android/actionassist/ActionAssistView;
.super Landroid/widget/FrameLayout;
.source "ActionAssistView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/actionassist/ActionAssistView$KeyTrigger;,
        Lcom/android/actionassist/ActionAssistView$TriggerListener;
    }
.end annotation


# static fields
.field private static mFocusKey:I


# instance fields
.field private handled:Z

.field private mActionTargetsContainer:[Landroid/view/View;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

.field private mShowing:Z

.field private mTriggerListener:Lcom/android/actionassist/ActionAssistView$TriggerListener;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/android/actionassist/ActionAssistView;->mFocusKey:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/actionassist/ActionAssistView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/android/actionassist/ActionAssistView$TriggerListener;

    invoke-direct {v0, p0}, Lcom/android/actionassist/ActionAssistView$TriggerListener;-><init>(Lcom/android/actionassist/ActionAssistView;)V

    iput-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mTriggerListener:Lcom/android/actionassist/ActionAssistView$TriggerListener;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mActionTargetsContainer:[Landroid/view/View;

    .line 29
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mWindowManager:Landroid/view/IWindowManager;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/actionassist/ActionAssistView;)Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/actionassist/ActionAssistView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/actionassist/ActionAssistView;->launchRecentPanel()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/android/actionassist/ActionAssistView;->mFocusKey:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput p0, Lcom/android/actionassist/ActionAssistView;->mFocusKey:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/actionassist/ActionAssistView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/actionassist/ActionAssistView;->handled:Z

    return p1
.end method

.method private launchRecentPanel()V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/actionassist/ActionAssistView;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "recentapps"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V

    .line 196
    :cond_2
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 197
    .local v0, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-boolean v2, p0, Lcom/android/actionassist/ActionAssistView;->mShowing:Z

    iget-boolean v0, p0, Lcom/android/actionassist/ActionAssistView;->handled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 138
    iput-boolean v1, p0, Lcom/android/actionassist/ActionAssistView;->mShowing:Z

    .line 139
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/actionassist/ActionAssistView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->reset(Z)V

    .line 144
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 137
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mActionTargetsContainer:[Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/android/actionassist/ActionAssistView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mActionTargetsContainer:[Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/android/actionassist/ActionAssistView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mActionTargetsContainer:[Landroid/view/View;

    const/4 v1, 0x2

    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/android/actionassist/ActionAssistView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 47
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView;->mActionTargetsContainer:[Landroid/view/View;

    const/4 v1, 0x3

    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lcom/android/actionassist/ActionAssistView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/actionassist/ActionAssistView;->mActionTargetsContainer:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/actionassist/ActionAssistView;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v1

    .line 126
    .local v1, rot:I
    iget-object v2, p0, Lcom/android/actionassist/ActionAssistView;->mActionTargetsContainer:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/android/actionassist/ActionAssistView;->mActionTargetsContainer:[Landroid/view/View;

    aget-object v2, v2, v1

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    iput-object v2, p0, Lcom/android/actionassist/ActionAssistView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1           #rot:I
    :goto_1
    iget-object v2, p0, Lcom/android/actionassist/ActionAssistView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    iget-object v3, p0, Lcom/android/actionassist/ActionAssistView;->mTriggerListener:Lcom/android/actionassist/ActionAssistView$TriggerListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$OnTriggerListener;)V

    .line 131
    iget-object v2, p0, Lcom/android/actionassist/ActionAssistView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 132
    invoke-virtual {p0, v4}, Lcom/android/actionassist/ActionAssistView;->setVisibility(I)V

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/actionassist/ActionAssistView;->mShowing:Z

    .line 134
    return-void

    .line 128
    :catch_0
    move-exception v2

    goto :goto_1
.end method

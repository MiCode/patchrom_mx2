.class public Lcom/android/actionassist/AssistReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AssistReceiver.java"


# static fields
.field private static mActionPanelView:Lcom/android/actionassist/ActionAssistView;

.field private static mGuideWindow:Lmiui/widget/GuidePopupWindow;


# instance fields
.field final TAG:Ljava/lang/String;

.field private final USER_GUIDE_ACTION_ASSIT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    const-string v0, "AssistReceiver"

    iput-object v0, p0, Lcom/android/actionassist/AssistReceiver;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "user_guide_action_assist"

    iput-object v0, p0, Lcom/android/actionassist/AssistReceiver;->USER_GUIDE_ACTION_ASSIT:Ljava/lang/String;

    return-void
.end method

.method static dismissUserGuide()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/actionassist/AssistReceiver;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/android/actionassist/AssistReceiver;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/actionassist/AssistReceiver;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 105
    :cond_0
    return-void
.end method

.method private hideActionAssist(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    sget-object v0, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-virtual {v0}, Lcom/android/actionassist/ActionAssistView;->hide()V

    .line 88
    :cond_0
    return-void
.end method

.method private showActionAssist(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 41
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 42
    .local v4, windowManager:Landroid/view/WindowManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 44
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "device_provisioned"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 82
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-object v5, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    if-nez v5, :cond_2

    .line 49
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v3, root:Landroid/widget/LinearLayout;
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v5, 0x7f03

    invoke-virtual {v0, v5, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/actionassist/ActionAssistView;

    sput-object v5, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    .line 52
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 53
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 54
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 55
    const/16 v5, 0x7e2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    const v5, 0x800008

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 57
    const/4 v5, -0x3

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 58
    const/16 v5, 0x53

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 59
    const-string v5, "ActionAssist"

    invoke-virtual {v1, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    const v5, 0x60d0098

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 61
    const/16 v5, 0x31

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 63
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100

    or-int/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 66
    :cond_1
    sget-object v5, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-interface {v4, v5, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #root:Landroid/widget/LinearLayout;
    :cond_2
    sget-object v5, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-virtual {v5}, Lcom/android/actionassist/ActionAssistView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 70
    .restart local v1       #lp:Landroid/view/WindowManager$LayoutParams;
    const-string v5, "user_guide_action_assist"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    .line 71
    const-string v5, "user_guide_action_assist"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 73
    sget-object v5, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-interface {v4, v5, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-direct {p0, p1, v4}, Lcom/android/actionassist/AssistReceiver;->showUserGuide(Landroid/content/Context;Landroid/view/WindowManager;)V

    goto :goto_0

    .line 76
    :cond_3
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    .line 77
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x11

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 78
    sget-object v5, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-interface {v4, v5, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :cond_4
    sget-object v5, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-virtual {v5}, Lcom/android/actionassist/ActionAssistView;->show()V

    goto/16 :goto_0
.end method

.method private showUserGuide(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 5
    .parameter "context"
    .parameter "windowManager"

    .prologue
    const/4 v4, 0x1

    .line 92
    invoke-static {}, Lcom/android/actionassist/AssistReceiver;->dismissUserGuide()V

    .line 93
    new-instance v0, Lmiui/widget/GuidePopupWindow;

    invoke-direct {v0, p1}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/actionassist/AssistReceiver;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 94
    sget-object v0, Lcom/android/actionassist/AssistReceiver;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0, v4}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 95
    sget-object v0, Lcom/android/actionassist/AssistReceiver;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 96
    sget-object v0, Lcom/android/actionassist/AssistReceiver;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setWindowLayoutType(I)V

    .line 97
    sget-object v0, Lcom/android/actionassist/AssistReceiver;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    sget-object v1, Lcom/android/actionassist/AssistReceiver;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    const/4 v2, 0x0

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x78

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 98
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    const-string v1, "AssistReceiver"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v1, "com.android.action.SHOW_ACTION_ASSIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-direct {p0, p1}, Lcom/android/actionassist/AssistReceiver;->showActionAssist(Landroid/content/Context;)V

    goto :goto_0

    .line 35
    :cond_2
    const-string v1, "com.android.action.HIDE_ACTION_ASSIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/actionassist/AssistReceiver;->hideActionAssist(Landroid/content/Context;)V

    goto :goto_0
.end method

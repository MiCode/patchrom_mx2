.class public Lcom/android/actionassist/ActionAssist;
.super Landroid/app/Service;
.source "ActionAssist.java"


# static fields
.field private static mActionPanelView:Lcom/android/actionassist/ActionAssistView;

.field private static mGuideWindow:Lmiui/widget/GuidePopupWindow;

.field private static mResolver:Landroid/content/ContentResolver;

.field private static mWindowManager:Landroid/view/WindowManager;


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    const-string v0, "ActionAssist"

    iput-object v0, p0, Lcom/android/actionassist/ActionAssist;->TAG:Ljava/lang/String;

    return-void
.end method

.method private addActionAssistView()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 48
    sget-object v3, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    if-nez v3, :cond_1

    .line 49
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v2, root:Landroid/widget/LinearLayout;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/actionassist/ActionAssist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/actionassist/ActionAssistView;

    sput-object v3, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    .line 52
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 53
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 54
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 55
    const/16 v3, 0x7e2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    const v3, 0x800008

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 57
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 58
    const/16 v3, 0x53

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 59
    const-string v3, "ActionAssist"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    const v3, 0x60d0098

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 61
    const/16 v3, 0x31

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 63
    sget-object v3, Lcom/android/actionassist/ActionAssist;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 66
    :cond_0
    sget-object v3, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/actionassist/ActionAssistView;->setVisibility(I)V

    .line 67
    sget-object v3, Lcom/android/actionassist/ActionAssist;->mWindowManager:Landroid/view/WindowManager;

    sget-object v4, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #root:Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method static dismissUserGuide()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/android/actionassist/ActionAssist;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 113
    :cond_0
    return-void
.end method

.method public static hideActionAssist()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-virtual {v0}, Lcom/android/actionassist/ActionAssistView;->hide()V

    .line 95
    :cond_0
    return-void
.end method

.method public static showActionAssist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    sget-object v1, Lcom/android/actionassist/ActionAssist;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 89
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 76
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    sget-object v1, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-virtual {v1}, Lcom/android/actionassist/ActionAssistView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 77
    .restart local v0       #lp:Landroid/view/WindowManager$LayoutParams;
    sget-object v1, Lcom/android/actionassist/ActionAssist;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "user_guide_action_assist"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    sget-object v1, Lcom/android/actionassist/ActionAssist;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "user_guide_action_assist"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    sget-object v1, Lcom/android/actionassist/ActionAssist;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-static {}, Lcom/android/actionassist/ActionAssist;->showUserGuide()V

    goto :goto_0

    .line 83
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 84
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    sget-object v1, Lcom/android/actionassist/ActionAssist;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_2
    sget-object v1, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-virtual {v1}, Lcom/android/actionassist/ActionAssistView;->show()V

    goto :goto_0
.end method

.method private static showUserGuide()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-virtual {v0, v3}, Lcom/android/actionassist/ActionAssistView;->setVisibility(I)V

    .line 101
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0, v4}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 102
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 103
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setWindowLayoutType(I)V

    .line 104
    sget-object v0, Lcom/android/actionassist/ActionAssist;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    sget-object v1, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    sget-object v2, Lcom/android/actionassist/ActionAssist;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x78

    invoke-virtual {v0, v1, v3, v2, v4}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 32
    const-string v0, "ActionAssist"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/actionassist/ActionAssist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/android/actionassist/ActionAssist;->mWindowManager:Landroid/view/WindowManager;

    .line 34
    invoke-virtual {p0}, Lcom/android/actionassist/ActionAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/actionassist/ActionAssist;->mResolver:Landroid/content/ContentResolver;

    .line 35
    new-instance v0, Lmiui/widget/GuidePopupWindow;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/actionassist/ActionAssist;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 36
    invoke-direct {p0}, Lcom/android/actionassist/ActionAssist;->addActionAssistView()V

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

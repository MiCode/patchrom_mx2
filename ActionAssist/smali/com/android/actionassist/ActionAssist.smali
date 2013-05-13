.class public Lcom/android/actionassist/ActionAssist;
.super Landroid/app/Service;
.source "ActionAssist.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mActionPanelView:Lcom/android/actionassist/ActionAssistView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    const-string v0, "ActionAssist"

    iput-object v0, p0, Lcom/android/actionassist/ActionAssist;->TAG:Ljava/lang/String;

    return-void
.end method

.method private addActionAssistView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 23
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .local v1, root:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/android/actionassist/ActionAssist;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f03

    invoke-virtual {v2, v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/actionassist/ActionAssistView;

    iput-object v2, p0, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    .line 25
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 26
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 27
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 28
    const/16 v2, 0x7e2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 29
    const/16 v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 30
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 31
    const/4 v2, 0x5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 32
    const/16 v2, 0x53

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 33
    const-string v2, "ActionAssist"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v2, p0, Lcom/android/actionassist/ActionAssist;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v2, p0, Lcom/android/actionassist/ActionAssist;->mActionPanelView:Lcom/android/actionassist/ActionAssistView;

    invoke-virtual {v2, v5}, Lcom/android/actionassist/ActionAssistView;->setVisibility(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 40
    const-string v0, "ActionAssist"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/actionassist/ActionAssist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/actionassist/ActionAssist;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/actionassist/ActionAssist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/actionassist/ActionAssist;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    invoke-direct {p0}, Lcom/android/actionassist/ActionAssist;->addActionAssistView()V

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

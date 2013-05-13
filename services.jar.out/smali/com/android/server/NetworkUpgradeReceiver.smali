.class public Lcom/android/server/NetworkUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUpgradeReceiver.java"


# static fields
.field static final BACKUP_FINISH_BROADCAST:Ljava/lang/String; = "com.android.contacts.BACKUP_FINISH_BROADCAST"

.field private static final TAG:Ljava/lang/String; = "NetworkUpgradeReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBatteryLow:Z

.field private mUpgradeTipsDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NetworkUpgradeReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/server/NetworkUpgradeReceiver;->mIsBatteryLow:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const-string v4, "level"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/NetworkUpgradeReceiver;->mIsBatteryLow:Z

    .line 116
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.NETWORK_UPGRADE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const-string v4, "meizu.com"

    const-string v5, "from"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 52
    const-string v2, "NetworkUpgradeReceiver"

    const-string v3, "Ignoring system update request -- not from trusted server."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 56
    :cond_3
    iput-object p1, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x5

    invoke-direct {v0, p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 58
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 59
    const v2, 0x1040590

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    const v2, 0x1040591

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 61
    const v2, 0x1040593

    new-instance v4, Lcom/android/server/NetworkUpgradeReceiver$1;

    invoke-direct {v4, p0}, Lcom/android/server/NetworkUpgradeReceiver$1;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v2, 0x1040594

    new-instance v4, Lcom/android/server/NetworkUpgradeReceiver$2;

    invoke-direct {v4, p0}, Lcom/android/server/NetworkUpgradeReceiver$2;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 110
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d8

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 111
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 112
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 114
    iput-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

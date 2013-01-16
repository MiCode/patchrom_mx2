.class public Lcom/android/server/NetworkUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUpgradeReceiver.java"


# static fields
.field static final BACKUP_FINISH_BROADCAST:Ljava/lang/String; = "com.android.contacts.BACKUP_FINISH_BROADCAST"

.field private static final TAG:Ljava/lang/String; = "NetworkUpgradeReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUpgradeTipsDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.NETWORK_UPGRADE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string v2, "meizu.com"

    const-string v3, "from"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    const-string v2, "NetworkUpgradeReceiver"

    const-string v3, "Ignoring system update request -- not from trusted server."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v0, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 54
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 55
    const v2, 0x1040587

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 56
    const v2, 0x1040588

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 57
    const v2, 0x104058a

    new-instance v3, Lcom/android/server/NetworkUpgradeReceiver$1;

    invoke-direct {v3, p0}, Lcom/android/server/NetworkUpgradeReceiver$1;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    const v2, 0x104058b

    new-instance v3, Lcom/android/server/NetworkUpgradeReceiver$2;

    invoke-direct {v3, p0}, Lcom/android/server/NetworkUpgradeReceiver$2;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 85
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 89
    iput-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

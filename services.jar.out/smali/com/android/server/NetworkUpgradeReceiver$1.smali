.class Lcom/android/server/NetworkUpgradeReceiver$1;
.super Ljava/lang/Object;
.source "NetworkUpgradeReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkUpgradeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkUpgradeReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkUpgradeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 65
    const-string v4, "NetworkUpgradeReceiver"

    const-string v5, "Upgrade immediately!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v4, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/NetworkUpgradeReceiver;->access$000(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/NetworkUpgradeReceiver;->access$000(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mIsBatteryLow:Z
    invoke-static {v4}, Lcom/android/server/NetworkUpgradeReceiver;->access$100(Lcom/android/server/NetworkUpgradeReceiver;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkUpgradeReceiver;->access$200(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090105

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, v:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkUpgradeReceiver;->access$200(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/server/NetworkUpgradeReceiver$1$1;

    invoke-direct {v6, p0}, Lcom/android/server/NetworkUpgradeReceiver$1$1;-><init>(Lcom/android/server/NetworkUpgradeReceiver$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 83
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 84
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 96
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v3           #v:Landroid/view/View;
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkUpgradeReceiver;->access$200(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/RecoverySystem;->rebootNetUpgrade(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, e:Ljava/io/IOException;
    const-string v4, "NetworkUpgradeReceiver"

    const-string v5, "Can\'t perform system upgrade reset"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

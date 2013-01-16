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
    .line 58
    iput-object p1, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    const-string v1, "NetworkUpgradeReceiver"

    const-string v2, "Upgrade immediately!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/NetworkUpgradeReceiver;->access$000(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/NetworkUpgradeReceiver;->access$000(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 67
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver$1;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/NetworkUpgradeReceiver;->access$100(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootNetUpgrade(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/IOException;
    const-string v1, "NetworkUpgradeReceiver"

    const-string v2, "Can\'t perform system upgrade reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

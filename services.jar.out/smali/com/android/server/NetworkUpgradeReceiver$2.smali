.class Lcom/android/server/NetworkUpgradeReceiver$2;
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
    .line 98
    iput-object p1, p0, Lcom/android/server/NetworkUpgradeReceiver$2;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    const-string v0, "NetworkUpgradeReceiver"

    const-string v1, "Upgrade later!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/server/NetworkUpgradeReceiver$2;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/NetworkUpgradeReceiver;->access$000(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/server/NetworkUpgradeReceiver$2;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/NetworkUpgradeReceiver;->access$000(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 106
    :cond_0
    return-void
.end method

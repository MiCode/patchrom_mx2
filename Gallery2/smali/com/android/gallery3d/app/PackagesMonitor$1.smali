.class Lcom/android/gallery3d/app/PackagesMonitor$1;
.super Ljava/lang/Thread;
.source "PackagesMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PackagesMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PackagesMonitor;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PackagesMonitor;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->this$0:Lcom/android/gallery3d/app/PackagesMonitor;

    iput-object p3, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->this$0:Lcom/android/gallery3d/app/PackagesMonitor;

    iget-object v2, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/gallery3d/app/PackagesMonitor;->onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/app/PackagesMonitor;->access$000(Lcom/android/gallery3d/app/PackagesMonitor;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v1, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 48
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "PackagesMonitor"

    const-string v2, "onReceiveAsync"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    iget-object v1, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PackagesMonitor$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v1
.end method

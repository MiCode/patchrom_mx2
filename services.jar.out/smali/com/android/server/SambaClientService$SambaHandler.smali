.class Lcom/android/server/SambaClientService$SambaHandler;
.super Landroid/os/Handler;
.source "SambaClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SambaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SambaClientService;


# direct methods
.method public constructor <init>(Lcom/android/server/SambaClientService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/server/SambaClientService$SambaHandler;->this$0:Lcom/android/server/SambaClientService;

    .line 393
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 394
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 398
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 401
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/SambaClientService$SambaHandler;->this$0:Lcom/android/server/SambaClientService;

    #getter for: Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;
    invoke-static {v2}, Lcom/android/server/SambaClientService;->access$300(Lcom/android/server/SambaClientService;)Lcom/android/server/SambaClientService$ScanThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/server/SambaClientService$SambaHandler;->this$0:Lcom/android/server/SambaClientService;

    #getter for: Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;
    invoke-static {v2}, Lcom/android/server/SambaClientService;->access$300(Lcom/android/server/SambaClientService;)Lcom/android/server/SambaClientService$ScanThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SambaClientService$ScanThread;->run()V

    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/SambaClientService$SambaHandler;->this$0:Lcom/android/server/SambaClientService;

    #getter for: Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;
    invoke-static {v2}, Lcom/android/server/SambaClientService;->access$300(Lcom/android/server/SambaClientService;)Lcom/android/server/SambaClientService$ScanThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/android/server/SambaClientService$SambaHandler;->this$0:Lcom/android/server/SambaClientService;

    #getter for: Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;
    invoke-static {v2}, Lcom/android/server/SambaClientService;->access$300(Lcom/android/server/SambaClientService;)Lcom/android/server/SambaClientService$ScanThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SambaClientService$ScanThread;->cancel()V

    goto :goto_0

    .line 414
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmeizu/samba/client/RemoteSharedFolder;

    .line 416
    .local v1, folder:Lmeizu/samba/client/RemoteSharedFolder;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SambaClientService$SambaHandler;->this$0:Lcom/android/server/SambaClientService;

    #getter for: Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/SambaClientService;->access$400(Lcom/android/server/SambaClientService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string v3, "samba"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "mount"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lmeizu/samba/client/RemoteSharedFolder;->user:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v1, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v1, Lmeizu/samba/client/RemoteSharedFolder;->password:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, v1, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SambaClientService"

    const-string v3, "ex mount"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #folder:Lmeizu/samba/client/RemoteSharedFolder;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmeizu/samba/client/RemoteSharedFolder;

    .line 427
    .restart local v1       #folder:Lmeizu/samba/client/RemoteSharedFolder;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/SambaClientService$SambaHandler;->this$0:Lcom/android/server/SambaClientService;

    #getter for: Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/SambaClientService;->access$400(Lcom/android/server/SambaClientService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string v3, "samba"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "umount"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 428
    :catch_1
    move-exception v0

    .line 429
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "SambaClientService"

    const-string v3, "ex umount"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/android/server/SambaServerService$SambaHandler;
.super Landroid/os/Handler;
.source "SambaServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SambaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SambaServerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SambaServerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    .line 240
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 247
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 252
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "samba"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "start"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 253
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0x2bc

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const-string v3, "SambaServerService"

    const-string v4, "samba start ok!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v3, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    #calls: Lcom/android/server/SambaServerService;->setNotificationVisible(ZI)V
    invoke-static {v3, v4, v5}, Lcom/android/server/SambaServerService;->access$100(Lcom/android/server/SambaServerService;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SambaServerService"

    const-string v4, "ex start"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :try_start_1
    const-string v3, "SambaServerService"

    const-string v4, "samba start error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "samba"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 273
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0x2bc

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    const-string v3, "SambaServerService"

    const-string v4, "samba stop ok!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v3, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/android/server/SambaServerService;->setNotificationVisible(ZI)V
    invoke-static {v3, v4, v5}, Lcom/android/server/SambaServerService;->access$100(Lcom/android/server/SambaServerService;ZI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 281
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :catch_1
    move-exception v0

    .line 282
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "SambaServerService"

    const-string v4, "ex stop"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_1
    :try_start_3
    const-string v3, "SambaServerService"

    const-string v4, "samba stop error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 286
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lmeizu/samba/server/LocalSharedFolder;

    .line 290
    .local v2, folder:Lmeizu/samba/server/LocalSharedFolder;
    :try_start_4
    iget-object v3, v2, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    sget-object v4, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_USER:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "samba"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "adduser"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, v2, Lmeizu/samba/server/LocalSharedFolder;->password:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 293
    :cond_2
    iget-object v3, v2, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    sget-object v4, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_SHARE:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    if-ne v3, v4, :cond_4

    .line 294
    iget-object v3, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v4

    const-string v5, "samba"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v7, "addshared"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    iget-object v7, v2, Lmeizu/samba/server/LocalSharedFolder;->path:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x2

    iget-object v7, v2, Lmeizu/samba/server/LocalSharedFolder;->description:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x3

    iget-boolean v3, v2, Lmeizu/samba/server/LocalSharedFolder;->writable:Z

    if-eqz v3, :cond_3

    const-string v3, "true"

    :goto_1
    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 301
    :catch_2
    move-exception v0

    .line 302
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "SambaServerService"

    const-string v4, "ex stop"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_5
    const-string v3, "false"

    goto :goto_1

    .line 297
    :cond_4
    iget-object v3, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v4

    const-string v5, "samba"

    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v7, "addshared"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    iget-object v7, v2, Lmeizu/samba/server/LocalSharedFolder;->path:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x2

    iget-object v7, v2, Lmeizu/samba/server/LocalSharedFolder;->description:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x3

    iget-boolean v3, v2, Lmeizu/samba/server/LocalSharedFolder;->writable:Z

    if-eqz v3, :cond_5

    const-string v3, "true"

    :goto_2
    aput-object v3, v6, v7

    const/4 v3, 0x4

    iget-object v7, v2, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto/16 :goto_0

    :cond_5
    const-string v3, "false"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 306
    .end local v2           #folder:Lmeizu/samba/server/LocalSharedFolder;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lmeizu/samba/server/LocalSharedFolder;

    .line 309
    .restart local v2       #folder:Lmeizu/samba/server/LocalSharedFolder;
    :try_start_6
    iget-object v3, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "samba"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "removeshared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lmeizu/samba/server/LocalSharedFolder;->path:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, v2, Lmeizu/samba/server/LocalSharedFolder;->description:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 311
    :catch_3
    move-exception v0

    .line 312
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "SambaServerService"

    const-string v4, "ex remove shared"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

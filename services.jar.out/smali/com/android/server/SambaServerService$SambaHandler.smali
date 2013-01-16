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
    .line 153
    iput-object p1, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 160
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 165
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string v3, "samba"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "start"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SambaServerService"

    const-string v3, "ex start"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string v3, "samba"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "stop"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "SambaServerService"

    const-string v3, "ex stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmeizu/samba/server/LocalSharedFolder;

    .line 185
    .local v1, folder:Lmeizu/samba/server/LocalSharedFolder;
    :try_start_2
    iget-object v2, v1, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    sget-object v3, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_USER:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string v3, "samba"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "adduser"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v1, Lmeizu/samba/server/LocalSharedFolder;->password:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 188
    :cond_0
    iget-object v2, v1, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    sget-object v3, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_SHARE:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    if-ne v2, v3, :cond_2

    .line 189
    iget-object v2, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "samba"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "addshared"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, v1, Lmeizu/samba/server/LocalSharedFolder;->path:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x2

    iget-object v6, v1, Lmeizu/samba/server/LocalSharedFolder;->description:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v6, 0x3

    iget-boolean v2, v1, Lmeizu/samba/server/LocalSharedFolder;->writable:Z

    if-eqz v2, :cond_1

    const-string v2, "true"

    :goto_1
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 196
    :catch_2
    move-exception v0

    .line 197
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "SambaServerService"

    const-string v3, "ex stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    const-string v2, "false"

    goto :goto_1

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "samba"

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "addshared"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, v1, Lmeizu/samba/server/LocalSharedFolder;->path:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x2

    iget-object v6, v1, Lmeizu/samba/server/LocalSharedFolder;->description:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v6, 0x3

    iget-boolean v2, v1, Lmeizu/samba/server/LocalSharedFolder;->writable:Z

    if-eqz v2, :cond_3

    const-string v2, "true"

    :goto_2
    aput-object v2, v5, v6

    const/4 v2, 0x4

    iget-object v6, v1, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto/16 :goto_0

    :cond_3
    const-string v2, "false"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 201
    .end local v1           #folder:Lmeizu/samba/server/LocalSharedFolder;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmeizu/samba/server/LocalSharedFolder;

    .line 204
    .restart local v1       #folder:Lmeizu/samba/server/LocalSharedFolder;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    #getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string v3, "samba"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeshared"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lmeizu/samba/server/LocalSharedFolder;->path:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v1, Lmeizu/samba/server/LocalSharedFolder;->description:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 206
    :catch_3
    move-exception v0

    .line 207
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "SambaServerService"

    const-string v3, "ex remove shared"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

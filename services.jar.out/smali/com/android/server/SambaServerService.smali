.class Lcom/android/server/SambaServerService;
.super Lmeizu/samba/server/ISambaServerManager$Stub;
.source "SambaServerService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SambaServerService$SambaHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_EVENTS:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MESSAGE_ADD_SHARED_FOLDER:I = 0x2

.field private static final MESSAGE_REMOVE_SHARED_FOLDER:I = 0x3

.field private static final MESSAGE_START_SAMBA:I = 0x0

.field private static final MESSAGE_STOP_SAMBA:I = 0x1

.field private static final SAMBA_TAG:Ljava/lang/String; = "SambaConnector"

.field private static final TAG:Ljava/lang/String; = "SambaServerService"


# instance fields
.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mLastEnableUid:I

.field private final mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Lmeizu/samba/server/ISambaServerManager$Stub;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "SambaConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 40
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "SambaConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 43
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "SambaServerService"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    .local v6, sambaThread:Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Lcom/android/server/SambaServerService$SambaHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SambaServerService$SambaHandler;-><init>(Lcom/android/server/SambaServerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    .line 46
    const-string v0, "SambaServerService"

    const-string v1, "SambaServerService started!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method private sendEnableMessage(ZZI)V
    .locals 5
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget-object v4, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v4, v3, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    const-string v1, "SambaServerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send enable message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v3, v1

    .line 111
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addSharedFolder(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 4
    .parameter "folder"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    const-string v1, "SambaServerService"

    const-string v2, "add share!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    const-string v1, "SambaServerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send message: addSharedFolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 89
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "SambaServerService"

    const-string v1, "Samba vold connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v5, "onEvent::"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " raw= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    if-eqz p3, :cond_0

    .line 136
    const-string v5, " cooked = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 138
    .local v4, str:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    const-string v5, "SambaServerService"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v5, 0x1

    return v5
.end method

.method public declared-synchronized removeSharedFolder(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 4
    .parameter "folder"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    const-string v1, "SambaServerService"

    const-string v2, "remove share"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    const-string v1, "SambaServerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send message: removeSharedFolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 100
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startServer()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaServerService"

    const-string v5, "enter startServer!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v4, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    if-nez v4, :cond_0

    .line 55
    const-string v3, "SambaServerService"

    const-string v4, "startServer,handler ==null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :goto_0
    monitor-exit p0

    return v2

    .line 59
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 63
    .local v0, ident:J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaServerService;->mLastEnableUid:I

    .line 65
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/SambaServerService;->sendEnableMessage(ZZI)V

    .line 66
    monitor-exit v4

    move v2, v3

    .line 68
    goto :goto_0

    .line 66
    .end local v0           #ident:J
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopServer()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    .line 85
    :goto_0
    monitor-exit p0

    return v2

    .line 75
    :cond_0
    :try_start_1
    const-string v2, "SambaServerService"

    const-string v3, "stop server!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 80
    .local v0, ident:J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaServerService;->mLastEnableUid:I

    .line 82
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/SambaServerService;->sendEnableMessage(ZZI)V

    .line 83
    monitor-exit v3

    .line 85
    const/4 v2, 0x1

    goto :goto_0

    .line 83
    .end local v0           #ident:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.class Lcom/android/server/SambaClientService;
.super Lmeizu/samba/client/ISambaClientManager$Stub;
.source "SambaClientService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SambaClientService$Task;,
        Lcom/android/server/SambaClientService$SambaHandler;,
        Lcom/android/server/SambaClientService$ScanThread;,
        Lcom/android/server/SambaClientService$VoldResponseCode;,
        Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    }
.end annotation


# static fields
.field private static final DEBUG_EVENTS:Z = false

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MESSAGE_MOUNT_SHARED_FOLDER:I = 0x2

.field private static final MESSAGE_SET_NETBIOS_NAME:I = 0x4

.field private static final MESSAGE_START_SCAN:I = 0x0

.field private static final MESSAGE_STOP_SCAN:I = 0x1

.field private static final MESSAGE_UMOUNT_SHARED_FOLDER:I = 0x3

.field private static final SAMBA_TAG:Ljava/lang/String; = "SambaClientConnector"

.field private static final TAG:Ljava/lang/String; = "SambaClientService"


# instance fields
.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mIsScanStart:Z

.field private mLastEnableUid:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SambaClientService$SambaStatusBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

.field private mScanIp:Ljava/lang/String;

.field private mScanThread:Lcom/android/server/SambaClientService$ScanThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 110
    invoke-direct {p0}, Lmeizu/samba/client/ISambaClientManager$Stub;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SambaClientService;->mIsScanStart:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lcom/android/server/SambaClientService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SambaClientService$1;-><init>(Lcom/android/server/SambaClientService;)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p1, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "SambaClientConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 113
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "SambaClientConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 114
    .local v8, thread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 116
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "SambaClientService"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 117
    .local v7, sambaThread:Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v0, Lcom/android/server/SambaClientService$SambaHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SambaClientService$SambaHandler;-><init>(Lcom/android/server/SambaClientService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    .line 119
    const-string v0, "SambaClientService"

    const-string v1, "SambaClientService started!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_MEIZU_DEVICE_NAME_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SambaClientService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SambaClientService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SambaClientService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/SambaClientService;->setNetbiosName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/SambaClientService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SambaClientService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/SambaClientService;->updateScanResults(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/SambaClientService;)Lcom/android/server/SambaClientService$ScanThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/SambaClientService;Lcom/android/server/SambaClientService$ScanThread;)Lcom/android/server/SambaClientService$ScanThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/SambaClientService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method private declared-synchronized isScanStart()Z
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/SambaClientService;->mIsScanStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendScanMessage(ZZI)V
    .locals 5
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v4, v3, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 354
    const-string v1, "SambaClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send scan message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v3, v1

    .line 350
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setNetbiosName(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 682
    iget-object v1, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 685
    const-string v1, "SambaClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send setNetbiosname message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void
.end method

.method private declared-synchronized updateSambaMountPointChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "point"
    .parameter "status"

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 309
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 310
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .local v0, bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_start_2
    iget-object v4, v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4, p1, p2}, Lmeizu/samba/client/ISambaStatusListener;->onMountPointChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 309
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 313
    :catch_0
    move-exception v3

    .line 314
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "SambaClientService"

    const-string v6, "Listener dead"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 320
    .end local v0           #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 308
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 316
    .restart local v0       #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 317
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "SambaClientService"

    const-string v6, "Listener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 320
    .end local v0           #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 322
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized updateScanResults(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "addresses"
    .parameter "folderList"

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SambaClientService;->isScanStart()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SCAN_STOPED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    const-string v4, "SambaClientService"

    const-string v5, "scan is stoped,do not call listener"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 330
    :cond_0
    :try_start_1
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateScanResults"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateScanResults list:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v5, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 334
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    .local v0, bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_start_3
    iget-object v4, v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4, p1, p2}, Lmeizu/samba/client/ISambaStatusListener;->onScanResults(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 333
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 337
    :catch_0
    move-exception v3

    .line 338
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SambaClientService"

    const-string v6, "Listener dead"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 344
    .end local v0           #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 326
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 340
    .restart local v0       #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 341
    .local v1, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v4, "SambaClientService"

    const-string v6, "Listener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 344
    .end local v0           #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public addSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)Z
    .locals 10
    .parameter "listener"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "listener is null in addSambaStatusListener"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 268
    :cond_0
    const-string v4, "SambaClientService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addSambaStatusListener:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v7, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 270
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 271
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 272
    const-string v4, "SambaClientService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mListeners.get(i):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-interface {p1}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SambaClientService$SambaStatusBinderListener;

    iget-object v4, v4, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    const-string v4, "SambaClientService"

    const-string v6, "this listener is already added!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    monitor-exit v7

    move v4, v5

    .line 288
    :goto_1
    return v4

    .line 271
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_2
    new-instance v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SambaClientService$SambaStatusBinderListener;-><init>(Lcom/android/server/SambaClientService;Lmeizu/samba/client/ISambaStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .local v0, bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_start_1
    invoke-interface {p1}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v4, v0, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 281
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v4, "SambaClientService"

    const-string v8, "addSambaStatusListener success"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :try_start_2
    monitor-exit v7

    move v4, v5

    .line 288
    goto :goto_1

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, rex:Landroid/os/RemoteException;
    const-string v4, "SambaClientService"

    const-string v5, "Failed to link to listener death"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v7

    move v4, v6

    goto :goto_1

    .line 287
    .end local v0           #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v1           #i:I
    .end local v2           #rex:Landroid/os/RemoteException;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public getNetbiosName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "ip"

    .prologue
    .line 655
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ip cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 657
    :cond_0
    const/4 v6, 0x0

    .line 659
    .local v6, name:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lmeizu_jcifs/netbios/NbtAddress;->getAllByAddress(Ljava/lang/String;)[Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v1

    .line 660
    .local v1, addresses:[Lmeizu_jcifs/netbios/NbtAddress;
    if-nez v1, :cond_1

    .line 661
    const/4 v7, 0x0

    .line 677
    .end local v1           #addresses:[Lmeizu_jcifs/netbios/NbtAddress;
    :goto_0
    return-object v7

    .line 662
    .restart local v1       #addresses:[Lmeizu_jcifs/netbios/NbtAddress;
    :cond_1
    move-object v2, v1

    .local v2, arr$:[Lmeizu_jcifs/netbios/NbtAddress;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 663
    .local v0, addr:Lmeizu_jcifs/netbios/NbtAddress;
    const-string v7, "SambaClientService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addr:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {v0}, Lmeizu_jcifs/netbios/NbtAddress;->isGroupAddress()Z

    move-result v7

    if-nez v7, :cond_4

    .line 665
    invoke-virtual {v0}, Lmeizu_jcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 674
    .end local v0           #addr:Lmeizu_jcifs/netbios/NbtAddress;
    .end local v1           #addresses:[Lmeizu_jcifs/netbios/NbtAddress;
    .end local v2           #arr$:[Lmeizu_jcifs/netbios/NbtAddress;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    :goto_2
    if-nez v6, :cond_3

    .line 675
    move-object v6, p1

    :cond_3
    move-object v7, v6

    .line 677
    goto :goto_0

    .line 662
    .restart local v0       #addr:Lmeizu_jcifs/netbios/NbtAddress;
    .restart local v1       #addresses:[Lmeizu_jcifs/netbios/NbtAddress;
    .restart local v2       #arr$:[Lmeizu_jcifs/netbios/NbtAddress;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 669
    .end local v0           #addr:Lmeizu_jcifs/netbios/NbtAddress;
    .end local v1           #addresses:[Lmeizu_jcifs/netbios/NbtAddress;
    .end local v2           #arr$:[Lmeizu_jcifs/netbios/NbtAddress;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v3

    .line 671
    .local v3, e:Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_2
.end method

.method public getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "ip"

    .prologue
    const/4 v9, 0x0

    .line 585
    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "ip cannot be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 587
    :cond_0
    new-instance v10, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 588
    .local v6, policy:Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 590
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 593
    .local v3, folderList:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v2, Lmeizu_jcifs/smb/SmbFile;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "smb://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 594
    .local v2, file:Lmeizu_jcifs/smb/SmbFile;
    invoke-virtual {v2}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 596
    invoke-virtual {v2}, Lmeizu_jcifs/smb/SmbFile;->list()[Ljava/lang/String;

    move-result-object v7

    .line 597
    .local v7, strFileLiStrings:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v8, v0, v4

    .line 598
    .local v8, string:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 601
    .end local v8           #string:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 602
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 616
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #strFileLiStrings:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v2           #file:Lmeizu_jcifs/smb/SmbFile;
    :goto_1
    return-object v9

    .line 606
    :catch_0
    move-exception v1

    .line 607
    .local v1, e:Lmeizu_jcifs/smb/SmbAuthException;
    new-instance v9, Lmeizu/samba/client/SambaAuthException;

    const-string v10, "SmbAuthException"

    invoke-direct {v9, v10}, Lmeizu/samba/client/SambaAuthException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 609
    .end local v1           #e:Lmeizu_jcifs/smb/SmbAuthException;
    :catch_1
    move-exception v1

    .line 610
    .local v1, e:Ljava/net/MalformedURLException;
    goto :goto_1

    .line 611
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v1

    .line 612
    .local v1, e:Lmeizu_jcifs/smb/SmbException;
    goto :goto_1

    .line 613
    .end local v1           #e:Lmeizu_jcifs/smb/SmbException;
    :catch_3
    move-exception v1

    .line 614
    .local v1, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method public getSharedFoldersWithAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ip"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 638
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ip cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "username cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 640
    :cond_1
    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    :cond_2
    const/4 v1, 0x0

    .line 645
    .local v1, list:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/SambaClientService;->getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lmeizu/samba/client/SambaAuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 650
    :goto_0
    return-object v2

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Lmeizu/samba/client/SambaAuthException;
    const-string v2, "SambaClientService"

    const-string v3, "getSharedFoldersWithAuth SambaAuthException"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSharedFoldersWithAuthAndDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ip"
    .parameter "domain"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 621
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ip cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 622
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "domain cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 623
    :cond_1
    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "username cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    :cond_2
    if-nez p4, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 627
    :cond_3
    const/4 v1, 0x0

    .line 629
    .local v1, list:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/SambaClientService;->getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lmeizu/samba/client/SambaAuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 634
    :goto_0
    return-object v2

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, e:Lmeizu/samba/client/SambaAuthException;
    const-string v2, "SambaClientService"

    const-string v3, "getSharedFoldersWithAuthAndDomain SambaAuthException"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 9
    .parameter "folder"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "isMounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ismounted"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 255
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    :try_start_2
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMounted: event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaClientService"

    const-string v4, "ex isMounted"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 253
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    move v2, v3

    .line 260
    goto :goto_0

    .line 247
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized mountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 9
    .parameter "folder"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "add share!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->user:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->password:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 209
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    :try_start_2
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mountSharedFolder: event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    const-string v3, "SambaClientService"

    const-string v4, "add share ok!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaClientService"

    const-string v4, "ex mount"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 207
    goto :goto_0

    .line 215
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    const-string v2, "SambaClientService"

    const-string v4, "add share error!"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 216
    goto :goto_0

    .line 189
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public needAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "ip"
    .parameter "folder"

    .prologue
    .line 570
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ip cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "folder cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/SambaClientService;->getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lmeizu/samba/client/SambaAuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 579
    .local v1, list:Ljava/lang/String;
    const/4 v2, 0x0

    .end local v1           #list:Ljava/lang/String;
    :goto_0
    return v2

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Lmeizu/samba/client/SambaAuthException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 3

    .prologue
    .line 362
    const-string v1, "SambaClientService"

    const-string v2, "Samba vold connected!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "meizu_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, name:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/SambaClientService;->setNetbiosName(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public removeSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)V
    .locals 5
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "listener is null in removeSambaStatusListener"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_0
    const-string v2, "SambaClientService"

    const-string v3, "removeSambaStatusListener"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v3, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;

    .line 298
    .local v0, bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    invoke-interface {p1}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 300
    const-string v2, "SambaClientService"

    const-string v4, "removeSambaStatusListener success"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v3

    .line 305
    .end local v0           #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :goto_0
    return-void

    .line 304
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized startScan(Ljava/lang/String;)Z
    .locals 7
    .parameter "ip"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "enter startScan!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/SambaClientService;->mIsScanStart:Z

    .line 144
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 147
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;

    .line 149
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    if-nez v4, :cond_2

    .line 150
    const-string v3, "SambaClientService"

    const-string v4, "startScan,handler ==null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 154
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 158
    .local v0, ident:J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaClientService;->mLastEnableUid:I

    .line 160
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/SambaClientService;->sendScanMessage(ZZI)V

    .line 161
    monitor-exit v4

    move v2, v3

    .line 163
    goto :goto_0

    .line 161
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized stopScan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    .line 181
    :goto_0
    monitor-exit p0

    return v2

    .line 170
    :cond_0
    :try_start_1
    const-string v2, "SambaClientService"

    const-string v3, "stopScan!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/SambaClientService;->mIsScanStart:Z

    .line 172
    iget-object v3, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 176
    .local v0, ident:J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaClientService;->mLastEnableUid:I

    .line 178
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/SambaClientService;->sendScanMessage(ZZI)V

    .line 179
    monitor-exit v3

    .line 181
    const/4 v2, 0x1

    goto :goto_0

    .line 179
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

    .line 169
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized umountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 9
    .parameter "folder"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "remove share"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "umount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 236
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    :try_start_2
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "umountSharedFolder: event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaClientService"

    const-string v4, "ex umount"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 234
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    move v2, v3

    .line 241
    goto :goto_0

    .line 221
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

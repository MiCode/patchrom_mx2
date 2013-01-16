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
.field private static final DEBUG_EVENTS:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MESSAGE_MOUNT_SHARED_FOLDER:I = 0x2

.field private static final MESSAGE_START_SCAN:I = 0x0

.field private static final MESSAGE_STOP_SCAN:I = 0x1

.field private static final MESSAGE_UMOUNT_SHARED_FOLDER:I = 0x3

.field private static final SAMBA_TAG:Ljava/lang/String; = "SambaClientConnector"

.field private static final TAG:Ljava/lang/String; = "SambaClientService"


# instance fields
.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

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

.field private final mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

.field private mScanIp:Ljava/lang/String;

.field private mScanThread:Lcom/android/server/SambaClientService$ScanThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Lmeizu/samba/client/ISambaClientManager$Stub;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/android/server/SambaClientService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/SambaClientService$ScanThread;-><init>(Lcom/android/server/SambaClientService;)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    .line 98
    iput-object p1, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "SambaClientConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 100
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "SambaClientConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 101
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 103
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "SambaClientService"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 104
    .local v6, sambaThread:Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v0, Lcom/android/server/SambaClientService$SambaHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SambaClientService$SambaHandler;-><init>(Lcom/android/server/SambaClientService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    .line 106
    const-string v0, "SambaClientService"

    const-string v1, "SambaClientService started!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SambaClientService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SambaClientService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/SambaClientService;->updateScanResults(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/SambaClientService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SambaClientService;)Lcom/android/server/SambaClientService$ScanThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/SambaClientService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method private sendScanMessage(ZZI)V
    .locals 5
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v4, v3, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 307
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

    .line 308
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v3, v1

    .line 303
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private declared-synchronized updateSambaMountPointChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "point"
    .parameter "status"

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 268
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .local v0, bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_start_2
    iget-object v4, v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4, p1, p2}, Lmeizu/samba/client/ISambaStatusListener;->onMountPointChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 267
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 271
    :catch_0
    move-exception v3

    .line 272
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "SambaClientService"

    const-string v6, "Listener dead"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 278
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

    .line 266
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 274
    .restart local v0       #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 275
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "SambaClientService"

    const-string v6, "Listener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 278
    .end local v0           #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized updateScanResults(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "addresses"
    .parameter "folderList"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
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

    .line 284
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

    .line 285
    iget-object v5, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 287
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    .local v0, bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_start_2
    iget-object v4, v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4, p1, p2}, Lmeizu/samba/client/ISambaStatusListener;->onScanResults(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 286
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v3

    .line 291
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "SambaClientService"

    const-string v6, "Listener dead"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 297
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

    .line 283
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 293
    .restart local v0       #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 294
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "SambaClientService"

    const-string v6, "Listener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 297
    .end local v0           #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 299
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)Z
    .locals 10
    .parameter "listener"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "listener is null in addSambaStatusListener"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
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

    .line 229
    iget-object v7, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 230
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 231
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 232
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

    .line 233
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

    .line 234
    const-string v4, "SambaClientService"

    const-string v6, "this listener is already added!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-exit v7

    move v4, v5

    .line 247
    :goto_1
    return v4

    .line 231
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_2
    new-instance v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SambaClientService$SambaStatusBinderListener;-><init>(Lcom/android/server/SambaClientService;Lmeizu/samba/client/ISambaStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .local v0, bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_start_1
    invoke-interface {p1}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v4, v0, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 241
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    :try_start_2
    monitor-exit v7

    move v4, v5

    .line 247
    goto :goto_1

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, rex:Landroid/os/RemoteException;
    const-string v4, "SambaClientService"

    const-string v5, "Failed to link to listener death"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    monitor-exit v7

    move v4, v6

    goto :goto_1

    .line 246
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

.method public getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "ip"

    .prologue
    const/4 v9, 0x0

    .line 471
    new-instance v10, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 472
    .local v6, policy:Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 474
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 477
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

    .line 478
    .local v2, file:Lmeizu_jcifs/smb/SmbFile;
    invoke-virtual {v2}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 480
    invoke-virtual {v2}, Lmeizu_jcifs/smb/SmbFile;->list()[Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, strFileLiStrings:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v8, v0, v4

    .line 482
    .local v8, string:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 485
    .end local v8           #string:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 486
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 500
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #strFileLiStrings:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v2           #file:Lmeizu_jcifs/smb/SmbFile;
    :goto_1
    return-object v9

    .line 490
    :catch_0
    move-exception v1

    .line 492
    .local v1, e:Lmeizu_jcifs/smb/SmbAuthException;
    const-string v9, ""

    goto :goto_1

    .line 493
    .end local v1           #e:Lmeizu_jcifs/smb/SmbAuthException;
    :catch_1
    move-exception v1

    .line 494
    .local v1, e:Ljava/net/MalformedURLException;
    goto :goto_1

    .line 495
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v1

    .line 496
    .local v1, e:Lmeizu_jcifs/smb/SmbException;
    goto :goto_1

    .line 497
    .end local v1           #e:Lmeizu_jcifs/smb/SmbException;
    :catch_3
    move-exception v1

    .line 498
    .local v1, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method public declared-synchronized isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 9
    .parameter "folder"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "isMounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
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

    .line 215
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

    .line 216
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

    .line 220
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaClientService"

    const-string v4, "ex isMounted"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 213
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    move v2, v3

    .line 220
    goto :goto_0

    .line 207
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

    .line 154
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "add share!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
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

    .line 169
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

    .line 170
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

    .line 172
    const-string v3, "SambaClientService"

    const-string v4, "add share ok!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaClientService"

    const-string v4, "ex mount"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 167
    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    const-string v2, "SambaClientService"

    const-string v4, "add share error!"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 176
    goto :goto_0

    .line 154
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public needAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ip"
    .parameter "folder"

    .prologue
    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/SambaClientService;->getSharedFolders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, list:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x1

    .line 465
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 315
    const-string v0, "SambaClientService"

    const-string v1, "Samba vold connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v5, "onEvent::"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
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

    .line 327
    if-eqz p3, :cond_0

    .line 328
    const-string v5, " cooked = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 330
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

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    const-string v5, "SambaClientService"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v5, 0x1

    return v5
.end method

.method public removeSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)V
    .locals 5
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "listener is null in removeSambaStatusListener"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_0
    const-string v2, "SambaClientService"

    const-string v3, "removeSambaStatusListener"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 256
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

    .line 257
    .local v0, bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    invoke-interface {p1}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    monitor-exit v3

    .line 263
    .end local v0           #bl:Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :goto_0
    return-void

    .line 262
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

    .line 112
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "enter startScan!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 117
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    if-nez v4, :cond_2

    .line 120
    const-string v3, "SambaClientService"

    const-string v4, "startScan,handler ==null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 124
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 128
    .local v0, ident:J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaClientService;->mLastEnableUid:I

    .line 130
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/SambaClientService;->sendScanMessage(ZZI)V

    .line 131
    monitor-exit v4

    move v2, v3

    .line 133
    goto :goto_0

    .line 131
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

    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    .line 150
    :goto_0
    monitor-exit p0

    return v2

    .line 140
    :cond_0
    :try_start_1
    const-string v2, "SambaClientService"

    const-string v3, "stopScan!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 145
    .local v0, ident:J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaClientService;->mLastEnableUid:I

    .line 147
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/SambaClientService;->sendScanMessage(ZZI)V

    .line 148
    monitor-exit v3

    .line 150
    const/4 v2, 0x1

    goto :goto_0

    .line 148
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

    .line 139
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

    .line 181
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "remove share"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
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

    .line 196
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

    .line 197
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

    .line 201
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaClientService"

    const-string v4, "ex umount"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 194
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    move v2, v3

    .line 201
    goto :goto_0

    .line 181
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

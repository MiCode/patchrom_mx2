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
.field private static final DEBUG_EVENTS:Z = false

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

.field private mNotification:Landroid/app/Notification;

.field private mNotificationShown:Z

.field private final mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Lmeizu/samba/server/ISambaServerManager$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "SambaConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 55
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "SambaConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 56
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 58
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "SambaServerService"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    .local v6, sambaThread:Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Lcom/android/server/SambaServerService$SambaHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SambaServerService$SambaHandler;-><init>(Lcom/android/server/SambaServerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    .line 61
    const-string v0, "SambaServerService"

    const-string v1, "SambaServerService started!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SambaServerService;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/server/SambaServerService;->setNotificationVisible(ZI)V

    return-void
.end method

.method private sendEnableMessage(ZZI)V
    .locals 5
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    iget-object v4, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v4, v3, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
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

    .line 150
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v3, v1

    .line 145
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setNotificationVisible(ZI)V
    .locals 9
    .parameter "visible"
    .parameter "delay"

    .prologue
    const/4 v8, 0x0

    .line 183
    if-nez p1, :cond_0

    iget-boolean v5, p0, Lcom/android/server/SambaServerService;->mNotificationShown:Z

    if-nez v5, :cond_0

    .line 232
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 190
    .local v3, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x1080747

    .line 191
    .local v1, icon:I
    if-eqz p1, :cond_2

    .line 193
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 195
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    .line 196
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 197
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iput v1, v5, Landroid/app/Notification;->icon:I

    .line 198
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    const v6, 0x10806e6

    iput v6, v5, Landroid/app/Notification;->notificationIcon:I

    .line 199
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    const/16 v6, 0x20

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 201
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.meizu.filemanager"

    const-string v6, "com.meizu.filemanager.managefile.CloseWifiShareActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const/high16 v5, 0x4000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 210
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x1090096

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 213
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v5, 0x1020006

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 214
    const v5, 0x1020371

    const/16 v6, 0x8

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 216
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iput-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 219
    .end local v0           #contentView:Landroid/widget/RemoteViews;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104045a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104045b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 222
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x1020016

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 226
    iget-object v5, p0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 231
    .end local v4           #title:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/SambaServerService;->mNotificationShown:Z

    goto/16 :goto_0

    .line 228
    :cond_2
    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addSharedFolder(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 4
    .parameter "folder"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    const-string v1, "SambaServerService"

    const-string v2, "add share!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 127
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 129
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

    .line 130
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 123
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isServerRunning()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaServerService"

    const-string v5, "isServerRunning?"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "isrunning"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 112
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    :try_start_2
    const-string v4, "SambaServerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isServerRunning: event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
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

    .line 117
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "SambaServerService"

    const-string v4, "ex isServerRunning"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    move v2, v3

    .line 117
    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "SambaServerService"

    const-string v1, "Samba vold connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized removeSharedFolder(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 4
    .parameter "folder"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    const-string v1, "SambaServerService"

    const-string v2, "remove share"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
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

    .line 141
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 134
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

    .line 67
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaServerService"

    const-string v5, "enter startServer!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v4, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    if-nez v4, :cond_0

    .line 70
    const-string v3, "SambaServerService"

    const-string v4, "startServer,handler ==null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :goto_0
    monitor-exit p0

    return v2

    .line 74
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 78
    .local v0, ident:J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaServerService;->mLastEnableUid:I

    .line 80
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/SambaServerService;->sendEnableMessage(ZZI)V

    .line 81
    monitor-exit v4

    move v2, v3

    .line 83
    goto :goto_0

    .line 81
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

    .line 67
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopServer()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return v2

    .line 90
    :cond_0
    :try_start_1
    const-string v2, "SambaServerService"

    const-string v3, "stop server!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v3, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 95
    .local v0, ident:J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaServerService;->mLastEnableUid:I

    .line 97
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/SambaServerService;->sendEnableMessage(ZZI)V

    .line 98
    monitor-exit v3

    .line 100
    const/4 v2, 0x1

    goto :goto_0

    .line 98
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

    .line 89
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

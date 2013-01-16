.class public Lmeizu/samba/client/SambaClientManager;
.super Ljava/lang/Object;
.source "SambaClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final SCAN_STOPED:Ljava/lang/String; = "SCAN_STOPED"

.field private static final TAG:Ljava/lang/String; = "SambaClientManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lmeizu/samba/client/SambaStatusListener;",
            "Lmeizu/samba/client/SambaClientManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lmeizu/samba/client/ISambaClientManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmeizu/samba/client/ISambaClientManager;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    .line 135
    iput-object p2, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    .line 136
    iput-object p1, p0, Lmeizu/samba/client/SambaClientManager;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method


# virtual methods
.method public addSambaStatusListener(Lmeizu/samba/client/SambaStatusListener;)Z
    .locals 6
    .parameter "listener"

    .prologue
    .line 222
    const/4 v1, 0x1

    .line 223
    .local v1, result:Z
    if-nez p1, :cond_0

    .line 224
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener==null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_0
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 227
    const-string v3, "SambaClientManager"

    const-string v4, "addSambaStatusListener: already added!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v3, 0x1

    .line 246
    :goto_0
    return v3

    .line 232
    :cond_1
    :try_start_0
    iget-object v4, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :try_start_1
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    .line 234
    .local v2, transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    if-nez v2, :cond_2

    .line 235
    new-instance v2, Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    .end local v2           #transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lmeizu/samba/client/SambaClientManager$ListenerTransport;-><init>(Lmeizu/samba/client/SambaClientManager;Lmeizu/samba/client/SambaStatusListener;Landroid/os/Looper;)V

    .line 237
    .restart local v2       #transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    :cond_2
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    iget-object v5, p0, Lmeizu/samba/client/SambaClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lmeizu/samba/client/ISambaClientManager;->addSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)Z

    .line 239
    monitor-exit v4

    .end local v2           #transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    :goto_1
    move v3, v1

    .line 246
    goto :goto_0

    .line 239
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SambaClientManager"

    const-string v4, "addSambaStatusListener: DeadObjectException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ip"

    .prologue
    .line 292
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 3
    .parameter "folder"

    .prologue
    .line 207
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 212
    :goto_0
    return v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 3
    .parameter "folder"

    .prologue
    .line 174
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->mountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ip"
    .parameter "folder"

    .prologue
    .line 274
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1, p2}, Lmeizu/samba/client/ISambaClientManager;->needAuth(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 280
    :goto_0
    return v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeSambaStatusListener(Lmeizu/samba/client/SambaStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    .line 259
    .local v1, transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    if-eqz v1, :cond_1

    .line 260
    iget-object v2, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lmeizu/samba/client/ISambaClientManager;->removeSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1           #transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SambaClientManager"

    const-string v3, "RemoteException in removeSambaStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startScan(Ljava/lang/String;)Z
    .locals 3
    .parameter "ip"

    .prologue
    .line 146
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->startScan(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 151
    :goto_0
    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopScan()Z
    .locals 2

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1}, Lmeizu/samba/client/ISambaClientManager;->stopScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 163
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public umountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 3
    .parameter "folder"

    .prologue
    .line 191
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->umountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

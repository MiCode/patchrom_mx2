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
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    .line 136
    iput-object p2, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    .line 137
    iput-object p1, p0, Lmeizu/samba/client/SambaClientManager;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method


# virtual methods
.method public addSambaStatusListener(Lmeizu/samba/client/SambaStatusListener;)Z
    .locals 6
    .parameter "listener"

    .prologue
    .line 223
    const/4 v1, 0x1

    .line 224
    .local v1, result:Z
    if-nez p1, :cond_0

    .line 225
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener==null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_0
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 228
    const-string v3, "SambaClientManager"

    const-string v4, "addSambaStatusListener: already added!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v3, 0x1

    .line 247
    :goto_0
    return v3

    .line 233
    :cond_1
    :try_start_0
    iget-object v4, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    .line 235
    .local v2, transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    if-nez v2, :cond_2

    .line 236
    new-instance v2, Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    .end local v2           #transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lmeizu/samba/client/SambaClientManager$ListenerTransport;-><init>(Lmeizu/samba/client/SambaClientManager;Lmeizu/samba/client/SambaStatusListener;Landroid/os/Looper;)V

    .line 238
    .restart local v2       #transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    :cond_2
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    iget-object v5, p0, Lmeizu/samba/client/SambaClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lmeizu/samba/client/ISambaClientManager;->addSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)Z

    .line 240
    monitor-exit v4

    .end local v2           #transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    :goto_1
    move v3, v1

    .line 247
    goto :goto_0

    .line 240
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SambaClientManager"

    const-string v4, "addSambaStatusListener: DeadObjectException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNetbiosName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ip"

    .prologue
    .line 335
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->getNetbiosName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 339
    :goto_0
    return-object v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ip"

    .prologue
    .line 293
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmeizu/samba/client/SambaAuthException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 298
    :goto_0
    return-object v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0

    .line 299
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 300
    .local v0, e:Lmeizu/samba/client/SambaAuthException;
    throw v0
.end method

.method public getSharedFoldersWithAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ip"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 321
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "username cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_1
    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_2
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1, p2, p3}, Lmeizu/samba/client/ISambaClientManager;->getSharedFoldersWithAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmeizu/samba/client/SambaAuthException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 328
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0

    .line 329
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 330
    .local v0, e:Lmeizu/samba/client/SambaAuthException;
    throw v0
.end method

.method public getSharedFoldersWithAuthAndDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ip"
    .parameter "domain"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 306
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "domain cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_1
    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "username cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_2
    if-nez p4, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_3
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lmeizu/samba/client/ISambaClientManager;->getSharedFoldersWithAuthAndDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmeizu/samba/client/SambaAuthException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 314
    :goto_0
    return-object v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0

    .line 315
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 316
    .local v0, e:Lmeizu/samba/client/SambaAuthException;
    throw v0
.end method

.method public isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 3
    .parameter "folder"

    .prologue
    .line 208
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 3
    .parameter "folder"

    .prologue
    .line 175
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->mountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ip"
    .parameter "folder"

    .prologue
    .line 275
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1, p2}, Lmeizu/samba/client/ISambaClientManager;->needAuth(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :goto_0
    return v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeSambaStatusListener(Lmeizu/samba/client/SambaStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    .line 260
    .local v1, transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    if-eqz v1, :cond_1

    .line 261
    iget-object v2, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lmeizu/samba/client/ISambaClientManager;->removeSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1           #transport:Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
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
    .line 147
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->startScan(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopScan()Z
    .locals 2

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1}, Lmeizu/samba/client/ISambaClientManager;->stopScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public umountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 3
    .parameter "folder"

    .prologue
    .line 192
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->umountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

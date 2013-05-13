.class public Lmeizu/samba/server/SambaServerManager;
.super Ljava/lang/Object;
.source "SambaServerManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lmeizu/samba/server/ISambaServerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmeizu/samba/server/ISambaServerManager;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    .line 25
    iput-object p1, p0, Lmeizu/samba/server/SambaServerManager;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public addSharedFolder(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 3
    .parameter "folder"

    .prologue
    .line 72
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    invoke-interface {v1, p1}, Lmeizu/samba/server/ISambaServerManager;->addSharedFolder(Lmeizu/samba/server/LocalSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isServerRunning()Z
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    invoke-interface {v1}, Lmeizu/samba/server/ISambaServerManager;->isServerRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeSharedFolder(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 3
    .parameter "folder"

    .prologue
    .line 88
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    invoke-interface {v1, p1}, Lmeizu/samba/server/ISambaServerManager;->removeSharedFolder(Lmeizu/samba/server/LocalSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 93
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startServer()Z
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    invoke-interface {v1}, Lmeizu/samba/server/ISambaServerManager;->startServer()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 37
    :goto_0
    return v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopServer()Z
    .locals 2

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    invoke-interface {v1}, Lmeizu/samba/server/ISambaServerManager;->stopServer()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.class public Lcom/android/internal/app/DockActionBarManager;
.super Ljava/lang/Object;
.source "DockActionBarManager.java"


# static fields
.field private static SERVICE_CLASS:Ljava/lang/String; = null

.field private static SERVICE_PACKAGE:Ljava/lang/String; = null

.field private static final tag:Ljava/lang/String; = "DockActionBarManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/app/IDockActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "com.android.systemui"

    sput-object v0, Lcom/android/internal/app/DockActionBarManager;->SERVICE_PACKAGE:Ljava/lang/String;

    .line 41
    const-string v0, "com.android.systemui.DockActionBarService"

    sput-object v0, Lcom/android/internal/app/DockActionBarManager;->SERVICE_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/app/DockActionBarManager;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/app/DockActionBarManager;->getInstance()Lcom/android/internal/app/IDockActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/DockActionBarManager;->mService:Lcom/android/internal/app/IDockActionBar;

    .line 49
    return-void
.end method


# virtual methods
.method public deactive(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;)V
    .locals 1
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IDockActionCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/DockActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/DockActionBarManager;->mService:Lcom/android/internal/app/IDockActionBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IDockActionBar;->deactive(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dock(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;Z)V
    .locals 1
    .parameter "callback"
    .parameter
    .parameter "needMenu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IDockActionCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/DockActionItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/DockActionBarManager;->mService:Lcom/android/internal/app/IDockActionBar;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IDockActionBar;->dock(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getInstance()Lcom/android/internal/app/IDockActionBar;
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/DockActionBarManager;->mService:Lcom/android/internal/app/IDockActionBar;

    if-nez v1, :cond_0

    .line 54
    const-string v1, "dock_actionbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IDockActionBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IDockActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/DockActionBarManager;->mService:Lcom/android/internal/app/IDockActionBar;

    .line 58
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/DockActionBarManager;->mService:Lcom/android/internal/app/IDockActionBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onItemClick(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/DockActionBarManager;->mService:Lcom/android/internal/app/IDockActionBar;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IDockActionBar;->onItemClick(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerDockActionBar(Lcom/android/internal/statusbar/IStatusBar;)V
    .locals 1
    .parameter "bar"

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/DockActionBarManager;->mService:Lcom/android/internal/app/IDockActionBar;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IDockActionBar;->registerDockActionBar(Lcom/android/internal/statusbar/IStatusBar;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public undock(Lcom/android/internal/app/IDockActionCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/DockActionBarManager;->mService:Lcom/android/internal/app/IDockActionBar;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IDockActionBar;->undock(Lcom/android/internal/app/IDockActionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

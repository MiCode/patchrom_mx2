.class public Landroid/media/AudioManager$AudioLock;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioLock"
.end annotation


# instance fields
.field private mTag:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "tag"

    .prologue
    .line 2505
    iput-object p1, p0, Landroid/media/AudioManager$AudioLock;->this$0:Landroid/media/AudioManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2503
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager$AudioLock;->mToken:Landroid/os/IBinder;

    .line 2506
    iput-object p2, p0, Landroid/media/AudioManager$AudioLock;->mTag:Ljava/lang/String;

    .line 2507
    return-void
.end method


# virtual methods
.method public disableChangeVolume()V
    .locals 5

    .prologue
    .line 2510
    #calls: Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;
    invoke-static {}, Landroid/media/AudioManager;->access$300()Landroid/media/IAudioService;

    move-result-object v1

    .line 2512
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager$AudioLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/media/AudioManager$AudioLock;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->disableChangeVolume(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2516
    :goto_0
    return-void

    .line 2513
    :catch_0
    move-exception v0

    .line 2514
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/media/AudioManager;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in disableChangeVolume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reenableChangeVolume()V
    .locals 5

    .prologue
    .line 2519
    #calls: Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;
    invoke-static {}, Landroid/media/AudioManager;->access$300()Landroid/media/IAudioService;

    move-result-object v1

    .line 2521
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager$AudioLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->reenableChangeVolume(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2525
    :goto_0
    return-void

    .line 2522
    :catch_0
    move-exception v0

    .line 2523
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/media/AudioManager;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in reenableChangeVolume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class final Lcom/android/server/SambaClientService$SambaStatusBinderListener;
.super Ljava/lang/Object;
.source "SambaClientService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SambaStatusBinderListener"
.end annotation


# instance fields
.field final mListener:Lmeizu/samba/client/ISambaStatusListener;

.field final synthetic this$0:Lcom/android/server/SambaClientService;


# direct methods
.method constructor <init>(Lcom/android/server/SambaClientService;Lmeizu/samba/client/ISambaStatusListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->this$0:Lcom/android/server/SambaClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    .line 81
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 84
    const-string v0, "SambaClientService"

    const-string v1, "An ISambaStatusBinderListener has died!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->this$0:Lcom/android/server/SambaClientService;

    #getter for: Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/SambaClientService;->access$000(Lcom/android/server/SambaClientService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->this$0:Lcom/android/server/SambaClientService;

    #getter for: Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/SambaClientService;->access$000(Lcom/android/server/SambaClientService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v0}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/android/server/SambaClientService$ScanThread;
.super Ljava/lang/Thread;
.source "SambaClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanThread"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mRunning:Z

.field final synthetic this$0:Lcom/android/server/SambaClientService;


# direct methods
.method public constructor <init>(Lcom/android/server/SambaClientService;)V
    .locals 1
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SambaClientService$ScanThread;->mRunning:Z

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SambaClientService$ScanThread;->mRunning:Z

    .line 346
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SambaClientService$ScanThread;->mRunning:Z

    .line 349
    iget-object v0, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 351
    iget-object v0, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    const-string v1, "SCAN_STOPED"

    const-string v2, ""

    #calls: Lcom/android/server/SambaClientService;->updateScanResults(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/SambaClientService;->access$100(Lcom/android/server/SambaClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 359
    iget-object v7, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    #getter for: Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/SambaClientService;->access$200(Lcom/android/server/SambaClientService;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, IP:Ljava/lang/String;
    const-string v7, "SambaClientService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IP:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 363
    .local v3, lastPoint:I
    const/4 v7, 0x0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, ipHead:Ljava/lang/String;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 366
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 368
    .local v4, list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Callable<Ljava/lang/Long;>;>;"
    const/4 v6, 0x0

    .line 369
    .local v6, taskList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Future<Ljava/lang/Long;>;>;"
    const/4 v5, 0x1

    .local v5, tail:I
    :goto_0
    const/16 v7, 0xff

    if-ge v5, v7, :cond_0

    .line 370
    new-instance v7, Lcom/android/server/SambaClientService$Task;

    iget-object v8, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    const/16 v9, 0x1bd

    invoke-direct {v7, v8, v2, v5, v9}, Lcom/android/server/SambaClientService$Task;-><init>(Lcom/android/server/SambaClientService;Ljava/lang/String;II)V

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 374
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v7, v4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 379
    :goto_1
    iget-object v7, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 381
    iget-object v7, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    const-string v8, "SCAN_STOPED"

    const-string v9, ""

    #calls: Lcom/android/server/SambaClientService;->updateScanResults(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/server/SambaClientService;->access$100(Lcom/android/server/SambaClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v7, "SambaClientService"

    const-string v8, "ScanThread over"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 375
    :catch_0
    move-exception v1

    .line 377
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

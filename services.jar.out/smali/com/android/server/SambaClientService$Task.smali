.class Lcom/android/server/SambaClientService$Task;
.super Ljava/lang/Object;
.source "SambaClientService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private ipHead:Ljava/lang/String;

.field private ipTail:I

.field private mCanceled:Z

.field private port:I

.field final synthetic this$0:Lcom/android/server/SambaClientService;


# direct methods
.method public constructor <init>(Lcom/android/server/SambaClientService;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "ipHead"
    .parameter "ipTail"
    .parameter "port"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/server/SambaClientService$Task;->this$0:Lcom/android/server/SambaClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SambaClientService$Task;->mCanceled:Z

    .line 533
    iput-object p2, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    .line 534
    iput p3, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    .line 535
    iput p4, p0, Lcom/android/server/SambaClientService$Task;->port:I

    .line 537
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 10

    .prologue
    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 549
    .local v5, start:J
    const/4 v3, 0x0

    .line 550
    .local v3, folderList:Ljava/lang/String;
    const/4 v4, 0x0

    .line 552
    .local v4, needAuth:Z
    :try_start_0
    iget-object v7, p0, Lcom/android/server/SambaClientService$Task;->this$0:Lcom/android/server/SambaClientService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/SambaClientService;->getSharedFolders(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lmeizu/samba/client/SambaAuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 557
    :goto_0
    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SambaClientService$Task;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 559
    iget-object v7, p0, Lcom/android/server/SambaClientService$Task;->this$0:Lcom/android/server/SambaClientService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/SambaClientService;->updateScanResults(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v3}, Lcom/android/server/SambaClientService;->access$300(Lcom/android/server/SambaClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v7, "SambaClientService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "smb://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exsist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 565
    .local v1, end:J
    sub-long v7, v1, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7

    .line 553
    .end local v1           #end:J
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Lmeizu/samba/client/SambaAuthException;
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/server/SambaClientService$Task;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 540
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/SambaClientService$Task;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/SambaClientService$Task;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

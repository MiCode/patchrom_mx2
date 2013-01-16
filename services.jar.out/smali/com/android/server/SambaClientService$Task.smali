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
.field ipHead:Ljava/lang/String;

.field ipTail:I

.field port:I

.field final synthetic this$0:Lcom/android/server/SambaClientService;


# direct methods
.method public constructor <init>(Lcom/android/server/SambaClientService;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "ipHead"
    .parameter "ipTail"
    .parameter "port"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/SambaClientService$Task;->this$0:Lcom/android/server/SambaClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p2, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    .line 443
    iput p3, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    .line 444
    iput p4, p0, Lcom/android/server/SambaClientService$Task;->port:I

    .line 446
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 8

    .prologue
    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 450
    .local v3, start:J
    iget-object v5, p0, Lcom/android/server/SambaClientService$Task;->this$0:Lcom/android/server/SambaClientService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/SambaClientService;->getSharedFolders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, folderList:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 452
    iget-object v5, p0, Lcom/android/server/SambaClientService$Task;->this$0:Lcom/android/server/SambaClientService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/SambaClientService;->updateScanResults(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v2}, Lcom/android/server/SambaClientService;->access$100(Lcom/android/server/SambaClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v5, "SambaClientService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smb://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exsist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 456
    .local v0, end:J
    sub-long v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/server/SambaClientService$Task;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

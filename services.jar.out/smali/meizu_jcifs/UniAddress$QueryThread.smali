.class Lmeizu_jcifs/UniAddress$QueryThread;
.super Ljava/lang/Thread;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/UniAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryThread"
.end annotation


# instance fields
.field ans:Lmeizu_jcifs/netbios/NbtAddress;

.field host:Ljava/lang/String;

.field scope:Ljava/lang/String;

.field sem:Lmeizu_jcifs/UniAddress$Sem;

.field svr:Ljava/net/InetAddress;

.field type:I

.field uhe:Ljava/net/UnknownHostException;


# direct methods
.method constructor <init>(Lmeizu_jcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V
    .locals 2
    .parameter "sem"
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .parameter "svr"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JCIFS-QueryThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/UniAddress$QueryThread;->ans:Lmeizu_jcifs/netbios/NbtAddress;

    .line 139
    iput-object p1, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    .line 140
    iput-object p2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->host:Ljava/lang/String;

    .line 141
    iput p3, p0, Lmeizu_jcifs/UniAddress$QueryThread;->type:I

    .line 142
    iput-object p4, p0, Lmeizu_jcifs/UniAddress$QueryThread;->scope:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Lmeizu_jcifs/UniAddress$QueryThread;->svr:Ljava/net/InetAddress;

    .line 144
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 147
    :try_start_0
    iget-object v2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->host:Ljava/lang/String;

    iget v3, p0, Lmeizu_jcifs/UniAddress$QueryThread;->type:I

    iget-object v4, p0, Lmeizu_jcifs/UniAddress$QueryThread;->scope:Ljava/lang/String;

    iget-object v5, p0, Lmeizu_jcifs/UniAddress$QueryThread;->svr:Ljava/net/InetAddress;

    invoke-static {v2, v3, v4, v5}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v2

    iput-object v2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->ans:Lmeizu_jcifs/netbios/NbtAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    iget-object v3, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    monitor-enter v3

    .line 154
    :try_start_1
    iget-object v2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    iget v4, v2, Lmeizu_jcifs/UniAddress$Sem;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lmeizu_jcifs/UniAddress$Sem;->count:I

    .line 155
    iget-object v2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v3

    .line 158
    :goto_0
    return-void

    .line 156
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, uhe:Ljava/net/UnknownHostException;
    :try_start_2
    iput-object v1, p0, Lmeizu_jcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 153
    iget-object v3, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    monitor-enter v3

    .line 154
    :try_start_3
    iget-object v2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    iget v4, v2, Lmeizu_jcifs/UniAddress$Sem;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lmeizu_jcifs/UniAddress$Sem;->count:I

    .line 155
    iget-object v2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 150
    .end local v1           #uhe:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, ex:Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 153
    iget-object v3, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    monitor-enter v3

    .line 154
    :try_start_5
    iget-object v2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    iget v4, v2, Lmeizu_jcifs/UniAddress$Sem;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lmeizu_jcifs/UniAddress$Sem;->count:I

    .line 155
    iget-object v2, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 153
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    iget-object v3, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    monitor-enter v3

    .line 154
    :try_start_6
    iget-object v4, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    iget v5, v4, Lmeizu_jcifs/UniAddress$Sem;->count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lmeizu_jcifs/UniAddress$Sem;->count:I

    .line 155
    iget-object v4, p0, Lmeizu_jcifs/UniAddress$QueryThread;->sem:Lmeizu_jcifs/UniAddress$Sem;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v2

    :catchall_4
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v2
.end method

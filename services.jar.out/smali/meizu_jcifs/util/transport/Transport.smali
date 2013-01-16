.class public abstract Lmeizu_jcifs/util/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static id:I

.field static log:Lmeizu_jcifs/util/LogStream;


# instance fields
.field name:Ljava/lang/String;

.field protected response_map:Ljava/util/HashMap;

.field state:I

.field te:Lmeizu_jcifs/util/transport/TransportException;

.field thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lmeizu_jcifs/util/transport/Transport;->id:I

    .line 20
    invoke-static {}, Lmeizu_jcifs/util/LogStream;->getInstance()Lmeizu_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmeizu_jcifs/util/transport/Transport;->id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lmeizu_jcifs/util/transport/Transport;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu_jcifs/util/transport/Transport;->name:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmeizu_jcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    return-void
.end method

.method private loop()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 94
    :goto_0
    iget-object v7, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    if-ne v7, v10, :cond_6

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lmeizu_jcifs/util/transport/Transport;->peekKey()Lmeizu_jcifs/util/transport/Request;

    move-result-object v3

    .line 97
    .local v3, key:Lmeizu_jcifs/util/transport/Request;
    if-nez v3, :cond_1

    .line 98
    new-instance v7, Ljava/io/IOException;

    const-string v10, "end of stream"

    invoke-direct {v7, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v3           #key:Lmeizu_jcifs/util/transport/Request;
    :catch_0
    move-exception v0

    .line 112
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, msg:Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v7, "Read timed out"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v6, v8

    .line 116
    .local v6, timeout:Z
    :goto_1
    if-nez v6, :cond_5

    move v1, v8

    .line 118
    .local v1, hard:Z
    :goto_2
    if-nez v6, :cond_0

    sget-object v7, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v7, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v10, 0x3

    if-lt v7, v10, :cond_0

    .line 119
    sget-object v7, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v0, v7}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 122
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lmeizu_jcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 123
    :catch_1
    move-exception v2

    .line 124
    .local v2, ioe:Ljava/io/IOException;
    sget-object v7, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v2, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 99
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #hard:Z
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #timeout:Z
    .restart local v3       #key:Lmeizu_jcifs/util/transport/Request;
    :cond_1
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    :try_start_3
    iget-object v7, p0, Lmeizu_jcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmeizu_jcifs/util/transport/Response;

    .line 101
    .local v5, response:Lmeizu_jcifs/util/transport/Response;
    if-nez v5, :cond_3

    .line 102
    sget-object v7, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v7, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v10, 0x4

    if-lt v7, v10, :cond_2

    .line 103
    sget-object v7, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    const-string v10, "Invalid key, skipping message"

    invoke-virtual {v7, v10}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_2
    invoke-virtual {p0}, Lmeizu_jcifs/util/transport/Transport;->doSkip()V

    .line 110
    :goto_3
    monitor-exit p0

    goto :goto_0

    .end local v5           #response:Lmeizu_jcifs/util/transport/Response;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 106
    .restart local v5       #response:Lmeizu_jcifs/util/transport/Response;
    :cond_3
    :try_start_5
    invoke-virtual {p0, v5}, Lmeizu_jcifs/util/transport/Transport;->doRecv(Lmeizu_jcifs/util/transport/Response;)V

    .line 107
    const/4 v7, 0x1

    iput-boolean v7, v5, Lmeizu_jcifs/util/transport/Response;->isReceived:Z

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .end local v3           #key:Lmeizu_jcifs/util/transport/Request;
    .end local v5           #response:Lmeizu_jcifs/util/transport/Response;
    .restart local v0       #ex:Ljava/lang/Exception;
    .restart local v4       #msg:Ljava/lang/String;
    :cond_4
    move v6, v9

    .line 113
    goto :goto_1

    .restart local v6       #timeout:Z
    :cond_5
    move v1, v9

    .line 116
    goto :goto_2

    .line 128
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #timeout:Z
    :cond_6
    return-void
.end method

.method public static readn(Ljava/io/InputStream;[BII)I
    .locals 4
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, -0x5

    .line 28
    .local v1, n:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 29
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 30
    if-gtz v1, :cond_1

    .line 36
    :cond_0
    return v0

    .line 33
    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized connect(J)V
    .locals 8
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/util/transport/TransportException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 147
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    packed-switch v2, :pswitch_data_0

    .line 156
    :pswitch_0
    new-instance v1, Lmeizu_jcifs/util/transport/TransportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmeizu_jcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, te:Lmeizu_jcifs/util/transport/TransportException;
    const/4 v2, 0x0

    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 158
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1           #te:Lmeizu_jcifs/util/transport/TransportException;
    :catch_0
    move-exception v0

    .line 186
    .local v0, ie:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 187
    const/4 v2, 0x0

    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 188
    new-instance v2, Lmeizu_jcifs/util/transport/TransportException;

    invoke-direct {v2, v0}, Lmeizu_jcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    :try_start_2
    iget v3, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eqz v3, :cond_1

    iget v3, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eq v3, v6, :cond_1

    iget v3, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eq v3, v7, :cond_1

    .line 193
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_0

    .line 194
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v3, 0x0

    iput-object v3, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    :cond_1
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 192
    :pswitch_1
    :try_start_3
    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eqz v2, :cond_3

    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eq v2, v6, :cond_3

    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eq v2, v7, :cond_3

    .line 193
    sget-object v2, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v2, Lmeizu_jcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_2

    .line 194
    sget-object v2, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    :pswitch_2
    const/4 v2, 0x0

    :try_start_4
    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 154
    new-instance v2, Lmeizu_jcifs/util/transport/TransportException;

    const-string v3, "Connection in error"

    iget-object v4, p0, Lmeizu_jcifs/util/transport/Transport;->te:Lmeizu_jcifs/util/transport/TransportException;

    invoke-direct {v2, v3, v4}, Lmeizu_jcifs/util/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 161
    :pswitch_3
    const/4 v2, 0x1

    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 162
    const/4 v2, 0x0

    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->te:Lmeizu_jcifs/util/transport/TransportException;

    .line 163
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lmeizu_jcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 164
    iget-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 166
    iget-object v3, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 167
    :try_start_5
    iget-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 168
    iget-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 170
    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    packed-switch v2, :pswitch_data_1

    .line 184
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 192
    :try_start_6
    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eqz v2, :cond_3

    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eq v2, v6, :cond_3

    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eq v2, v7, :cond_3

    .line 193
    sget-object v2, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v2, Lmeizu_jcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_4

    .line 194
    sget-object v2, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 172
    :pswitch_4
    const/4 v2, 0x0

    :try_start_7
    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 173
    const/4 v2, 0x0

    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 174
    new-instance v2, Lmeizu_jcifs/util/transport/TransportException;

    const-string v4, "Connection timeout"

    invoke-direct {v2, v4}, Lmeizu_jcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 176
    :pswitch_5
    :try_start_9
    iget-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->te:Lmeizu_jcifs/util/transport/TransportException;

    if-eqz v2, :cond_5

    .line 177
    const/4 v2, 0x4

    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 179
    iget-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->te:Lmeizu_jcifs/util/transport/TransportException;

    throw v2

    .line 181
    :cond_5
    const/4 v2, 0x3

    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 182
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 192
    :try_start_a
    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eqz v2, :cond_3

    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eq v2, v6, :cond_3

    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    if-eq v2, v7, :cond_3

    .line 193
    sget-object v2, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v2, Lmeizu_jcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_6

    .line 194
    sget-object v2, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_6
    const/4 v2, 0x0

    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Z)V
    .locals 5
    .parameter "hard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    const/4 v0, 0x0

    .line 203
    .local v0, ioe:Ljava/io/IOException;
    :try_start_0
    iget v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    packed-switch v2, :pswitch_data_0

    .line 222
    :pswitch_0
    sget-object v2, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v2, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 223
    sget-object v2, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 224
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 225
    const/4 v2, 0x0

    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 229
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 230
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 207
    :pswitch_1
    const/4 p1, 0x1

    .line 209
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 213
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lmeizu_jcifs/util/transport/Transport;->doDisconnect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    :goto_1
    :pswitch_3
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 219
    const/4 v2, 0x0

    iput v2, p0, Lmeizu_jcifs/util/transport/Transport;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, ioe0:Ljava/io/IOException;
    move-object v0, v1

    goto :goto_1

    .line 231
    .end local v1           #ioe0:Ljava/io/IOException;
    :cond_3
    :pswitch_4
    monitor-exit p0

    return-void

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract doConnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doDisconnect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doRecv(Lmeizu_jcifs/util/transport/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSend(Lmeizu_jcifs/util/transport/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSkip()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract makeKey(Lmeizu_jcifs/util/transport/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peekKey()Lmeizu_jcifs/util/transport/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 234
    .local v2, run_thread:Ljava/lang/Thread;
    const/4 v1, 0x0

    .line 241
    .local v1, ex0:Ljava/lang/Exception;
    :try_start_0
    invoke-virtual {p0}, Lmeizu_jcifs/util/transport/Transport;->doConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    monitor-enter v2

    .line 247
    :try_start_1
    iget-object v3, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_1

    .line 251
    if-eqz v1, :cond_0

    .line 252
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_0

    .line 253
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    throw v1

    .line 255
    :cond_0
    monitor-exit v2

    .line 268
    :goto_0
    return-void

    .line 257
    :cond_1
    if-eqz v1, :cond_2

    .line 258
    new-instance v3, Lmeizu_jcifs/util/transport/TransportException;

    invoke-direct {v3, v1}, Lmeizu_jcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Lmeizu_jcifs/util/transport/Transport;->te:Lmeizu_jcifs/util/transport/TransportException;

    .line 260
    :cond_2
    const/4 v3, 0x2

    iput v3, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 262
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    invoke-direct {p0}, Lmeizu_jcifs/util/transport/Transport;->loop()V

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, ex:Ljava/lang/Exception;
    move-object v1, v0

    .line 246
    monitor-enter v2

    .line 247
    :try_start_3
    iget-object v3, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_4

    .line 251
    if-eqz v1, :cond_3

    .line 252
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_3

    .line 253
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 255
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 262
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 257
    :cond_4
    if-eqz v1, :cond_5

    .line 258
    :try_start_4
    new-instance v3, Lmeizu_jcifs/util/transport/TransportException;

    invoke-direct {v3, v1}, Lmeizu_jcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Lmeizu_jcifs/util/transport/Transport;->te:Lmeizu_jcifs/util/transport/TransportException;

    .line 260
    :cond_5
    const/4 v3, 0x2

    iput v3, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 262
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 246
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v3

    monitor-enter v2

    .line 247
    :try_start_5
    iget-object v4, p0, Lmeizu_jcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v2, v4, :cond_7

    .line 251
    if-eqz v1, :cond_6

    .line 252
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_6

    .line 253
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    throw v1

    .line 255
    :cond_6
    monitor-exit v2

    goto :goto_0

    .line 262
    :catchall_3
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    .line 257
    :cond_7
    if-eqz v1, :cond_8

    .line 258
    :try_start_6
    new-instance v4, Lmeizu_jcifs/util/transport/TransportException;

    invoke-direct {v4, v1}, Lmeizu_jcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v4, p0, Lmeizu_jcifs/util/transport/Transport;->te:Lmeizu_jcifs/util/transport/TransportException;

    .line 260
    :cond_8
    const/4 v4, 0x2

    iput v4, p0, Lmeizu_jcifs/util/transport/Transport;->state:I

    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 262
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3
.end method

.method public declared-synchronized sendrecv(Lmeizu_jcifs/util/transport/Request;Lmeizu_jcifs/util/transport/Response;J)V
    .locals 7
    .parameter "request"
    .parameter "response"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lmeizu_jcifs/util/transport/Transport;->makeKey(Lmeizu_jcifs/util/transport/Request;)V

    .line 64
    const/4 v3, 0x0

    iput-boolean v3, p2, Lmeizu_jcifs/util/transport/Response;->isReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    iget-object v3, p0, Lmeizu_jcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0, p1}, Lmeizu_jcifs/util/transport/Transport;->doSend(Lmeizu_jcifs/util/transport/Request;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p3

    iput-wide v3, p2, Lmeizu_jcifs/util/transport/Response;->expiration:J

    .line 69
    :cond_0
    iget-boolean v3, p2, Lmeizu_jcifs/util/transport/Response;->isReceived:Z

    if-nez v3, :cond_2

    .line 70
    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V

    .line 71
    iget-wide v3, p2, Lmeizu_jcifs/util/transport/Response;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long p3, v3, v5

    .line 72
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gtz v3, :cond_0

    .line 73
    new-instance v3, Lmeizu_jcifs/util/transport/TransportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmeizu_jcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timedout waiting for response to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmeizu_jcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, ioe:Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 80
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v1, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :cond_1
    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {p0, v3}, Lmeizu_jcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 86
    :goto_0
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_5
    iget-object v4, p0, Lmeizu_jcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 90
    :cond_2
    :try_start_6
    iget-object v3, p0, Lmeizu_jcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 92
    monitor-exit p0

    return-void

    .line 83
    .restart local v1       #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 84
    .local v2, ioe2:Ljava/io/IOException;
    :try_start_7
    sget-object v3, Lmeizu_jcifs/util/transport/Transport;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 87
    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #ioe2:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 88
    .local v0, ie:Ljava/lang/InterruptedException;
    new-instance v3, Lmeizu_jcifs/util/transport/TransportException;

    invoke-direct {v3, v0}, Lmeizu_jcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lmeizu_jcifs/util/transport/Transport;->name:Ljava/lang/String;

    return-object v0
.end method

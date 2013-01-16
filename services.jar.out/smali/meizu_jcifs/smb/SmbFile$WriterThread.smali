.class Lmeizu_jcifs/smb/SmbFile$WriterThread;
.super Ljava/lang/Thread;
.source "SmbFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/smb/SmbFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriterThread"
.end annotation


# instance fields
.field b:[B

.field dest:Lmeizu_jcifs/smb/SmbFile;

.field e:Lmeizu_jcifs/smb/SmbException;

.field n:I

.field off:J

.field ready:Z

.field req:Lmeizu_jcifs/smb/SmbComWrite;

.field reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

.field resp:Lmeizu_jcifs/smb/ServerMessageBlock;

.field final synthetic this$0:Lmeizu_jcifs/smb/SmbFile;

.field useNTSmbs:Z


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/SmbFile;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2091
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->this$0:Lmeizu_jcifs/smb/SmbFile;

    .line 2092
    const-string v0, "JCIFS-WriterThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2085
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->e:Lmeizu_jcifs/smb/SmbException;

    .line 2093
    iget-object v0, p1, Lmeizu_jcifs/smb/SmbFile;->tree:Lmeizu_jcifs/smb/SmbTree;

    iget-object v0, v0, Lmeizu_jcifs/smb/SmbTree;->session:Lmeizu_jcifs/smb/SmbSession;

    iget-object v0, v0, Lmeizu_jcifs/smb/SmbSession;->transport:Lmeizu_jcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lmeizu_jcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    .line 2094
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    if-eqz v0, :cond_0

    .line 2095
    new-instance v0, Lmeizu_jcifs/smb/SmbComWriteAndX;

    invoke-direct {v0}, Lmeizu_jcifs/smb/SmbComWriteAndX;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

    .line 2096
    new-instance v0, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {v0}, Lmeizu_jcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->resp:Lmeizu_jcifs/smb/ServerMessageBlock;

    .line 2101
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 2102
    return-void

    .line 2098
    :cond_0
    new-instance v0, Lmeizu_jcifs/smb/SmbComWrite;

    invoke-direct {v0}, Lmeizu_jcifs/smb/SmbComWrite;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->req:Lmeizu_jcifs/smb/SmbComWrite;

    .line 2099
    new-instance v0, Lmeizu_jcifs/smb/SmbComWriteResponse;

    invoke-direct {v0}, Lmeizu_jcifs/smb/SmbComWriteResponse;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->resp:Lmeizu_jcifs/smb/ServerMessageBlock;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2114
    monitor-enter p0

    .line 2117
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 2119
    :goto_1
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->ready:Z

    if-eqz v0, :cond_0

    .line 2120
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2133
    :catch_0
    move-exception v8

    .line 2134
    .local v8, e:Lmeizu_jcifs/smb/SmbException;
    :try_start_1
    iput-object v8, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->e:Lmeizu_jcifs/smb/SmbException;

    .line 2138
    .end local v8           #e:Lmeizu_jcifs/smb/SmbException;
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2139
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2140
    :goto_3
    return-void

    .line 2122
    :cond_0
    :try_start_2
    iget v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->n:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2123
    :try_start_3
    monitor-exit p0

    goto :goto_3

    .line 2139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2125
    :cond_1
    :try_start_4
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    if-eqz v0, :cond_2

    .line 2126
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->dest:Lmeizu_jcifs/smb/SmbFile;

    iget v1, v1, Lmeizu_jcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->off:J

    iget v4, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->n:I

    iget-object v5, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->b:[B

    const/4 v6, 0x0

    iget v7, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->n:I

    invoke-virtual/range {v0 .. v7}, Lmeizu_jcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    .line 2127
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->dest:Lmeizu_jcifs/smb/SmbFile;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->reqx:Lmeizu_jcifs/smb/SmbComWriteAndX;

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->resp:Lmeizu_jcifs/smb/ServerMessageBlock;

    invoke-virtual {v0, v1, v2}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2135
    :catch_1
    move-exception v9

    .line 2136
    .local v9, x:Ljava/lang/Exception;
    :try_start_5
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    const-string v1, "WriterThread"

    invoke-direct {v0, v1, v9}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->e:Lmeizu_jcifs/smb/SmbException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 2129
    .end local v9           #x:Ljava/lang/Exception;
    :cond_2
    :try_start_6
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->req:Lmeizu_jcifs/smb/SmbComWrite;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->dest:Lmeizu_jcifs/smb/SmbFile;

    iget v1, v1, Lmeizu_jcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->off:J

    iget v4, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->n:I

    iget-object v5, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->b:[B

    const/4 v6, 0x0

    iget v7, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->n:I

    invoke-virtual/range {v0 .. v7}, Lmeizu_jcifs/smb/SmbComWrite;->setParam(IJI[BII)V

    .line 2130
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->dest:Lmeizu_jcifs/smb/SmbFile;

    iget-object v1, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->req:Lmeizu_jcifs/smb/SmbComWrite;

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->resp:Lmeizu_jcifs/smb/ServerMessageBlock;

    invoke-virtual {v0, v1, v2}, Lmeizu_jcifs/smb/SmbFile;->send(Lmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0
.end method

.method declared-synchronized write([BILmeizu_jcifs/smb/SmbFile;J)V
    .locals 1
    .parameter "b"
    .parameter "n"
    .parameter "dest"
    .parameter "off"

    .prologue
    .line 2105
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->b:[B

    .line 2106
    iput p2, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->n:I

    .line 2107
    iput-object p3, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->dest:Lmeizu_jcifs/smb/SmbFile;

    .line 2108
    iput-wide p4, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->off:J

    .line 2109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 2110
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2111
    monitor-exit p0

    return-void

    .line 2105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

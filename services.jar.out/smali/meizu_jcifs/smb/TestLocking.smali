.class public Lmeizu_jcifs/smb/TestLocking;
.super Ljava/lang/Object;
.source "TestLocking.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field delay:J

.field ltime:J

.field numComplete:I

.field numIter:I

.field numThreads:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lmeizu_jcifs/smb/TestLocking;->numThreads:I

    .line 10
    iput v0, p0, Lmeizu_jcifs/smb/TestLocking;->numIter:I

    .line 11
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lmeizu_jcifs/smb/TestLocking;->delay:J

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/TestLocking;->url:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/smb/TestLocking;->numComplete:I

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmeizu_jcifs/smb/TestLocking;->ltime:J

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    array-length v10, p0

    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    .line 61
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "usage: TestLocking [-t <numThreads>] [-i <numIter>] [-d <delay>] url"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 65
    :cond_0
    new-instance v7, Lmeizu_jcifs/smb/TestLocking;

    invoke-direct {v7}, Lmeizu_jcifs/smb/TestLocking;-><init>()V

    .line 66
    .local v7, t:Lmeizu_jcifs/smb/TestLocking;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Lmeizu_jcifs/smb/TestLocking;->ltime:J

    .line 68
    const/4 v0, 0x0

    .local v0, ai:I
    :goto_0
    array-length v10, p0

    if-ge v0, v10, :cond_4

    .line 69
    aget-object v10, p0, v0

    const-string v11, "-t"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    aget-object v10, p0, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Lmeizu_jcifs/smb/TestLocking;->numThreads:I

    .line 68
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    aget-object v10, p0, v0

    const-string v11, "-i"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    aget-object v10, p0, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Lmeizu_jcifs/smb/TestLocking;->numIter:I

    goto :goto_1

    .line 75
    :cond_2
    aget-object v10, p0, v0

    const-string v11, "-d"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    aget-object v10, p0, v0

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v7, Lmeizu_jcifs/smb/TestLocking;->delay:J

    goto :goto_1

    .line 79
    :cond_3
    aget-object v10, p0, v0

    iput-object v10, v7, Lmeizu_jcifs/smb/TestLocking;->url:Ljava/lang/String;

    goto :goto_1

    .line 83
    :cond_4
    iget v10, v7, Lmeizu_jcifs/smb/TestLocking;->numThreads:I

    new-array v8, v10, [Ljava/lang/Thread;

    .line 86
    .local v8, threads:[Ljava/lang/Thread;
    const/4 v9, 0x0

    .local v9, ti:I
    :goto_2
    iget v10, v7, Lmeizu_jcifs/smb/TestLocking;->numThreads:I

    if-ge v9, v10, :cond_5

    .line 87
    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v10, v8, v9

    .line 88
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v11, v8, v9

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 89
    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 86
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 92
    :cond_5
    :goto_3
    iget v10, v7, Lmeizu_jcifs/smb/TestLocking;->numComplete:I

    iget v11, v7, Lmeizu_jcifs/smb/TestLocking;->numThreads:I

    if-ge v10, v11, :cond_9

    .line 96
    :cond_6
    const-wide/16 v3, 0x2

    .line 98
    .local v3, delay:J
    monitor-enter v7

    .line 99
    :try_start_0
    iget-wide v10, v7, Lmeizu_jcifs/smb/TestLocking;->ltime:J

    iget-wide v12, v7, Lmeizu_jcifs/smb/TestLocking;->delay:J

    add-long v5, v10, v12

    .line 100
    .local v5, expire:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 102
    .local v1, ctime:J
    cmp-long v10, v5, v1

    if-lez v10, :cond_7

    .line 103
    sub-long v3, v5, v1

    .line 104
    :cond_7
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    const-wide/16 v10, 0x2

    cmp-long v10, v3, v10

    if-lez v10, :cond_8

    .line 107
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delay="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 109
    const-wide/16 v10, 0x2

    cmp-long v10, v3, v10

    if-gtz v10, :cond_6

    .line 111
    monitor-enter v7

    .line 112
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit v7

    goto :goto_3

    :catchall_0
    move-exception v10

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 104
    .end local v1           #ctime:J
    .end local v5           #expire:J
    :catchall_1
    move-exception v10

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 117
    .end local v3           #delay:J
    :cond_9
    const/4 v9, 0x0

    :goto_4
    iget v10, v7, Lmeizu_jcifs/smb/TestLocking;->numThreads:I

    if-ge v9, v10, :cond_a

    .line 118
    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/Thread;->join()V

    .line 119
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v11, v8, v9

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 117
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 122
    :cond_a
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 123
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 19
    :try_start_0
    new-instance v3, Lmeizu_jcifs/smb/SmbFile;

    iget-object v9, p0, Lmeizu_jcifs/smb/TestLocking;->url:Ljava/lang/String;

    invoke-direct {v3, v9}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 20
    .local v3, f:Lmeizu_jcifs/smb/SmbFile;
    new-instance v1, Lmeizu_jcifs/smb/SmbFile;

    invoke-virtual {v3}, Lmeizu_jcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, d:Lmeizu_jcifs/smb/SmbFile;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 23
    .local v0, buf:[B
    const/4 v4, 0x0

    .local v4, ii:I
    :goto_0
    iget v9, p0, Lmeizu_jcifs/smb/TestLocking;->numIter:I

    if-ge v4, v9, :cond_4

    .line 25
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lmeizu_jcifs/smb/TestLocking;->ltime:J

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 28
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    .line 32
    .local v7, r:D
    const-wide v9, 0x3fd54fdf3b645a1dL

    cmpg-double v9, v7, v9

    if-gez v9, :cond_1

    .line 33
    invoke-virtual {v3}, Lmeizu_jcifs/smb/SmbFile;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    .end local v7           #r:D
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 51
    .end local v0           #buf:[B
    .end local v1           #d:Lmeizu_jcifs/smb/SmbFile;
    .end local v3           #f:Lmeizu_jcifs/smb/SmbFile;
    .end local v4           #ii:I
    :catch_0
    move-exception v2

    .line 52
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 54
    iget v9, p0, Lmeizu_jcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lmeizu_jcifs/smb/TestLocking;->numComplete:I

    .line 56
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 35
    .restart local v0       #buf:[B
    .restart local v1       #d:Lmeizu_jcifs/smb/SmbFile;
    .restart local v3       #f:Lmeizu_jcifs/smb/SmbFile;
    .restart local v4       #ii:I
    .restart local v7       #r:D
    :cond_1
    const-wide v9, 0x3fe55810624dd2f2L

    cmpg-double v9, v7, v9

    if-gez v9, :cond_2

    .line 36
    :try_start_6
    invoke-virtual {v1}, Lmeizu_jcifs/smb/SmbFile;->listFiles()[Lmeizu_jcifs/smb/SmbFile;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 45
    .end local v7           #r:D
    :catch_1
    move-exception v6

    .line 46
    .local v6, ioe:Ljava/io/IOException;
    :try_start_7
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 54
    .end local v0           #buf:[B
    .end local v1           #d:Lmeizu_jcifs/smb/SmbFile;
    .end local v3           #f:Lmeizu_jcifs/smb/SmbFile;
    .end local v4           #ii:I
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    iget v10, p0, Lmeizu_jcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lmeizu_jcifs/smb/TestLocking;->numComplete:I

    throw v9

    .line 38
    .restart local v0       #buf:[B
    .restart local v1       #d:Lmeizu_jcifs/smb/SmbFile;
    .restart local v3       #f:Lmeizu_jcifs/smb/SmbFile;
    .restart local v4       #ii:I
    .restart local v7       #r:D
    :cond_2
    const-wide/high16 v9, 0x3ff0

    cmpg-double v9, v7, v9

    if-gez v9, :cond_0

    .line 39
    :try_start_8
    invoke-virtual {v3}, Lmeizu_jcifs/smb/SmbFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 40
    .local v5, in:Ljava/io/InputStream;
    :cond_3
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_3

    .line 43
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 54
    .end local v5           #in:Ljava/io/InputStream;
    .end local v7           #r:D
    :cond_4
    iget v9, p0, Lmeizu_jcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lmeizu_jcifs/smb/TestLocking;->numComplete:I

    goto :goto_2
.end method

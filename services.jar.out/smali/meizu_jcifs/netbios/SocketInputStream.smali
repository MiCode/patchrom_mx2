.class Lmeizu_jcifs/netbios/SocketInputStream;
.super Ljava/io/InputStream;
.source "SocketInputStream.java"


# static fields
.field private static final TMP_BUFFER_SIZE:I = 0x100


# instance fields
.field private bip:I

.field private header:[B

.field private in:Ljava/io/InputStream;

.field private n:I

.field private ssp:Lmeizu_jcifs/netbios/SessionServicePacket;

.field private tmp:[B

.field private tot:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-object p1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->header:[B

    .line 36
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tmp:[B

    .line 37
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->bip:I

    if-lez v0, :cond_0

    .line 104
    iget v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->bip:I

    .line 106
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 110
    return-void
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lmeizu_jcifs/netbios/SocketInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    .line 41
    const/4 v0, -0x1

    .line 43
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmeizu_jcifs/netbios/SocketInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 54
    monitor-enter p0

    if-nez p3, :cond_1

    move v0, v1

    .line 84
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 57
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tot:I

    .line 60
    :cond_2
    :goto_1
    :sswitch_0
    iget v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->bip:I

    if-lez v1, :cond_4

    .line 61
    iget-object v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Lmeizu_jcifs/netbios/SocketInputStream;->bip:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->n:I

    .line 62
    iget v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->n:I

    if-ne v1, v0, :cond_3

    .line 63
    iget v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tot:I

    if-lez v1, :cond_0

    iget v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tot:I

    goto :goto_0

    .line 65
    :cond_3
    iget v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tot:I

    iget v2, p0, Lmeizu_jcifs/netbios/SocketInputStream;->n:I

    add-int/2addr v1, v2

    iput v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tot:I

    .line 66
    iget v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->n:I

    add-int/2addr p2, v1

    .line 67
    iget v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->n:I

    sub-int/2addr p3, v1

    .line 68
    iget v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->bip:I

    iget v2, p0, Lmeizu_jcifs/netbios/SocketInputStream;->n:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->bip:I

    .line 69
    if-nez p3, :cond_2

    .line 70
    iget v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tot:I

    goto :goto_0

    .line 74
    :cond_4
    iget-object v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lmeizu_jcifs/netbios/SocketInputStream;->header:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmeizu_jcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 81
    :sswitch_1
    iget v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tot:I

    if-lez v1, :cond_0

    .line 82
    iget v0, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tot:I

    goto :goto_0

    .line 78
    :sswitch_2
    iget-object v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->header:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmeizu_jcifs/netbios/SessionServicePacket;->readLength([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/netbios/SocketInputStream;->bip:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_2
        0x85 -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized skip(J)J
    .locals 9
    .parameter "numbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 89
    monitor-enter p0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return-wide v3

    .line 92
    :cond_0
    move-wide v0, p1

    .line 93
    .local v0, n:J
    :goto_1
    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 94
    :try_start_0
    iget-object v5, p0, Lmeizu_jcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v6, 0x0

    const-wide/16 v7, 0x100

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {p0, v5, v6, v7}, Lmeizu_jcifs/netbios/SocketInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 95
    .local v2, r:I
    if-gez v2, :cond_2

    .line 100
    .end local v2           #r:I
    :cond_1
    sub-long v3, p1, v0

    goto :goto_0

    .line 98
    .restart local v2       #r:I
    :cond_2
    int-to-long v5, v2

    sub-long/2addr v0, v5

    .line 99
    goto :goto_1

    .line 89
    .end local v2           #r:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

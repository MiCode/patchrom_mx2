.class public Lmeizu_jcifs/smb/BufferCache;
.super Ljava/lang/Object;
.source "BufferCache.java"


# static fields
.field private static final MAX_BUFFERS:I

.field static cache:[Ljava/lang/Object;

.field private static freeBuffers:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "meizu_jcifs.smb.maxBuffers"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/smb/BufferCache;->MAX_BUFFERS:I

    .line 27
    sget v0, Lmeizu_jcifs/smb/BufferCache;->MAX_BUFFERS:I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmeizu_jcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput v0, Lmeizu_jcifs/smb/BufferCache;->freeBuffers:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer()[B
    .locals 7

    .prologue
    .line 31
    sget-object v5, Lmeizu_jcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v5

    .line 34
    :try_start_0
    sget v4, Lmeizu_jcifs/smb/BufferCache;->freeBuffers:I

    if-lez v4, :cond_1

    .line 35
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget v4, Lmeizu_jcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v3, v4, :cond_1

    .line 36
    sget-object v4, Lmeizu_jcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    .line 37
    sget-object v4, Lmeizu_jcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0

    .line 38
    .local v1, buf:[B
    sget-object v4, Lmeizu_jcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v4, v3

    .line 39
    sget v4, Lmeizu_jcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lmeizu_jcifs/smb/BufferCache;->freeBuffers:I

    .line 40
    monitor-exit v5

    move-object v2, v1

    .line 47
    .end local v1           #buf:[B
    .local v2, buf:[B
    :goto_1
    return-object v2

    .line 35
    .end local v2           #buf:[B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_1
    const v4, 0xffff

    new-array v1, v4, [B

    .line 47
    .restart local v1       #buf:[B
    monitor-exit v5

    move-object v2, v1

    .end local v1           #buf:[B
    .restart local v2       #buf:[B
    goto :goto_1

    .line 48
    .end local v2           #buf:[B
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method static getBuffers(Lmeizu_jcifs/smb/SmbComTransaction;Lmeizu_jcifs/smb/SmbComTransactionResponse;)V
    .locals 2
    .parameter "req"
    .parameter "rsp"

    .prologue
    .line 51
    sget-object v1, Lmeizu_jcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    invoke-static {}, Lmeizu_jcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->txn_buf:[B

    .line 53
    invoke-static {}, Lmeizu_jcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v0

    iput-object v0, p1, Lmeizu_jcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static releaseBuffer([B)V
    .locals 4
    .parameter "buf"

    .prologue
    .line 57
    sget-object v2, Lmeizu_jcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    sget v1, Lmeizu_jcifs/smb/BufferCache;->freeBuffers:I

    sget v3, Lmeizu_jcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v1, v3, :cond_1

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lmeizu_jcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v0, v1, :cond_1

    .line 60
    sget-object v1, Lmeizu_jcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 61
    sget-object v1, Lmeizu_jcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 62
    sget v1, Lmeizu_jcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmeizu_jcifs/smb/BufferCache;->freeBuffers:I

    .line 63
    monitor-exit v2

    .line 68
    .end local v0           #i:I
    :goto_1
    return-void

    .line 59
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0           #i:I
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
